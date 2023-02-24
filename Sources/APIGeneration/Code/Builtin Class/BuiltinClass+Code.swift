import Foundation
import CodeGenerator
import CodeTranslation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int) -> some Code {
        if name.isBuiltinBaseValueType {
            Extension(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }
        } else {
            Struct(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }.public()
        }
        
        Space()
        
        customDebugStringConvertibleExtensionCode()
    }
    
    @CodeBuilder
    private func insideStructOrExtensionCode(classSize: Int) -> some Code {
        Stack {
            constantsCode()
            enumCode()
            constructorsCode(classSize: classSize)
            operatorsCode()
            getterSetterCode()
            keyedCode()
            methodsCode()
            bindingsCode()
        }
        
        if name.isBuiltinOpaqueValueType {
            Space()
            
            Stack {
                replaceOpaqueValueCode()
                nativePtrCode()
            }
        }
    }
    
    // MARK: Native Opaque
    
    @CodeBuilder
    private func replaceOpaqueValueCode() -> some Code {
        Func(name: "replaceOpaqueValueIfNecessary") {
            // We find a constructor that will duplicate our value.
            Guard(condition: "!isKnownUniquelyReferenced(&opaque)") {
                Return()
            }
            
            Space()
            
            Property("tmp").letDefined().assign("Self(self)")
            Property("opaque").selfDefined().assign("tmp.opaque")
        }
        .mutating()
        .private()
        .documentation {
"""
When a function modifies the opaque array or any value associated,
we should check that the `Opaque` value is uniquely referenced and if not,
duplicate its value.
"""
        }
    }
    
    @CodeBuilder
    private func nativePtrCode() -> some Code {
        Var("opaque").typed("Opaque").privateSet()
        
        Func(name: "withUnsafeNativePointer", parameters: .named("body", type: "(GDNativeTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }
        .public()
        .documentation {
            "Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`."
        }
        
        Func(name: "opaqueIsZero", returnType: "Bool") {
            "opaque.isZero()"
        }.internal()
            
        Var("opaqueDescription").typed("Swift.String").curlyBraces {
            "opaque.debugDescription"
        }.internal()
    }
    
    // MARK: Constants
    
    @CodeBuilder
    private func constantsCode() -> some Code {
        if let constants,
           !constants.isEmpty {
            Mark("Constants", isSeparator: true)
            
            Group {
                ForEach(constants.consecutiveSplit { $0.type != $1.type }) { sameTypeConstants in
                    ForEach(sameTypeConstants) { constant in
                        Let(constantName(constant.name))
                            .static().public().typed(constant.type.toSwift())
                            .assign(constant.type.instantationCode(forValue: constant.value))
                    }.align(offset: 1)
                }
            }
        }
    }
    
    private func constantName(_ name: String) -> String {
        let newName = NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
        return CodeLanguage.swift.protectNameIfKeyword(for: newName)
    }
    
    // MARK: Enum
    
    @CodeBuilder
    private func enumCode() -> some Code {
        if let enums,
           !enums.isEmpty {
            Mark("Enums", isSeparator: true)
            for `enum` in enums {
                `enum`.code(definedInside: name)
            }
        }
    }
    
    // MARK: Bindings
    
    @CodeBuilder
    private func bindingsCode() -> some Code {
        Mark("Bindings", isSeparator: true)
        
        bindingsPropertiesCode()
        setInitBindingsFunctionCode()
        setFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some Code {
        Group {
            for constructor in constructors {
                Var(constructor.godotConstructorPtrName).static().private().typed("GDNativePtrConstructor!")
            }
            
            if hasDestructor {
                Var(godotDestructorPtrName).static().private().typed("GDNativePtrDestructor!")
            }
        }
        
        Group {
            if indexingReturnType != nil {
                Var(godotIndexedSetterPtrName).static().private().typed("GDNativePtrIndexedSetter!")
                Var(godotIndexedGetterPtrName).static().private().typed("GDNativePtrIndexedGetter!")
            }
            
            if isKeyed {
                Var(godotKeyedSetterPtrName).static().private().typed("GDNativePtrKeyedSetter!")
                Var(godotKeyedGetterPtrName).static().private().typed("GDNativePtrKeyedGetter!")
                Var(godotKeyedCheckerPtrName).static().private().typed("GDNativePtrKeyedChecker!")
            }
            
            if let methods {
                for method in methods {
                    Var(method.godotMethodPtrName)
                        .static().private().typed("GDNativePtrBuiltInMethod!")
                }
            }
            
            for op in operators {
                Var(op.godotOperatorPtrName)
                    .static().private().typed("GDNativePtrOperatorEvaluator!")
            }
        }
    }
    
    @CodeBuilder
    private func setInitBindingsFunctionCode() -> some Code {
        Func(name: "setInitBindings") {
            for constructor in constructors {
                Property(constructor.godotConstructorPtrName)
                    .assign("GodotInterface.native.variant_get_ptr_constructor(\(godotVariantType), \(constructor.index))")
            }
            
            if hasDestructor {
                Property(godotDestructorPtrName)
                    .assign("GodotInterface.native.variant_get_ptr_destructor(\(godotVariantType))")
            }
        }
        .static()
        .internal()
        .documentation {
"""
Sets all the init bindings and the deinit (if applicable) used to communicate with Godot.

This function must be called before the creation of any `\(name.toSwift())` instance since the bindings will be needed
for any initialization.
"""
        }
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some Code {
        Func(name: "setFunctionBindings") {
            Stack {
                Group {
                    if indexingReturnType != nil {
                        Property(godotIndexedSetterPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_indexed_setter(\(godotVariantType))")
                        Property(godotIndexedGetterPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_indexed_getter(\(godotVariantType))")
                    }
                }
                
                Group {
                    if isKeyed {
                        Property(godotKeyedSetterPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_keyed_setter(\(godotVariantType))")
                        Property(godotKeyedGetterPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_keyed_getter(\(godotVariantType))")
                        Property(godotKeyedCheckerPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_keyed_checker(\(godotVariantType))")
                    }
                }
                
                if let methods {
                    Group {
                        Var("_method_name").typed("StringName!")
                        for method in methods {
                            Property("_method_name").assign("\"\(method.name.godotName)\"")
                            Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                                Property(method.godotMethodPtrName)
                                    .assign("GodotInterface.native.variant_get_ptr_builtin_method(\(godotVariantType), \(methodPointerName), \(method.hash))")
                            }
                        }
                    }
                }
                
                Group {
                    for op in operators {
                        Property(op.godotOperatorPtrName)
                            .assign("GodotInterface.native.variant_get_ptr_operator_evaluator(\(op.godotVariantOperation!), \(godotVariantType), \(op.rightType.godotVariantType))")
                    }
                }
            }
        }
        .static()
        .internal()
        .documentation {
"""
Sets all the function bindings and operators used to communicate with Godot.
"""
        }
    }
    
    // MARK: Constructors
    
    @CodeBuilder
    private func constructorsCode(classSize: Int) -> some Code {
        Mark("Init", isSeparator: true)
        
        if name.isBuiltinOpaqueValueType {
            Init(parameters: .named("opaque", type: "Opaque")) {
                Property("opaque").selfDefined().assign("opaque")
            }.private()
        }
        
        for constructor in constructors {
            constructor.code(type: name,
                             classSize: classSize,
                             hasDestructor: hasDestructor,
                             godotDestructorPtrName: godotDestructorPtrName)
        }
    }
    
    // MARK: Methods
    
    @CodeBuilder
    private func methodsCode() -> some Code {
        if let methods,
           !methods.isEmpty {
            Mark("Functions", isSeparator: true)
            
            for method in methods {
                method.code(type: name)
            }
        }
    }
    
    // MARK: Operators
    
    @CodeBuilder
    private func operatorsCode() -> some Code {
        if !operators.isEmpty {
            Mark("Operators", isSeparator: true)
            for op in operators {
                op.code(type: name)
            }
        }
    }
    
    // MARK: Getter/Setter
    
    @CodeBuilder
    private func getterSetterCode() -> some Code {
        if let indexingReturnType, !isKeyed {
            // Getter/setters are internal, and public extensions should be
            // made to generate the subscripts.
            Mark("Getter/Setter", isSeparator: true)
            
            let indexingType = indexingReturnType.toSwift(definedInside: name)
            
            Func(name: "_getValue",
                 parameters: .named("index", type: "GDNativeInt", label: "at"),
                 returnType: indexingType) {
                Stack {
                    indexingReturnType.temporaryInitializerCode(propertyName: "__returnValue", definedInside: name)
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("__returnValue", type: indexingReturnType, mutability: .mutable),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "Self.__indexed_getter(\(pointerNames[1]), index, \(pointerNames[0]))"
                    }
                    
                    indexingReturnType.temporaryReturnCode(propertyName: "__returnValue", definedInside: name)
                }
            }.internal()
            
            Func(name: "_setValue",
                 parameters: [.named("value", type: indexingType, label: .hidden),
                              .named("index", type: "GDNativeInt", label: "at")])
            {
                Stack {
                    if self.name.isBuiltinOpaqueValueType {
                        "replaceOpaqueValueIfNecessary()"
                    }
                    
                    ObjectsPointersAccess(parameters: [.named("value", type: indexingReturnType, mutability: .const),
                                                       .named("self", type: self.name, mutability: .mutable)])
                    { pointerNames in
                        "Self.__indexed_setter(\(pointerNames[1]), index, \(pointerNames[0]))"
                    }
                }
            }.mutating().internal()
        }
    }
    
    // MARK: Keyed
    
    @CodeBuilder
    private func keyedCode() -> some Code {
        if isKeyed {
            // Keyed functions are internal, and public extensions should be
            // made to generate the subscripts.
            Mark("Keyed", isSeparator: true)
                        
            Func(name: "_getValue",
                 parameters: .named("key", type: "Variant", label: "forKey"),
                 returnType: "Variant") {
                Stack {
                    Var("__returnValue").assign("Variant()")
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("__returnValue", type: .variant, mutability: .mutable),
                                             .named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "Self.__keyed_getter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                    }
                    
                    Return("__returnValue")
                }
            }.internal()
            
            Func(name: "_set",
                 parameters: [.named("value", type: "Variant"),
                              .named("key", type: "Variant", label: "forKey")])
            {
                Stack {
                    "replaceOpaqueValueIfNecessary()"
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("value", type: .variant, mutability: .const),
                                             .named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .mutable)]
                    ) { pointerNames in
                        "Self.__keyed_setter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                    }
                }
            }.mutating().internal()
            
            Func(name: "_check",
                 parameters: [.named("key", type: "Variant")],
                 returnType: "Bool") {
                Stack {
                    Var("keyCheck").assign("UInt32()")
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "keyCheck = Self.__keyed_checker(\(pointerNames[1]), \(pointerNames[0]))"
                    }
                    
                    Return("keyCheck != 0")
                }
            }.internal()
        }
    }
    
    // MARK: Custom Debug String Convertible
    
    private func customDebugStringConvertibleExtensionCode() -> some Code {
        Extension(name.toSwift(), extensions: ["CustomDebugStringConvertible"]) {
            Var("debugDescription").public().typed("Swift.String").curlyBraces {
                "Variant(self).debugDescription"
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
