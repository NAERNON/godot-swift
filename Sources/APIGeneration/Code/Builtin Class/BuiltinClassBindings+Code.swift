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

This function must be called before the creation of any `\(name.code())` instance since the bindings will be needed
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
}
