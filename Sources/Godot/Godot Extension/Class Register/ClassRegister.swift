import Foundation
import GodotExtensionHeaders

// TODO: METHOD_FLAGS_DEFAULT from the json file
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

/// The registration is open at start. Once all the custom classes are registered,
/// you should call `closeRegistration()`.
/// This locks the register and prevents any modification.
/// Once locked, the register cannot be openned back.
///
/// Before registering any type, the `ClassRegister` should be initialized with a level
/// using the `initialize(level:)` function.
///
/// Use the `shared` singleton since it is the only `ClassRegister` available.


/// An object that enables the registration of custom Godot classes.
///
/// Do not use `ClassRegister` directly.
/// See <doc:CreatingGodotBridge> to learn how to expose custom classes to Godot.
public final class ClassRegister {
    // MARK: Properties
    
    /// The shared `ClassRegister`.
    ///
    /// This is the only `ClassRegister` available.
    internal static let shared = ClassRegister()
    
    /// A Boolean value indicating whether the registration is open.
    ///
    /// If the registration is not open, any modification on the `ClassRegister`
    /// is prevented.
    public private(set) var isRegistrationOpen = true
    
    /// The current Godot initialization level.
    public private(set) var currentLevel: GodotInitializationLevel?
    
    /// A dictionary keeping track of all the custom registered classes.
    private var customClassNameToClassBinding = [StringName : ClassBinding]()
    
    /// A dictionary keeping track of all the base Godot classes.
    private var godotClassNameToClassType = [StringName : Object.Type]()
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Initialize & deinitialize level
    
    func initialize(level: GodotInitializationLevel) {
        currentLevel = level
    }
    
    func deinitialize(level: GodotInitializationLevel) {
        let classesToUnregister = customClassNameToClassBinding.compactMap { (name, binding) in
            if binding.level == level {
                return name
            } else {
                return nil
            }
        }
        
        for className in classesToUnregister {
            let classBinding = customClassNameToClassBinding.removeValue(forKey: className)!
            
            classBinding.name.withUnsafeRawPointer { namePtr in
                GodotExtension.interface.classdb_unregister_extension_class(
                    GodotExtension.libraryPtr,
                    namePtr
                )
            }
        }
    }
    
    func closeRegistration() {
        isRegistrationOpen = false
    }
    
    // MARK: Class registration
    
    /// Returns the ``Object`` type named as the given class name.
    ///
    /// This function searches for base Godot classes as well as registered custom classes.
    private func classType(named className: StringName) -> Object.Type? {
        if let type = godotClassNameToClassType[className] {
            return type
        } else if let binding = customClassNameToClassBinding[className] {
            return binding.type
        } else {
            return nil
        }
    }
    
    /// Returns a Boolean value indicating whether a class with the given name is already registered.
    ///
    /// This function searches for base Godot classes as well as registered custom classes.
    private func classIsAlreadyRegistered(withName className: StringName) -> Bool {
        classType(named: className) != nil
    }
    
    /// Returns a Boolean value indicating whether the given class type
    /// has the correct associated ``Object/_gd_className``.
    ///
    /// If the class name is not correct, it indicates that the custom registered class
    /// is not configured correctly. This might be a sign that the ``GodotExposable()``
    /// macro is not used.
    private func classNameIsEquivalentToType<Class>(classType: Class.Type) -> Bool where Class : Object {
        StringName(swiftString: .init(describing: classType)) == classType._gd_className
    }
    
    /// Registers the given base Godot class.
    ///
    /// This function should only be used to register base classes, and not custom ones.
    internal func registerBaseGodotClass<Class>(ofType classType: Class.Type) -> Bool where Class : Object {
        guard isRegistrationOpen else {
            gdDebugPrintError("Cannot register class \(classType) because the registration is closed.")
            return false
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            gdDebugPrintError("Cannot register class \(classType) because the type and name don't match. The @GodotExposable macro should be applied to the class.")
            return false
        }
        
        godotClassNameToClassType[classType._gd_className] = classType
        return true
    }
    
    /// Registers a given custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - classType: The type of the class.
    ///   - superclassType: The type of the parent class.
    ///   - toStringFunction: A C closure returning the description of an instance.
    ///   - createInstanceFunction: A C closure used by Godot to create an instance of the class.
    ///   - freeInstanceFunction: A C closure used by Godot to free an instance of the class.
    /// - Returns: A Boolean value indicating whether the class was registered.
    @discardableResult
    public func registerCustomClass<Class, Superclass>(
        ofType classType: Class.Type,
        superclassType: Superclass.Type,
        toStringFunction: GDExtensionClassToString, // TODO: Do the to string function
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance) -> Bool
    where Class : Object,
          Superclass : Object
    {
        guard let currentLevel else {
            gdDebugPrintError("Cannot register class \(classType) because no initialization level was provided.")
            return false
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            gdDebugPrintError("Cannot register class \(classType) because the type and name don't match. Make sure the @GodotExposable macro is applied to the class.")
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
            gdDebugPrintError("Cannot register class \(classType) because the registration is closed.")
            return false
        }
        
        let className = classBinding.name
        let superclassName = classBinding.superclassName
        
        guard !classIsAlreadyRegistered(withName: className) else {
            gdDebugPrintError("Cannot register class \(classType) because a class with the same name is already registered.")
            return false
        }
        
        guard self.classType(named: superclassName) == superclassType else {
            gdDebugPrintError("Cannot register class \(classType) because its superclass \(superclassName) is not registered.")
            return false
        }
        
        customClassNameToClassBinding[className] = classBinding
        
        // TODO: Fill all the blanks
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
        
        className.withUnsafeRawPointer { namePtr in
            superclassName.withUnsafeRawPointer { superclassNamePtr in
                withUnsafePointer(to: godotClassInfo) { classInfoPtr in
                    GodotExtension.interface.classdb_register_extension_class(
                        GodotExtension.libraryPtr, namePtr, superclassNamePtr, classInfoPtr
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
            gdDebugPrintError("No class data pointer provided.")
            return nil
        }
        
        guard let methodNamePtr else {
            gdDebugPrintError("No virtual func name given.")
            return nil
        }
        
        let classBinding = Unmanaged<ClassBinding>.fromOpaque(userDataPtr).takeUnretainedValue()
        let methodName = StringName.makeFromPtr(methodNamePtr)
        
        guard let classBinding = shared.customClassNameToClassBinding[classBinding.name] else {
            gdDebugPrintError("Class doesn't exist.")
            return nil
        }
        
        guard let functionCall = classBinding.virtualFuncCall(forName: methodName) else {
            gdDebugPrintError("Virtual func doesn't exist.")
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
            gdDebugPrintError("Class doesn't exist.")
            return false
        }
        
        return classBinding.appendVirtualFunc(name: name, call: call)
    }
    
    // MARK: Function registration
    
    /// Registers a given function from an already registered
    /// custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - functionName: The function name.
    ///   - classType: The type of the class the function is part of.
    ///   - argumentParameters: The arguments of the function.
    ///   - returnParameter: The return parameter of the function, if any.
    ///   - isStatic: A Boolean value indicating whether the function is static.
    ///   - call: A C closure used by Godot to call the function.
    /// - Returns: A Boolean value indicating whether the function was registered.
    @discardableResult
    public func registerFunction<Class>(
        withName functionName: StringName,
        insideType classType: Class.Type,
        argumentParameters: [FunctionParameter],
        returnParameter: FunctionParameter?,
        isStatic: Bool,
        call: GDExtensionClassMethodCall)
    -> Bool where Class : Object {
        guard isRegistrationOpen else {
            gdDebugPrintError("Cannot register function \(functionName) because the registration is closed.")
            return false
        }
        
        let className = classType._gd_className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register function \(functionName) because the class \(className) is not registered.")
            return false
        }
        
        let arguments = argumentParameters.map { $0.propertyInfo() }
        let returnType = returnParameter?.propertyInfo()
        
        // TODO: Do the vararg
        // Register this function within our extension.
        let functionBinding = FunctionBinding(name: functionName,
                                              className: className,
                                              arguments: arguments,
                                              returnType: returnType,
                                              isVararg: false,
                                              isStatic: isStatic)
        classBinding.appendFunctionBinding(functionBinding)
        
        functionName.withUnsafeRawPointer { functionNamePtr in
            functionBinding.withGodotExtensionPropertiesInfo { propertiesInfo in
                functionBinding.withGodotExtensionArgumentsMetadata { argumentsMetadata in
                    functionBinding.withLastDefaultArguments { defaultArguments in
                        let godotMethodInfo = GDExtensionClassMethodInfo(
                            name: functionNamePtr,
                            method_userdata: Unmanaged.passUnretained(functionBinding).toOpaque(),
                            call_func: call,
                            ptrcall_func: { _, _, _, _ in
// TODO: DO THIS
                            },
                            method_flags: functionBinding.flag,
                            has_return_value: gdExtentionBool(functionBinding.hasReturnValue),
                            return_value_info: propertiesInfo.returnValue,
                            return_value_metadata: argumentsMetadata.returnValue.pointee,
                            argument_count: UInt32(functionBinding.argumentsCount),
                            arguments_info: propertiesInfo.argumentsValue,
                            arguments_metadata: argumentsMetadata.argumentsValue,
                            default_argument_count: UInt32(functionBinding.lastDefaultArgumentsCount),
                            default_arguments: defaultArguments)
                        
                        className.withUnsafeRawPointer { namePtr in
                            withUnsafePointer(to: godotMethodInfo) { methodInfoPtr in
                                GodotExtension.interface.classdb_register_extension_class_method(
                                    GodotExtension.libraryPtr, namePtr, methodInfoPtr
                                )
                            }
                        }
                    }
                }
            }
        }
        
        return true
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
