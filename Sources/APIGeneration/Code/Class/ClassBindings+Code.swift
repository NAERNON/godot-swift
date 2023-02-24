import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func bindingsCode() -> some Code {
        Mark("Bindings", isSeparator: true)
        
        bindingsPropertiesCode()
        setFunctionBindingsFunctionCode()
//        setVirtualFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some Code {
        if let methods {
            Group {
                for method in methods {
                    if let methodPtrName = method.godotMethodPtrName {
                        Var(methodPtrName)
                            .static().private().typed("GDNativeMethodBindPtr!")
                    }
                }
            }
        }
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some Code {
        Func(name: "setFunctionBindings") {
            if let methods {
                let methodData: [(name: String, hash: Int, ptrName: String)] = methods.compactMap { method in
                    guard let hash = method.hash,
                          let methodPtrName = method.godotMethodPtrName else {
                        return nil
                    }
                    
                    return (name: method.name.godotName, hash: hash, ptrName: methodPtrName)
                }
                
                if !methodData.isEmpty {
                    Let("_class_name").typed("StringName").assign("\"\(name.code())\"")
                    Var("_method_name").typed("StringName!")
                    
                    ObjectsPointersAccess(parameters: [.named("_class_name", type: .stringName, mutability: .const)]) { classPointerNames in
                        let classNamePointerName = classPointerNames[0]
                        
                        for method in methodData {
                            Property("_method_name").assign("\"\(method.name)\"")
                            Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                                Property(method.ptrName)
                                    .assign("GodotInterface.native.classdb_get_method_bind(\(classNamePointerName), \(methodPointerName), \(method.hash))")
                            }
                        }
                    }
                }
            }
        }
        .class()
        .override(!isRootClass)
        .internal()
        .documentation {
            "Sets all the function bindings used to communicate with Godot."
        }
    }
    
    @CodeBuilder
    private func setVirtualFunctionBindingsFunctionCode() -> some Code {
        Func(name: "setVirtualFunctionCalls", parameters: .named("appendCall",
                                                                 type: "(StringName, GDNativeExtensionClassCallVirtual) -> Void",
                                                                 label: .hidden))
        {
            if let methods {
                let virtualMethods = methods.filter { $0.isVirtual }
                if !virtualMethods.isEmpty {
                    Var("_method_name").typed("StringName!")
                    for method in virtualMethods {
                        Property("_method_name").assign("\"\(method.name.godotName)\"")
                        "appendCall(_method_name, { instancePtr, args, returnPtr in"
                        Group {
                            Guard(condition: "let instancePtr, let args") {
                                Return()
                            }
                            
                            Let("instance")
                                .assign("Unmanaged<\(name.code())>.fromOpaque(instancePtr).takeUnretainedValue()")
                            
                            GodotBindingFuncCall(method, type: name)
                        }.indent()
                        "})"
                    }
                }
            }
        }
        .internal()
        .class()
        .override(!isRootClass)
        .documentation {
            "Sets all the virtual function bindings used to communicate with Godot."
        }
    }
}
