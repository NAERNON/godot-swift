import Foundation
import GodotExtensionHeaders

#warning("METHOD_FLAGS_DEFAULT from the json file.")
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

public final class ClassRegister {
    // MARK: Properties
    
    internal static let shared = ClassRegister()
    
    public private(set) var isRegistrationOpen = true
    private var currentLevel: GDExtensionInitializationLevel?
    
    private var customClassNameToClassBinding = [StringName : ClassBinding]()
    private var godotClassNameToClassType = [StringName : Object.Type]()
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Initialize & deinitialize level
    
    func initialize(level: GDExtensionInitializationLevel) {
        currentLevel = level
    }
    
    func deinitialize(level: GDExtensionInitializationLevel) {
        let classesToUnregister = customClassNameToClassBinding.compactMap { (name, binding) in
            if binding.level == level {
                return name
            } else {
                return nil
            }
        }
        
        for className in classesToUnregister {
            let classBinding = customClassNameToClassBinding.removeValue(forKey: className)!
            
            classBinding.name.withUnsafeExtensionPointer { namePtr in
                GodotExtension.shared.interface.classdb_unregister_extension_class(
                    GodotExtension.shared.libraryPtr,
                    namePtr
                )
            }
        }
    }
    
    public func closeRegistration() {
        isRegistrationOpen = false
    }
    
    // MARK: Class registration
    
    private func classType(forClassName className: StringName) -> Object.Type? {
        if let type = godotClassNameToClassType[className] {
            return type
        } else if let binding = customClassNameToClassBinding[className] {
            return binding.type
        } else {
            return nil
        }
    }
    
    private func classIsAlreadyRegistered(withName className: StringName) -> Bool {
        classType(forClassName: className) != nil
    }
    
    private func classNameIsEquivalentToType<Class>(classType: Class.Type) -> Bool where Class : Object {
        StringName(swiftString: .init(describing: classType)) == classType._gd_className
    }
    
    internal func registerBaseGodotClass<Class>(ofType classType: Class.Type) -> Bool where Class : Object {
        guard isRegistrationOpen else {
            printGodotError("Cannot register class \(classType) because the registration is closed.")
            return false
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            printGodotError("Cannot register class \(classType) because the type and name don't match. The @GodotExposable macro should be applied to the class.")
            return false
        }
        
        godotClassNameToClassType[classType._gd_className] = classType
        return true
    }
    
#warning("Do the to string function")
    public func registerCustomClass<Class, Superclass>(
        ofType classType: Class.Type,
        superclassType: Superclass.Type,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance) -> Bool
    where Class : Object,
          Superclass : Object
    {
        guard let currentLevel else {
            printGodotError("Cannot register class \(classType) because no initialization level was provided.")
            return false
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            printGodotError("Cannot register class \(classType) because the type and name don't match. Make sure the @GodotExposable macro is applied to the class.")
            return false
        }
        
        let classBinding = ClassBinding(
            level: currentLevel,
            type: classType,
            name: classType._gd_className,
            superclassType: superclassType,
            superclassName: superclassType._gd_className,
            toStringFunction: toStringFunction,
            createInstanceFunction: createInstanceFunction,
            freeInstanceFunction: freeInstanceFunction
        )
        
        guard isRegistrationOpen else {
            printGodotError("Cannot register class \(classType) because the registration is closed.")
            return false
        }
        
        let className = classBinding.name
        let superclassName = classBinding.superclassName
        
        guard !classIsAlreadyRegistered(withName: className) else {
            printGodotError("Cannot register class \(classType) because a class with the same name is already registered.")
            return false
        }
        
        guard self.classType(forClassName: superclassName) == superclassType else {
            printGodotError("Cannot register class \(classType) because its superclass \(superclassName) is not registered.")
            return false
        }
        
        customClassNameToClassBinding[className] = classBinding
        
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
        
        return true
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
        guard let classBinding = shared.customClassNameToClassBinding[classBinding.name] else {
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
        guard let classBinding = customClassNameToClassBinding[type._gd_className] else {
            printGodotError("Class doesn't exist.")
            return false
        }
        
        return classBinding.appendVirtualFunc(name: name, call: call)
    }
    
    // MARK: Function registration
    
    public enum FunctionRegistrationResult {
        case success, failure
    }
    
    @discardableResult
    public func registerFunction<Class>(
        withName functionName: StringName,
        insideType classType: Class.Type,
        arguments: [Parameter],
        returnParameter: Parameter?,
        isStatic: Bool,
        call: GDExtensionClassMethodCall)
    -> FunctionRegistrationResult where Class : Object {
        guard isRegistrationOpen else {
            printGodotError("Cannot register function \(functionName) because the registration is closed.")
            return .failure
        }
        
        let className = classType._gd_className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            printGodotError("Cannot register function \(functionName) because the class \(className) is not registered.")
            return .failure
        }
        
        let arguments = arguments.map { $0.propertyInfo(withClassName: className) }
        let returnType = returnParameter?.propertyInfo(withClassName: className)
        
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
    
    // MARK: Property registration
    
    public enum PropertyRegistrationResult {
        case success, failure
    }
    
    @discardableResult
    public func registerWritableProperty<Class, Value>(
        keyPath: WritableKeyPath<Class, Value>,
        name propertyName: StringName,
        getterFunctionName: StringName,
        setterFunctionName: StringName)
    -> PropertyRegistrationResult where
    Class : Object,
    Value : TypedVariantTransformable
    {
        guard isRegistrationOpen else {
            printGodotError("Cannot register property \(propertyName) because the registration is closed.")
            return .failure
        }
        
        let className = Class._gd_className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == Class.self else {
            printGodotError("Cannot register property \(propertyName) because the class \(className) is not registered.")
            return .failure
        }

#warning("Check that getter and setters are set")
        
        let propertyInfo = PropertyInfo(
            type: Value.variantStorageType,
            metadata: PropertyMetadata(Value.self),
            name: propertyName,
            usageFlags: .default,
            className: className)
        
#warning("Register within the extension")
#warning("Properties not calling getter and setters in Godot (kind of bad right ?)")
        
        className.withUnsafeExtensionPointer { classNamePtr in
            getterFunctionName.withUnsafeExtensionPointer { getterFunctionNamePtr in
                setterFunctionName.withUnsafeExtensionPointer { setterFunctionNamePtr in
                    propertyInfo.withGodotExtensionPropertyInfo { extensionPropertyInfo in
                        withUnsafePointer(to: extensionPropertyInfo) { extentionPropertyInfoPtr in
                            GodotExtension.shared.interface.classdb_register_extension_class_property(
                                GodotExtension.shared.libraryPtr,
                                classNamePtr,
                                extentionPropertyInfoPtr,
                                setterFunctionNamePtr,
                                getterFunctionNamePtr)
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
