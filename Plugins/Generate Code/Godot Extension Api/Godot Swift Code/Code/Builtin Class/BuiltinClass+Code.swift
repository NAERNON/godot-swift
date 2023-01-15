import Foundation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int) -> some SwiftCode {
        if name.isBuiltinBaseValueType {
            Extension(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }
        } else {
            Struct(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }.public()
        }
        
        customDebugStringConvertibleExtensionCode()
    }
    
    @CodeBuilder
    private func insideStructOrExtensionCode(classSize: Int) -> some SwiftCode {
        Group {
            constantsCode()
            enumCode()
            constructorsCode(classSize: classSize)
            operatorsCode()
            getterSetterCode()
            keyedCode()
            methodsCode()
        }
        
        bindingsCode()
        if name.isBuiltinOpaqueValueType {
            Spacer()
            replaceOpaqueValueCode()
            nativePtrCode()
        }
    }
    
    // MARK: Native Opaque
    
    @CodeBuilder
    private func replaceOpaqueValueCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
When a function modifies the opaque array or any value associated,
we should check that the `Opaque` value is uniquely referenced and if not,
duplicate its value.
"""
        }
        Func(name: "replaceOpaqueValueIfNecessary") {
            // We find a constructor that will duplicate our value.
            Guard(condition: "!isKnownUniquelyReferenced(&opaque)") {
                Return()
            }
                        
            Spacer()
            Property("tmp").letDefined().assign(value: "Self(self)")
            Property("opaque").selfDefined().assign(value: "tmp.opaque")
        }.private().mutating()
    }
    
    @CodeBuilder
    private func nativePtrCode() -> some SwiftCode {
        Property("opaque").varDefined().type("Opaque").private().padding(top: 1, bottom: 1)
        
        Comment(style: .doc) {
            "Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`."
        }
        Func(name: "withUnsafeNativePointer", parameters: .named("body", type: "(GDNativeTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }.public()
        
        Func(name: "opaqueIsZero", returnType: "Bool") {
            "opaque.isZero()"
        }.internal().topPadding()
            
        Var("opaqueDescription", type: "Swift.String") {
            "opaque.debugDescription"
        }.internal().topPadding()
    }
    
    // MARK: Constants
    
    @CodeBuilder
    private func constantsCode() -> some SwiftCode {
        if let constants,
           !constants.isEmpty {
            Mark(text: "Constants", isSeparator: true).padding(top: 1)
            ForEach(constants.consecutiveSplit { $0.type != $1.type }) { sameTypeConstants in
                Spacer()
                ForEach(sameTypeConstants) { constant in
                    Property(constantName(constant.name))
                        .letDefined().public().static().type(constant.type.toSwift())
                        .assign(value: constant.type.instantationCode(forValue: constant.value))
                }.aligned(1)
            }
        }
    }
    
    private func constantName(_ name: String) -> String {
        let newName = NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
        return CodeLanguage.swift.protectNameIfKeyword(for: newName)
    }
    
    // MARK: Enum
    
    @CodeBuilder
    private func enumCode() -> some SwiftCode {
        if let enums,
           !enums.isEmpty {
            Spacer()
            Mark(text: "Enums", isSeparator: true)
            for `enum` in enums {
                Spacer()
                `enum`.code(definedInside: name)
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
        Spacer()
        setFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some SwiftCode {
        for constructor in constructors {
            Property(constructor.godotConstructorPtrName)
                .varDefined().private().static().type("GDNativePtrConstructor!")
        }
        if hasDestructor {
            Property(godotDestructorPtrName).varDefined().private().static().type("GDNativePtrDestructor!")
        }
        
        if indexingReturnType != nil {
            Property(godotIndexedSetterPtrName).varDefined().private().static().type("GDNativePtrIndexedSetter!")
            Property(godotIndexedGetterPtrName).varDefined().private().static().type("GDNativePtrIndexedGetter!")
        }
        
        if isKeyed {
            Property(godotKeyedSetterPtrName).varDefined().private().static().type("GDNativePtrKeyedSetter!")
            Property(godotKeyedGetterPtrName).varDefined().private().static().type("GDNativePtrKeyedGetter!")
            Property(godotKeyedCheckerPtrName).varDefined().private().static().type("GDNativePtrKeyedChecker!")
        }
        
        if let methods {
            for method in methods {
                Property(method.godotMethodPtrName	)
                    .varDefined().private().static().type("GDNativePtrBuiltInMethod!")
            }
        }
        
        for op in operators {
            Property(op.godotOperatorPtrName)
                .varDefined().private().static().type("GDNativePtrOperatorEvaluator!")
        }
    }
    
    @CodeBuilder
    private func setInitBindingsFunctionCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
Sets all the init bindings and the deinit (if applicable) used to communicate with Godot.

This function must be called before the creation of any `\(name.toSwift())` instance since the bindings will be needed
for any initialization.
"""
        }
        Func(name: "setInitBindings") {
            for constructor in constructors {
                Property(constructor.godotConstructorPtrName)
                    .assign(value: "GodotInterface.native.variant_get_ptr_constructor(\(godotVariantType), \(constructor.index))")
            }
            
            if hasDestructor {
                Property(godotDestructorPtrName)
                    .assign(value: "GodotInterface.native.variant_get_ptr_destructor(\(godotVariantType))")
            }
        }.internal().static()
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
Sets all the function bindings and operators used to communicate with Godot.
"""
        }
        Func(name: "setFunctionBindings") {
            if indexingReturnType != nil {
                Property(godotIndexedSetterPtrName).assign(value: "GodotInterface.native.variant_get_ptr_indexed_setter(\(godotVariantType))")
                Property(godotIndexedGetterPtrName).assign(value: "GodotInterface.native.variant_get_ptr_indexed_getter(\(godotVariantType))")
                
                Spacer()
            }
            
            if isKeyed {
                Property(godotKeyedSetterPtrName).assign(value: "GodotInterface.native.variant_get_ptr_keyed_setter(\(godotVariantType))")
                Property(godotKeyedGetterPtrName).assign(value: "GodotInterface.native.variant_get_ptr_keyed_getter(\(godotVariantType))")
                Property(godotKeyedCheckerPtrName).assign(value: "GodotInterface.native.variant_get_ptr_keyed_checker(\(godotVariantType))")
                
                Spacer()
            }
            
            if let methods {
                Property("_method_name").varDefined().type("StringName!")
                for method in methods {
                    Property("_method_name").assign(value: "\"\(method.name.godotName)\"")
                    Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                        Property(method.godotMethodPtrName)
                            .assign(value: "GodotInterface.native.variant_get_ptr_builtin_method(\(godotVariantType), \(methodPointerName), \(method.hash))")
                    }
                }
            }
            
            Spacer()
            
            for op in operators {
                Property(op.godotOperatorPtrName)
                    .assign(value: "GodotInterface.native.variant_get_ptr_operator_evaluator(\(op.godotVariantOperation!), \(godotVariantType), \(op.rightType.godotVariantType))")
            }
        }.internal().static()
    }
    
    // MARK: Constructors
    
    @CodeBuilder
    private func constructorsCode(classSize: Int) -> some SwiftCode {
        Spacer()
        Mark(text: "Init", isSeparator: true)
        
        if name.isBuiltinOpaqueValueType {
            Spacer()
            Init(parameters: .named("opaque", type: "Opaque")) {
                Property("opaque").selfDefined().assign(value: "opaque")
            }.private()
        }
        
        for constructor in constructors {
            Spacer()
            constructor.code(type: name,
                             classSize: classSize,
                             hasDestructor: hasDestructor,
                             godotDestructorPtrName: godotDestructorPtrName)
        }
    }
    
    // MARK: Methods
    
    @CodeBuilder
    private func methodsCode() -> some SwiftCode {
        if let methods,
           !methods.isEmpty {
            Spacer()
            Mark(text: "Functions", isSeparator: true)
            
            for method in methods {
                Spacer()
                method.code(type: name)
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
                op.code(type: name)
            }
        }
    }
    
    // MARK: Getter/Setter
    
    @CodeBuilder
    private func getterSetterCode() -> some SwiftCode {
        if let indexingReturnType, !isKeyed {
            // Getter/setters are internal, and public extensions should be
            // made to generate the subscripts.
            Spacer()
            Mark(text: "Getter/Setter", isSeparator: true)
            Spacer()
            
            let indexingType = indexingReturnType.toSwift(definedInside: name)
            
            Func(name: "_getValue",
                 parameters: .named("index", type: "GDNativeInt", label: "at"),
                 returnType: indexingType) {
                indexingReturnType.temporaryInitializerCode(propertyName: "__returnValue", definedInside: name)
                
                ObjectsPointersAccess(parameters:
                                        [.named("__returnValue", type: indexingReturnType, mutability: .mutable),
                                         .named("self", type: self.name, mutability: .const)]
                ) { pointerNames in
                    "Self.__indexed_getter(\(pointerNames[1]), index, \(pointerNames[0]))"
                }.padding(top: 1, bottom: 1)
                
                indexingReturnType.temporaryReturnCode(propertyName: "__returnValue", definedInside: name)
            }.internal()
            
            Spacer()
            
            Func(name: "_setValue",
                 parameters: [.named("value", type: indexingType, label: .hidden),
                              .named("index", type: "GDNativeInt", label: "at")])
            {
                if self.name.isBuiltinOpaqueValueType {
                    "replaceOpaqueValueIfNecessary()"
                    Spacer()
                }
                
                ObjectsPointersAccess(parameters: [.named("value", type: indexingReturnType, mutability: .const),
                                                   .named("self", type: self.name, mutability: .mutable)])
                { pointerNames in
                    "Self.__indexed_setter(\(pointerNames[1]), index, \(pointerNames[0]))"
                }
            }.internal().mutating()
        }
    }
    
    // MARK: Keyed
    
    @CodeBuilder
    private func keyedCode() -> some SwiftCode {
        if isKeyed {
            // Keyed functions are internal, and public extensions should be
            // made to generate the subscripts.
            Spacer()
            Mark(text: "Keyed", isSeparator: true)
            Spacer()
                        
            Func(name: "_getValue",
                 parameters: .named("key", type: "Variant", label: "forKey"),
                 returnType: "Variant") {
                Property("__returnValue").letDefined().assign(value: "Variant()")
                
                ObjectsPointersAccess(parameters:
                                        [.named("__returnValue", type: .variant, mutability: .mutable),
                                         .named("key", type: .variant, mutability: .const),
                                         .named("self", type: self.name, mutability: .const)]
                ) { pointerNames in
                    "Self.__keyed_getter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                }.padding(top: 1, bottom: 1)
                
                Return("__returnValue")
            }.internal().bottomPadding()
            
            Func(name: "_set",
                 parameters: [.named("value", type: "Variant"),
                              .named("key", type: "Variant", label: "forKey")]) {
                "replaceOpaqueValueIfNecessary()"
                
                ObjectsPointersAccess(parameters:
                                        [.named("value", type: .variant, mutability: .const),
                                         .named("key", type: .variant, mutability: .const),
                                         .named("self", type: self.name, mutability: .mutable)]
                ) { pointerNames in
                    "Self.__keyed_setter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                }.padding(top: 1)
            }.internal().mutating().bottomPadding()
            
            Func(name: "_check",
                 parameters: [.named("key", type: "Variant")],
                 returnType: "Bool") {
                Property("keyCheck").varDefined().assign(value: "UInt32()")
                
                ObjectsPointersAccess(parameters:
                                        [.named("key", type: .variant, mutability: .const),
                                         .named("self", type: self.name, mutability: .const)]
                ) { pointerNames in
                    "keyCheck = Self.__keyed_checker(\(pointerNames[1]), \(pointerNames[0]))"
                }.padding(top: 1, bottom: 1)
                
                Return("keyCheck != 0")
            }.internal()
        }
    }
    
    // MARK: Custom Debug String Convertible
    
    @CodeBuilder
    private func customDebugStringConvertibleExtensionCode() -> some SwiftCode {
        Spacer()
        Extension(name.toSwift(), extensions: ["CustomDebugStringConvertible"]) {
            Property("debugDescription").varDefined().public().type("Swift.String").computed {
                "Variant(from: self).debugDescription"
            }
        }
    }
    
    // MARK: Naming
    
    private var godotVariantType: String {
        name.godotVariantType
    }
    
    private var godotDestructorPtrName: String {
        "__destructor"
    }
    
    private var godotIndexedSetterPtrName: String {
        "__indexed_setter"
    }
    
    private var godotIndexedGetterPtrName: String {
        "__indexed_getter"
    }
    
    private var godotKeyedSetterPtrName: String {
        "__keyed_setter"
    }
    
    private var godotKeyedGetterPtrName: String {
        "__keyed_getter"
    }
    
    private var godotKeyedCheckerPtrName: String {
        "__keyed_checker"
    }
}
