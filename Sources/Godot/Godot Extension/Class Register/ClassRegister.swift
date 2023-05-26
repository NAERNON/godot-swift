import Foundation
import GodotExtensionHeaders

#warning("METHOD_FLAGS_DEFAULT from the json file.")
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

public final class ClassRegister {
    public enum RegistrationResult {
        case success, failure, waiting, none
    }
    
    // MARK: Properties
    
    internal static let shared = ClassRegister()
    
    public private(set) var isRegistrationOpen = true
    private var currentLevel: GDExtensionInitializationLevel?
    
    private var classNameToClassBinding = [StringName : ClassBinding]()
    private var godotClassesNames = Set<StringName>()
    
    private var classNameToWaitingSubclassBindings = [StringName : [ClassBinding]]()
    
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
        for subclassBindings in classNameToWaitingSubclassBindings.values {
            for binding in subclassBindings {
                printGodotError("Class register couldn't register \(binding.name) because no valid superclass was provided.")
            }
        }
        
        classNameToWaitingSubclassBindings.removeAll()
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
    
    public func instantiateClass<Class>(ofType type: Class.Type) -> GDExtensionObjectPtr where Class : Object {
        let instance = Class()
        var objectPtr: GDExtensionObjectPtr!
        
        instance.withUnsafeExtensionPointer { ptr in
            objectPtr = ptr
        }
        
        return objectPtr
    }
    
    private func insertWaitingClassBinding(_ binding: ClassBinding) {
        var bindings = classNameToWaitingSubclassBindings[binding.superclassName] ?? []
        bindings.append(binding)
        classNameToWaitingSubclassBindings[binding.superclassName] = bindings
    }
    
#warning("Do the to string function")
    @discardableResult
    public func registerClass<Class>(
        ofType classType: Class.Type,
        superclassName: StringName,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance)
    -> RegistrationResult where Class : Object {
        guard let currentLevel else {
            printGodotError("Cannot register class \(classType) because no initialization level was provided.")
            return .failure
        }
        
        let classBinding = ClassBinding(
            level: currentLevel,
            type: classType,
            name: classType.godotClassName(),
            superclassName: superclassName,
            toStringFunction: toStringFunction,
            createInstanceFunction: createInstanceFunction,
            freeInstanceFunction: freeInstanceFunction
        )
        
        return registerClassBinding(classBinding)
    }
    
    @discardableResult
    private func registerClassBinding(_ classBinding: ClassBinding) -> RegistrationResult {
        let classType = classBinding.type
        
        guard isRegistrationOpen else {
            printGodotError("Cannot register class \(classType) because the registration is closed.")
            return .failure
        }
        
        let className = classBinding.name
        let superclassName = classBinding.superclassName
        
        guard !classIsAlreadyRegistered(withName: className) else {
            printGodotError("Cannot register class \(classType) because it is already registered.")
            return .failure
        }
        
        guard classIsAlreadyRegistered(withName: superclassName) else {
            insertWaitingClassBinding(classBinding)
            return .waiting
        }
        
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
            to_string_func: classBinding.toStringFunction,
            reference_func: nil,
            unreference_func: nil,
            create_instance_func: classBinding.createInstanceFunction, // This one is mandatory.
            free_instance_func: classBinding.freeInstanceFunction, // This one is mandatory.
            get_virtual_func: { ClassRegister.virtualFunc(fromUserDataPtr: $0, methodNamePtr: $1) },
            get_rid_func: nil,
            class_userdata: Unmanaged.passUnretained(classBinding).toOpaque()
        )
        
        className.withUnsafeExtensionPointer { namePtr in
            superclassName.withUnsafeExtensionPointer { superclassNamePtr in
                withUnsafePointer(to: godotClassInfo) { classInfoPtr in
                    GodotExtension.shared.interface.classdb_register_extension_class(
                        GodotExtension.shared.libraryPtr, namePtr, superclassNamePtr, classInfoPtr
                    )
                }
            }
        }
        
        // Register all the virtual functions
        classType.setVirtualFunctionCalls { methodName, call in
            registerVirtualFunc(ofType: classType, name: methodName, call: call)
        }
        
        if let subclassBindings = classNameToWaitingSubclassBindings.removeValue(forKey: className) {
            for binding in subclassBindings {
                registerClassBinding(binding)
            }
        }
        
        return .success
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
    
    @discardableResult
    public func registerFunction<Class>(
        withName functionName: Swift.String,
        insideType classType: Class.Type,
        types: FunctionRegistrationTypes,
        isStatic: Bool,
        call: GDExtensionClassMethodCall)
    -> RegistrationResult where Class : Object {
        guard isRegistrationOpen else {
            printGodotError("Cannot register function \(functionName) because the registration is closed.")
            return .failure
        }
        
        let className = classType.godotClassName()
        let functionName = StringName(swiftString: functionName)
        
        guard let classBinding = classNameToClassBinding[className],
              classBinding.type == classType else {
            printGodotError("Cannot register function \(functionName) because the class is not registered.")
            return .failure
        }
        
        let arguments = types.arguments.map { $0.propertyInfo(withClassName: className) }
        let returnType = types.returnType?.propertyInfo(withClassName: className)
        
#warning("Translate functions")
#warning("Do the vararg")
        // Register this function within our extension.
        let functionBinding = FunctionBinding(name: functionName,
                                              className: className,
                                              arguments: arguments,
                                              returnType: returnType,
                                              isVararg: false,
                                              isStatic: isStatic)
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
        
        return .success
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
