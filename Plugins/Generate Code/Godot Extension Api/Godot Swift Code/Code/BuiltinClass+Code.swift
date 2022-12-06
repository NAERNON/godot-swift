import Foundation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int,
              translated: Bool) -> some SwiftCode {
        if ExtensionApi.isBuiltinBaseType(name) {
            Extension(name) {
                insideStructOrExtensionCode(classSize: classSize, translated: translated)
            }
        } else {
            Struct(name) {
                insideStructOrExtensionCode(classSize: classSize, translated: translated)
            }.public()
        }
    }
    
    @CodeBuilder
    private func insideStructOrExtensionCode(classSize: Int,
                                             translated: Bool) -> some SwiftCode {
        constantsCode(translated: translated)
        enumCode(translated: translated)
        constructorsCode(translated: translated)
        operatorsCode()
        methodsCode(translated: translated)
        
        bindingsCode()
        if !ExtensionApi.isBuiltinBaseType(name) {
            nativePtrCode(classSize: classSize)
        }
    }
    
    // MARK: Native Opaque
    
    @CodeBuilder
    private func nativePtrCode(classSize: Int) -> some SwiftCode {
        Spacer()
        Property("opaque").letDefined().type("Opaque").private().assignComputed {
            if hasDestructor {
                ".init(size: \(classSize), destructorPtr: Self.\(destructorPtrName()))"
            } else {
                ".init(size: \(classSize))"
            }
        }
        Spacer()
        Comment(style: .doc) {
            "Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`."
        }
        Func(name: "withUnsafeNativePointer", parameters: .named("body", type: "(GDNativeTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }.public()
    }
    
    // MARK: Constants
    
    @CodeBuilder
    private func constantsCode(translated: Bool) -> some SwiftCode {
        if let constants,
           !constants.isEmpty {
            Mark(text: "Constants", isSeparator: true).padding(top: 1)
            ForEach(constants.consecutiveSplit { $0.type != $1.type }) { sameTypeConstants in
                Spacer()
                ForEach(sameTypeConstants) { constant in
                    Property(constantName(constant.name, translated: translated))
                        .letDefined().public().static().type(ExtensionApi.convert(type: constant.type))
                        .assign(value: constantValue(from: constant.value))
                }.aligned(1)
            }
        }
    }
    
    /// Converts a valeu string such as `Vector2(inf, 0)` to `Vector2(.infinity, 0)` for example.
    private func constantValue(from string: String) -> String {
        guard let firstParenthesisIndex = string.firstIndex(of: "(") else {
            return string
        }
        
        return string.replacingOccurrences(of: "inf", with: ".infinity", range: firstParenthesisIndex..<string.endIndex)
    }
    
    private func constantName(_ name: String, translated: Bool) -> String {
        guard translated else {
            return name
        }
        
        let newName = NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
        return CodeLanguage.swift.protectNameIfKeyword(for: newName)
    }
    
    // MARK: Enum
    
    @CodeBuilder
    private func enumCode(translated: Bool) -> some SwiftCode {
        if let enums,
           !enums.isEmpty {
            Spacer()
            Mark(text: "Enums", isSeparator: true)
            for `enum` in enums {
                Spacer()
                `enum`.code(translated: translated)
            }
        }
    }
    
    // MARK: Bindings
    
    @CodeBuilder
    private func bindingsCode() -> some SwiftCode {
        Mark(text: "Bindings", isSeparator: true).padding(top: 1, bottom: 1)
        bindingsPropertiesCode()
        Spacer()
        
        setInitBindingsFunctionCode()
        setFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some SwiftCode {
        Property("interface").varDefined().static().internal().type("GDNativeInterface!").padding(bottom: 1)
        
        for constructor in constructors {
            Property(constructorPtrName(index: constructor.index))
                .varDefined().private().static().type("GDNativePtrConstructor!")
        }
        if hasDestructor {
            Property(destructorPtrName()).varDefined().private().static().type("GDNativePtrDestructor!")
        }
        
        if let methods {
            for method in methods {
                Property(methodPtrName(methodName: method.name))
                    .varDefined().private().static().type("GDNativePtrBuiltInMethod!")
            }
        }
        
        for op in operators {
            Property(operatorPtrName(for: op))
                .varDefined().private().static().type("GDNativePtrOperatorEvaluator!")
        }
    }
    
    @CodeBuilder
    private func setInitBindingsFunctionCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
Sets all the init bindings and the deinit (if applicable) used to communicate with Godot, as well as the static `interface` property.

This function must be called before the creation of any `\(name)` instance since the bindings will be needed
for any initialization.

This function should only called by the `GodotLibrary`.
"""
        }
        Func(name: "setInitBindings", parameters: .named("interface", type: "GDNativeInterface", label: .name("with"))) {
            Property("self.interface").assign(value: "interface")
            
            Spacer()
            
            for constructor in constructors {
                Property(constructorPtrName(index: constructor.index))
                    .assign(value: "interface.variant_get_ptr_constructor(\(godotVariantType), \(constructor.index))")
            }
            
            if hasDestructor {
                Property(destructorPtrName())
                    .assign(value: "interface.variant_get_ptr_destructor(\(godotVariantType))")
            }
        }.public().static()
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
Sets all the function bindings and operators used to communicate with Godot.

This function should only called by the `GodotLibrary`.
"""
        }
        Func(name: "setFunctionBindings") {
            if let methods {
                Property("_method_name").varDefined().type("StringName!")
                for method in methods {
                    Property("_method_name").assign(value: "\"\(method.name)\"")
                    "_method_name.withUnsafeNativePointer { _name_ptr in"
                    Property(methodPtrName(methodName: method.name))
                        .assign(value: "interface.variant_get_ptr_builtin_method(\(godotVariantType), _name_ptr, \(method.hash))")
                        .indentation()
                    "}"
                }
            }
            
            Spacer()
            
            for op in operators {
                Property(operatorPtrName(for: op))
                    .assign(value: "interface.variant_get_ptr_operator_evaluator(\(op.godotVariantOperation!), \(godotVariantType), \(ExtensionApi.godotVariantType(for: op.rightType)))")
            }
        }.public().static()
    }
    
    // MARK: Consturctor
    
    @CodeBuilder
    private func constructorsCode(translated: Bool) -> some SwiftCode {
        Spacer()
        Mark(text: "Init", isSeparator: true)
        for constructor in filteredConstructors() {
            Spacer()
            
            BindingInit(arguments: constructor.arguments, translated: translated) { formatted in
                // If the type is builtin, we need to make a temporary value
                // that will be modified by the Godot constructor.
                if ExtensionApi.isBuiltinBaseType(self.name) {
                    "var _temporary = \(self.name)()"
                    Spacer()
                }
                
                ObjectsPointersAccess(functionParameters: formatted.parameters, generatePointersArray: true) {
                    if ExtensionApi.isBuiltinBaseType(self.name) {
                        "withUnsafeMutablePointer(to: &_temporary) { self_ptr in"
                        ("Self." + constructorPtrName(index: constructor.index) + "(UnsafeMutableRawPointer(self_ptr), _accessPtr)").indentation()
                    } else {
                        "self.withUnsafeNativePointer { self_ptr in"
                        ("Self." + constructorPtrName(index: constructor.index) + "(self_ptr, _accessPtr)").indentation()
                    }
                    "}"
                }
                
                // If the type is builtin, we use the temporary value set it to self.
                if ExtensionApi.isBuiltinBaseType(self.name) {
                    Spacer()
                    "self = _temporary"
                }

            }.public()
        }
    }
    
    private func filteredConstructors() -> [ExtensionApi.BuiltinClass.Constructor] {
        self.constructors.filter { constructor in
            // If the type is not a base builtin type, then we need all the initializers.
            if !ExtensionApi.isBuiltinBaseType(self.name) {
                return true
            }
            
            // If the type is a base builtin type, then the `init()` is already coded.
            if constructor.arguments == nil || constructor.arguments?.isEmpty == true {
                return false
            }
            
            // If all the arguments inside the constructor are the same as the members of the BuiltinClass,
            // then the constructor is already coded since it is the base constructor.
            if let arguments = constructor.arguments {
                let constructorArgumentsNames = arguments.map { NamingConvention.snake.convert(string: $0.name, from: .camel) }
                if constructorArgumentsNames == ExtensionApi.builtinBaseConstructorArguments(forType: self.name) {
                    return false
                }
            }
            
            return true
        }
    }
    
    // MARK: Methods
    
    @CodeBuilder
    private func methodsCode(translated: Bool) -> some SwiftCode {
        if let methods,
           !methods.isEmpty {
            Spacer()
            Mark(text: "Functions", isSeparator: true)
            for method in methods {
                Spacer()
                method.code(methodPointerName: methodPtrName(methodName: method.name),
                            className: name,
                            translated: translated)
            }
        }
    }
    
    // MARK: Operators
    
    @CodeBuilder
    private func operatorsCode() -> some SwiftCode {
        if !operators.isEmpty {
            Spacer()
            Mark(text: "Operators", isSeparator: true)
            for op in operators {
                Spacer()
                op.code(className: name, operatorPtrName: operatorPtrName(for: op))
            }
        }
    }
    
    // MARK: Naming
    
    private var godotVariantType: String {
        ExtensionApi.godotVariantType(for: name)
    }
    
    private func constructorPtrName(index: Int) -> String {
        "_constructor\(index)"
    }
    
    private func destructorPtrName() -> String {
        "_destructor"
    }
    
    private func methodPtrName(methodName: String) -> String {
        "_method_binding_\(methodName)"
    }
    
    private func operatorPtrName(for op: Operator) -> String {
        guard var name = op.operationName else {
            return "ERROR"
        }
        
        name = "_operator_binding_" + name
        if let rightType = op.rightType {
            name += "_" + rightType
        }
        
        return name.lowercased()
    }
}
