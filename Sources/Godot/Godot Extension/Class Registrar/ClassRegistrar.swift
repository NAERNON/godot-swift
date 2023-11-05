import GodotExtensionHeaders

/// An object that enables the registration of custom Godot classes.
///
/// Do not use `ClassRegistrar` directly.
/// See <doc:CreatingGodotBridge> to learn how to expose custom classes to Godot.
///
/// Before registering any type, the `ClassRegistrar` should be initialized with a level
/// using the `initialize(level:)` function.
///
/// Use the `shared` singleton since it is the only `ClassRegistrar` available.
public final class ClassRegistrar {
    // MARK: Properties
    
    /// The shared `ClassRegistrar`.
    ///
    /// This is the only `ClassRegistrar` available.
    internal static let shared = ClassRegistrar()
    
    /// The current Godot initialization level.
    public private(set) var currentLevel: GodotInitializationLevel?
    
    /// A dictionary keeping track of all the custom registered classes.
    private var customClassNameToClassBinding = [GodotStringName : CustomClassBinding]()
    
    /// A dictionary keeping track of all the base Godot classes.
    private var godotClassNameToClassBinding = [GodotStringName : ClassBinding]()
    
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
                gdextension_interface_classdb_unregister_extension_class(
                    GodotExtension.libraryPtr,
                    namePtr
                )
            }
        }
    }
    
    // MARK: Class registration
    
    internal func binding(forClassNamed className: GodotStringName) -> ClassBinding? {
        if let binding = godotClassNameToClassBinding[className] {
            return binding
        } else if let binding = customClassNameToClassBinding[className] {
            return binding
        } else {
            return nil
        }
    }
    
    /// Returns the ``Object`` type named as the given class name.
    ///
    /// This function searches for base Godot classes as well as registered custom classes.
    private func classType(named className: GodotStringName) -> Object.Type? {
        if let binding = godotClassNameToClassBinding[className] {
            return binding.type
        } else if let binding = customClassNameToClassBinding[className] {
            return binding.type
        } else {
            return nil
        }
    }
    
    /// Returns a Boolean value indicating whether a class with the given name is already registered.
    ///
    /// This function searches for base Godot classes as well as registered custom classes.
    private func classIsAlreadyRegistered(withName className: GodotStringName) -> Bool {
        classType(named: className) != nil
    }
    
    /// Returns a Boolean value indicating whether the given class type
    /// has the correct associated ``Object/_$className``.
    ///
    /// If the class name is not correct, it indicates that the custom registered class
    /// is not configured correctly. This might be a sign that the ``Exposable()``
    /// macro is not used.
    internal func classNameIsEquivalentToType<Class>(classType: Class.Type) -> Bool where Class : Object {
        GodotStringName(swiftString: .init(describing: classType)) == classType._$className
    }
    
    /// Registers the given base Godot class.
    ///
    /// This function should only be used to register base classes, and not custom ones.
    @discardableResult
    internal func registerBaseGodotClass<Class>(ofType classType: Class.Type) -> ClassBinding? where Class : Object {
        guard let currentLevel else {
            gdDebugPrintError("Cannot register class \(classType) because no initialization level was provided.")
            return nil
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            gdDebugPrintError("Cannot register class \(classType) because the type and name don't match. The @Exposable macro should be applied to the class.")
            return nil
        }
        
        let classBinding = ClassBinding(
            level: currentLevel,
            type: classType
        )
        
        godotClassNameToClassBinding[classType._$className] = classBinding
        return classBinding
    }
    
    /// Registers a given custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - classType: The type of the class.
    ///   - superclassType: The type of the parent class.
    ///   - toStringFunction: A C closure returning the description of an instance.
    ///   - createInstanceFunction: A C closure used by Godot to create an instance of the class.
    ///   - freeInstanceFunction: A C closure used by Godot to free an instance of the class.
    /// - Returns: The newly created class binding, or `nil` if the class wasn't registered.
    @discardableResult
    public func registerCustomClass<Class, Superclass>(
        ofType classType: Class.Type,
        superclassType: Superclass.Type,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance
    ) -> CustomClassBinding?
    where Class : Object,
          Superclass : Object
    {
        guard let currentLevel else {
            gdDebugPrintError("Cannot register class \(classType) because no initialization level was provided.")
            return nil
        }
        
        guard classNameIsEquivalentToType(classType: classType) else {
            gdDebugPrintError("Cannot register class \(classType) because the type and name don't match. Make sure the @Exposable macro is applied to the class.")
            return nil
        }
        
        let classBinding = CustomClassBinding(
            level: currentLevel,
            type: classType,
            superclassType: superclassType,
            toStringFunction: toStringFunction,
            createInstanceFunction: createInstanceFunction,
            freeInstanceFunction: freeInstanceFunction
        )
        
        let className = classBinding.name
        let superclassName = classBinding.superclassName
        
        guard !classIsAlreadyRegistered(withName: className) else {
            gdDebugPrintError("Cannot register class \(classType) because a class with the same name is already registered.")
            return nil
        }
        
        guard self.classType(named: superclassName) == superclassType,
              let superclassBinding = binding(forClassNamed: superclassName)
        else {
            gdDebugPrintError("Cannot register class \(classType) because its superclass \(superclassName) is not registered.")
            return nil
        }
        
        if let customSuperclassBinding = superclassBinding as? CustomClassBinding {
            classBinding.superclassBinding = customSuperclassBinding
        }
        
        customClassNameToClassBinding[className] = classBinding
        
        let godotClassInfo = GDExtensionClassCreationInfo(
            is_virtual: 0,
            is_abstract: 0,
            set_func: nil,
            get_func: nil,
            get_property_list_func: nil,
            free_property_list_func: nil,
            property_can_revert_func: nil,
            property_get_revert_func: nil,
            notification_func: nil,
            to_string_func: classBinding.toStringFunction,
            reference_func: nil,
            unreference_func: nil,
            create_instance_func: classBinding.createInstanceFunction, // This one is mandatory.
            free_instance_func: classBinding.freeInstanceFunction, // This one is mandatory.
            get_virtual_func: { ClassRegistrar.virtualFuncCall(fromUserDataPtr: $0, methodNamePtr: $1) },
            get_rid_func: nil,
            class_userdata: Unmanaged.passUnretained(classBinding).toOpaque()
        )
        
        className.withUnsafeRawPointer { namePtr in
            superclassName.withUnsafeRawPointer { superclassNamePtr in
                withUnsafePointer(to: godotClassInfo) { classInfoPtr in
                    gdextension_interface_classdb_register_extension_class(
                        GodotExtension.libraryPtr, namePtr, superclassNamePtr, classInfoPtr
                    )
                }
            }
        }
        
        return classBinding
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
    /// - Returns: The newly created function binding, or `nil` if the function wasn't registered.
    @discardableResult
    public func registerFunction<Class>(
        named functionName: GodotStringName,
        insideType classType: Class.Type,
        argumentParameters: [FunctionParameter],
        returnParameter: FunctionParameter?,
        isStatic: Bool,
        call: GDExtensionClassMethodCall
    ) -> FunctionBinding? where Class : Object {
        let className = classType._$className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register function \(functionName) because the class \(className) is not registered.")
            return nil
        }
        
        guard classBinding.function(named: functionName) == nil else {
            gdDebugPrintError("Cannot register function \(functionName) because the class \(className) already registered a function with the same name.")
            return nil
        }
        
        let arguments = argumentParameters.map(\.propertyInfo)
        let returnType = returnParameter?.propertyInfo
        
        let functionBinding = FunctionBinding(
            name: functionName,
            className: className,
            arguments: arguments,
            returnType: returnType,
            isVararg: false,
            isStatic: isStatic
        )
        classBinding.appendFunction(functionBinding)
        
        functionName.withUnsafeRawPointer { functionNamePtr in
            functionBinding.withGodotExtensionPropertiesInfo { propertiesInfo in
                functionBinding.withGodotExtensionArgumentsMetadata { argumentsMetadata in
                    functionBinding.withLastDefaultArguments { defaultArguments in
                        let godotMethodInfo = GDExtensionClassMethodInfo(
                            name: functionNamePtr,
                            method_userdata: Unmanaged.passUnretained(functionBinding).toOpaque(),
                            call_func: call,
                            ptrcall_func: { _, _, _, _ in },
                            method_flags: functionBinding.flag,
                            has_return_value: functionBinding.hasReturnValue ? 1 : 0,
                            return_value_info: propertiesInfo.returnValue,
                            return_value_metadata: argumentsMetadata.returnValue.pointee,
                            argument_count: UInt32(functionBinding.argumentsCount),
                            arguments_info: propertiesInfo.argumentsValue,
                            arguments_metadata: argumentsMetadata.argumentsValue,
                            default_argument_count: UInt32(functionBinding.lastDefaultArgumentsCount),
                            default_arguments: defaultArguments)
                        
                        className.withUnsafeRawPointer { namePtr in
                            withUnsafePointer(to: godotMethodInfo) { methodInfoPtr in
                                gdextension_interface_classdb_register_extension_class_method(
                                    GodotExtension.libraryPtr, namePtr, methodInfoPtr
                                )
                            }
                        }
                    }
                }
            }
        }
        
        return functionBinding
    }
    
    // MARK: Function override registration
    
    /// Registers a given function override from an already registered
    /// custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - swiftFunctionName: The Swift name of the function that is overriden.
    ///   - classType: The type of the class the function is part of.
    /// - Returns: The newly created function override binding, or `nil` if the function wasn't registered.
    @discardableResult
    public func registerFunctionOverride<Class>(
        named swiftFunctionName: GodotStringName,
        insideType classType: Class.Type
    ) -> FunctionOverrideBinding? where Class : Object {
        let className = classType._$className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register function override \(swiftFunctionName) because the class \(className) is not registered.")
            return nil
        }
        
        // We need to check that the register override is a virtual func
        if let (godotFunctionName, virtualCall) = Class.virtualFunctions()[swiftFunctionName] {
            let functionOverrideBinding = FunctionOverrideBinding(
                name: godotFunctionName,
                className: className,
                call: .virtualFunc(virtualCall)
            )
            classBinding.appendFunctionOverride(functionOverrideBinding)
            return functionOverrideBinding
        }
        
        return nil
    }
    
    private static func virtualFuncCall(
        fromUserDataPtr userDataPtr: UnsafeMutableRawPointer?,
        methodNamePtr: GDExtensionConstStringNamePtr?
    ) -> GDExtensionClassCallVirtual? {
        guard let userDataPtr else {
            gdDebugPrintError("No class data pointer provided.")
            return nil
        }
        
        guard let methodNamePtr else {
            gdDebugPrintError("No virtual func name given.")
            return nil
        }
        
        let classBinding = Unmanaged<CustomClassBinding>.fromOpaque(userDataPtr).takeUnretainedValue()
        let methodName = GodotStringName(godotExtensionPointer: methodNamePtr)
        
        guard let classBinding = shared.customClassNameToClassBinding[classBinding.name] else {
            gdDebugPrintError("Class \(classBinding.name) doesn't exist.")
            return nil
        }
        
        if let overrideBinding = classBinding.functionOverride(named: methodName),
           case let .virtualFunc(call) = overrideBinding.call {
            return call
        }
        
        return nil
    }
    
    // MARK: Variable registration
    
    /// Registers a given variable from an already registered
    /// custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - variableName: The variable name.
    ///   - keyPath: The key path to the variable.
    ///   - classType: The type of the class the variable is part of.
    ///   - getterName: The name of the getter function.
    ///   - setterName: The name of the setter function, if a setter is available.
    ///   - getterCall: A C closure used by Godot to call the getter function.
    ///   - setterCall: A C closure used by Godot to call the setter function, if a setter is available.
    /// - Returns: The newly created variable binding, or `nil` if the variable wasn't registered.
    @discardableResult
    public func registerVariable<Class, Variable>(
        named variableName: GodotStringName,
        keyPath: KeyPath<Class, Variable>,
        insideType classType: Class.Type,
        getterName: GodotStringName,
        setterName: GodotStringName? = nil,
        getterCall: GDExtensionClassMethodCall,
        setterCall: GDExtensionClassMethodCall? = nil
    ) -> VariableBinding?
    where Class : Object,
          Variable : VariantConvertible
    {
        let className = classType._$className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register variable \(variableName) because the class \(className) is not registered.")
            return nil
        }
        
        guard classBinding.variable(named: variableName) == nil else {
            gdDebugPrintError("Cannot register variable \(variableName) because the class \(className) already registered a variableName with the same name.")
            return nil
        }
        
        let parameter = FunctionParameter.argument(Variable.self, name: variableName)
        
        guard let getterBinding = registerFunction(
            named: getterName,
            insideType: classType,
            argumentParameters: [], 
            returnParameter: parameter,
            isStatic: false,
            call: getterCall
        ) else {
            return nil
        }
        
        var setterBinding: FunctionBinding?
        if let setterName, let setterCall {
            guard let binding = registerFunction(
                named: setterName,
                insideType: classType,
                argumentParameters: [parameter],
                returnParameter: .returnParameter(Variable.self),
                isStatic: false,
                call: setterCall
            ) else {
                return nil
            }
            
            setterBinding = binding
        }
        
        let variableBinding = VariableBinding(
            name: variableName,
            getter: getterBinding,
            setter: setterBinding
        )
        classBinding.appendVariable(variableBinding)
        
        getterName.withUnsafeRawPointer { getterPtr in
            (setterName ?? GodotStringName()).withUnsafeRawPointer { setterPtr in
                parameter.propertyInfo.withGodotExtensionPropertyInfo { propertyInfo in
                    withUnsafePointer(to: propertyInfo) { propertyInfoPtr in
                        className.withUnsafeRawPointer { namePtr in
                            gdextension_interface_classdb_register_extension_class_property(
                                GodotExtension.libraryPtr, namePtr, propertyInfoPtr, setterPtr, getterPtr
                            )
                        }
                    }
                }
            }
        }
        
        return variableBinding
    }
    
    // MARK: Enum & OptionSet registration
    
    /// Registers a given enum or option set from an already registered
    /// custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - enumName: The enum name.
    ///   - values: All the values of the enum and their associated name.
    ///   - isOptionSet: A Boolean value indicating whether this enum is an option set.
    ///   - classType: The type of the class the enum is part of.
    /// - Returns: The newly created enum binding, or `nil` if the enum wasn't registered.
    @discardableResult
    public func registerEnumOrOptionSet<Class>(
        named enumName: GodotStringName,
        values: [(GodotStringName, Int64)],
        isOptionSet: Bool,
        insideType classType: Class.Type
    ) -> EnumBinding? where Class : Object {
        let className = classType._$className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register enum or option set \(enumName) because the class \(className) is not registered.")
            return nil
        }
        
        guard classBinding.enum(named: enumName) == nil else {
            gdDebugPrintError("Cannot register enum or option set \(enumName) because the class \(className) already registered an enum or option set with the same name.")
            return nil
        }
        
        let enumBinding = EnumBinding(
            name: enumName,
            values: values,
            isOptionSet: isOptionSet
        )
        classBinding.appendEnum(enumBinding)
        
        enumName.withUnsafeRawPointer { namePtr in
            className.withUnsafeRawPointer { classNamePtr in
                for (caseName, value) in values {
                    caseName.withUnsafeRawPointer { caseNamePtr in
                        gdextension_interface_classdb_register_extension_class_integer_constant(
                            GodotExtension.libraryPtr, classNamePtr, namePtr, caseNamePtr, value, isOptionSet ? 1 : 0
                        )
                    }
                }
            }
        }
        
        return enumBinding
    }
    
    // MARK: Signal registration
    
    /// Registers a given signal from an already registered
    /// custom class to expose it to the Godot editor.
    ///
    /// - Parameters:
    ///   - signalName: The signal name.
    ///   - classType: The type of the class the signal is part of.
    ///   - argumentParameters: The arguments of the signal.
    /// - Returns: The newly created signal binding, or `nil` if the signal wasn't registered.
    @discardableResult
    public func registerSignal<Class>(
        named signalName: GodotStringName,
        insideType classType: Class.Type,
        argumentParameters: [FunctionParameter]
    ) -> SignalBinding? where Class : Object {
        let className = classType._$className
        
        guard let classBinding = customClassNameToClassBinding[className],
              classBinding.type == classType else {
            gdDebugPrintError("Cannot register signal \(signalName) because the class \(className) is not registered.")
            return nil
        }
        
        guard classBinding.signal(named: signalName) == nil else {
            gdDebugPrintError("Cannot register signal \(signalName) because the class \(className) already registered a signal with the same name.")
            return nil
        }
        
        let arguments = argumentParameters.map(\.propertyInfo)
        
        let signalBinding = SignalBinding(
            name: signalName,
            arguments: arguments
        )
        classBinding.appendSignal(signalBinding)
        
        signalName.withUnsafeRawPointer { signalNamePtr in
            signalBinding.withGodotExtensionPropertiesInfo { propertiesInfo in
                className.withUnsafeRawPointer { namePtr in
                    gdextension_interface_classdb_register_extension_class_signal(
                        GodotExtension.libraryPtr, namePtr, signalNamePtr, propertiesInfo, Int64(signalBinding.arguments.count)
                    )
                }
            }
        }
        
        return signalBinding
    }
}
