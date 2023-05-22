import Foundation
import CodeGenerator
import CodeTranslator

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func bindingsCode() -> some Code {
        Mark("Bindings", isSeparator: true)
        
        bindingsPropertiesCode()
        setInitBindingsFunctionCode()
        setFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some Code {
        Container {
            ForEach(constructors) { constructor in
                Var(constructor.godotConstructorPtrName).static().private().typed("GDExtensionPtrConstructor!")
            }
            
            if hasDestructor {
                Var(godotDestructorPtrName).static().private().typed("GDExtensionPtrDestructor!")
            }
        }
        
        Container {
            if indexingReturnType != nil {
                Var(godotIndexedSetterPtrName).static().private().typed("GDExtensionPtrIndexedSetter!")
                Var(godotIndexedGetterPtrName).static().private().typed("GDExtensionPtrIndexedGetter!")
            }
            
            if isKeyed {
                Var(godotKeyedSetterPtrName).static().private().typed("GDExtensionPtrKeyedSetter!")
                Var(godotKeyedGetterPtrName).static().private().typed("GDExtensionPtrKeyedGetter!")
                Var(godotKeyedCheckerPtrName).static().private().typed("GDExtensionPtrKeyedChecker!")
            }
            
            if let methods {
                ForEach(methods) { method in
                    Var(method.godotMethodPtrName)
                        .static().private().typed("GDExtensionPtrBuiltInMethod!")
                }
            }
            
            ForEach(operators) { op in
                Var(op.godotOperatorPtrName)
                    .static().private().typed("GDExtensionPtrOperatorEvaluator!")
            }
        }
    }
    
    @CodeBuilder
    private func setInitBindingsFunctionCode() -> some Code {
        Func(name: "setInitBindings") {
            ForEach(constructors) { constructor in
                Property(constructor.godotConstructorPtrName)
                    .assign("GodotExtension.shared.interface.variant_get_ptr_constructor(\(godotVariantType), \(constructor.index))")
            }
            
            if hasDestructor {
                Property(godotDestructorPtrName)
                    .assign("GodotExtension.shared.interface.variant_get_ptr_destructor(\(godotVariantType))")
            }
        }
        .static()
        .internal()
        .documentation {
"""
Sets all the init bindings and the deinit (if applicable) used to communicate with Godot.

This function must be called before the creation of any `\(name.code())` instance since the bindings will be needed
for any initialization.
"""
        }
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some Code {
        Func(name: "setFunctionBindings") {
            Stack {
                Container {
                    if indexingReturnType != nil {
                        Property(godotIndexedSetterPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_indexed_setter(\(godotVariantType))")
                        Property(godotIndexedGetterPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_indexed_getter(\(godotVariantType))")
                    }
                }
                
                Container {
                    if isKeyed {
                        Property(godotKeyedSetterPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_keyed_setter(\(godotVariantType))")
                        Property(godotKeyedGetterPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_keyed_getter(\(godotVariantType))")
                        Property(godotKeyedCheckerPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_keyed_checker(\(godotVariantType))")
                    }
                }
                
                if let methods {
                    Container {
                        Var("_method_name").typed("StringName!")
                        ForEach(methods) { method in
                            Property("_method_name").assign("\"\(method.name.baseName)\"")
                            Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                                Property(method.godotMethodPtrName)
                                    .assign("GodotExtension.shared.interface.variant_get_ptr_builtin_method(\(godotVariantType), \(methodPointerName), \(method.hash))")
                            }
                        }
                    }
                }
                
                Container {
                    ForEach(operators) { op in
                        Property(op.godotOperatorPtrName)
                            .assign("GodotExtension.shared.interface.variant_get_ptr_operator_evaluator(\(op.godotVariantOperation!), \(godotVariantType), \(op.rightType.godotVariantType))")
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
}
