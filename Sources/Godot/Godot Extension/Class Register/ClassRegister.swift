import Foundation
import GodotExtensionHeaders

#warning("METHOD_FLAGS_DEFAULT from the json file.")
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

public final class ClassRegister {
    
    // MARK: Properties
    
    internal static let shared = ClassRegister()
    
    public private(set) var isRegistrationOpen = true
    private var currentLevel: GDExtensionInitializationLevel?
    
    private var classNameToClassBinding = [StringName : ClassBinding]()
    private var godotClassesNames = Set<StringName>()
    
    private var classNameToSubclassPassports = [StringName : [ClassPassport]]()
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Initialize & deinitialize level
    
    func initialize(level: GDExtensionInitializationLevel) {
        currentLevel = level
    }
    
    func deinitialize(level: GDExtensionInitializationLevel) {
        let classesToUnregister = classNameToClassBinding.compactMap { (name, binding) in
            if binding.level == level {
                return name
            } else {
                return nil
            }
        }
        
        for className in classesToUnregister {
            let classBinding = classNameToClassBinding.removeValue(forKey: className)!
            
            classBinding.name.withUnsafeExtensionPointer { namePtr in
                GodotExtension.shared.interface.classdb_unregister_extension_class(
                    GodotExtension.shared.libraryPtr,
                    namePtr
                )
            }
        }
    }
    
    // MARK: Close registration
    
    public func closeRegistration() {
        for subclassPassports in classNameToSubclassPassports.values {
            for passport in subclassPassports {
                printGodotError("Class register couldn't register \(passport.className) because no valid superclass was provided.")
            }
        }
        
        classNameToSubclassPassports.removeAll()
        isRegistrationOpen = false
    }
    
    // MARK: Class registration
    
    private func classIsAlreadyRegistered(withName className: StringName) -> Bool {
        classNameToClassBinding[className] != nil ||
        godotClassesNames.contains(className)
    }
    
    internal func registerGodotClass<Class>(ofType classType: Class.Type) where Class : Object {
        classType.setFunctionBindings()
        godotClassesNames.insert(classType.godotClassName())
    }
    
    public func instantiateClass<Class>(ofType type: Class.Type) -> GDExtensionObjectPtr {
        fatalError("Cannot instantiate class that is not a subclass of Object.")
    }
    
    public func instantiateClass<Class>(ofType type: Class.Type) -> GDExtensionObjectPtr where Class : Object {
        let instance = Class()
        var objectPtr: GDExtensionObjectPtr!
        
        instance.withUnsafeExtensionPointer { ptr in
            objectPtr = ptr
        }
        
        return objectPtr
    }
    
    private func insertPassport(_ passport: ClassPassport,
                                toParentClassName parentClassName: StringName) {
        var passports = classNameToSubclassPassports[parentClassName] ?? []
        passports.append(passport)
        classNameToSubclassPassports[parentClassName] = passports
    }
    
    public func registerClass<Class>(
        ofType classType: Class.Type,
        parentClassName: StringName,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance) {
        // If the type is not an Object, then nothing should be done.
        return
    }
    
    public func registerClass<Class>(
        ofType classType: Class.Type,
        parentClassName: StringName,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance)
    where Class : Object {
        guard isRegistrationOpen else {
            printGodotError("Cannot register class \(classType) because the registration is closed.")
            return
        }
        
        guard let currentLevel else {
            printGodotError("Cannot register class \(classType) because no initialization level was provided.")
            return
        }
        
        let className = classType.godotClassName()
        
        guard !classIsAlreadyRegistered(withName: className) else {
            printGodotError("Cannot register class \(classType) because it is already registered.")
            return
        }
        
        guard classIsAlreadyRegistered(withName: parentClassName) else {
            let passport = ClassPassport(classType: classType,
                                         className: className,
                                         parentClassName: parentClassName,
                                         toStringFunction: toStringFunction,
                                         createInstanceFunction: createInstanceFunction,
                                         freeInstanceFunction: freeInstanceFunction)
            insertPassport(passport, toParentClassName: parentClassName)
            return
        }
        
        // Register this class within our extension.
        let classBinding = ClassBinding(
            level: currentLevel,
            type: classType,
            name: className,
            parentName: parentClassName
        )
        classNameToClassBinding[className] = classBinding
        
#warning("Fill all the blanks")
        var godotClassInfo = GDExtensionClassCreationInfo(
            is_virtual: 0,
            is_abstract: 0,
            set_func: { _, _, _ in
                return 1
            },
            get_func: { _, _, _ in
                return 1
            },
            get_property_list_func: { a, b in
                return nil
            },
            free_property_list_func: { _, _ in },
            property_can_revert_func: { _, _ in while true {} },
            property_get_revert_func: { _, _, _ in while true {} },
            notification_func: { _, _ in },
            to_string_func: toStringFunction,
            reference_func: nil,
            unreference_func: nil,
            create_instance_func: createInstanceFunction, // This one is mandatory.
            free_instance_func: freeInstanceFunction, // This one is mandatory.
            get_virtual_func: { ClassRegister.virtualFunc(fromUserDataPtr: $0, methodNamePtr: $1) },
            get_rid_func: nil,
            class_userdata: Unmanaged.passUnretained(classBinding).toOpaque()
        )
        
        className.withUnsafeExtensionPointer { namePtr in
            parentClassName.withUnsafeExtensionPointer { parentNamePtr in
                withUnsafePointer(to: godotClassInfo) { classInfoPtr in
                    GodotExtension.shared.interface.classdb_register_extension_class(
                        GodotExtension.shared.libraryPtr, namePtr, parentNamePtr, classInfoPtr
                    )
                }
            }
        }
        
        // Register all the virtual functions
        classType.setVirtualFunctionCalls { methodName, call in
            registerVirtualFunc(ofType: classType, name: methodName, call: call)
        }
        
        if let subclassPassports = classNameToSubclassPassports.removeValue(forKey: className) {
            for passport in subclassPassports {
                registerClass(ofType: passport.classType,
                              parentClassName: passport.parentClassName,
                              toStringFunction: passport.toStringFunction,
                              createInstanceFunction: passport.createInstanceFunction,
                              freeInstanceFunction: passport.freeInstanceFunction)
            }
        }
        
        return
    }
    
    // MARK: Virtual functions
    
    private static func virtualFunc(fromUserDataPtr userDataPtr: UnsafeMutableRawPointer?,
                                    methodNamePtr: GDExtensionConstStringNamePtr?) -> GDExtensionClassCallVirtual? {
        guard let userDataPtr else {
            printGodotError("No class data pointer provided.")
            return nil
        }
        
        guard let methodNamePtr else {
            printGodotError("No virtual func name given.")
            return nil
        }
        
        let classBinding = Unmanaged<ClassBinding>.fromOpaque(userDataPtr).takeUnretainedValue()
        let methodName = StringName.makeFromPtr(methodNamePtr)
        
        return virtualFunc(fromClassBinding: classBinding, functionName: methodName)
    }
    
    private static func virtualFunc(fromClassBinding classBinding: ClassBinding,
                                    functionName: StringName) -> GDExtensionClassCallVirtual? {
        guard let classBinding = shared.classNameToClassBinding[classBinding.name] else {
            printGodotError("Class doesn't exist.")
            return nil
        }
        
        guard let functionCall = classBinding.virtualFuncCall(forName: functionName) else {
            printGodotError("Virtual func doesn't exist.")
            return nil
        }
        
        return functionCall
    }
    
    @discardableResult
    private func registerVirtualFunc<Class>(ofType type: Class.Type,
                                            name: StringName,
                                            call: GDExtensionClassCallVirtual) -> Bool
    where Class : Object {
        let className = type.godotClassName()
        
        guard let classBinding = classNameToClassBinding[className] else {
            printGodotError("Class doesn't exist.")
            return false
        }
        
        return classBinding.appendVirtualFunc(name: name, call: call)
    }
    
    // MARK: Function registration
    
    public func registerFunction<Class>(
        withName functionName: Swift.String,
        insideType classType: Class.Type,
        arguments: FunctionParameter...,
        returnType: FunctionParameter?,
        call: GDExtensionClassMethodCall
    ) where Class : Object {
        guard isRegistrationOpen else {
            printGodotError("Cannot register function \(functionName) because the registration is closed.")
            return
        }
        
        let className = classType.godotClassName()
        let functionName = StringName(swiftString: functionName)
        
        guard let classBinding = classNameToClassBinding[className] else {
            printGodotError("Class doesn't exist.")
            return
        }
        
#warning("Translate functions")
#warning("Do the static and vararg")
        // Register this function within our extension.
        let functionBinding = FunctionBinding(name: functionName,
                                              className: className,
                                              arguments: arguments.map { $0.propertyInfo(withClassName: className) },
                                              returnType: returnType?.propertyInfo(withClassName: className),
                                              isVararg: false,
                                              isStatic: false)
        classBinding.appendFunctionBinding(functionBinding)
        
        functionName.withUnsafeExtensionPointer { functionNamePtr in
            functionBinding.withGodotExtensionPropertiesInfo { propertiesInfo in
                functionBinding.withGodotExtensionArgumentsMetadata { argumentsMetadata in
                    functionBinding.withLastDefaultArguments { defaultArguments in
                        let godotMethodInfo = GDExtensionClassMethodInfo(
                            name: functionNamePtr,
                            method_userdata: Unmanaged.passUnretained(functionBinding).toOpaque(),
                            call_func: call,
                            ptrcall_func: { _, _, _, _ in
#warning("DO THIS")
                            },
                            method_flags: functionBinding.flag,
                            has_return_value: GDExtensionBool(functionBinding.hasReturnValue),
                            return_value_info: propertiesInfo.returnValue,
                            return_value_metadata: argumentsMetadata.returnValue.pointee,
                            argument_count: UInt32(functionBinding.argumentsCount),
                            arguments_info: propertiesInfo.argumentsValue,
                            arguments_metadata: argumentsMetadata.argumentsValue,
                            default_argument_count: UInt32(functionBinding.lastDefaultArgumentsCount),
                            default_arguments: defaultArguments)
                        
                        className.withUnsafeExtensionPointer { namePtr in
                            withUnsafePointer(to: godotMethodInfo) { methodInfoPtr in
                                GodotExtension.shared.interface.classdb_register_extension_class_method(
                                    GodotExtension.shared.libraryPtr, namePtr, methodInfoPtr
                                )
                            }
                        }
                    }
                }
            }
        }
        
        return
    }
}

// MARK: - StringName extensions

private extension StringName {
    static func makeFromPtr(_ unsafeStringNamePtr: GDExtensionConstStringNamePtr) -> StringName {
        let string = StringName()
        string.opaque.copyRaw(from: unsafeStringNamePtr)
        
        // We create the new string by calling the constructor to ensure copy of the data.
        return StringName(string)
    }
}

// MARK: - ClassPassport

/// When a class couldn't be registered because its superclass is still not registered,
/// a passport is created instead.
/// This passport is used to register the class when possible.
private struct ClassPassport {
    let classType: Object.Type
    let className: StringName
    let parentClassName: StringName
    let toStringFunction: GDExtensionClassToString
    let createInstanceFunction: GDExtensionClassCreateInstance
    let freeInstanceFunction: GDExtensionClassFreeInstance
}
