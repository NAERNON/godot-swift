import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func bindingsCode() -> some Code {
        Mark("Bindings", isSeparator: true)
        
        bindingsPropertiesCode()
        setFunctionBindingsFunctionCode()
        setVirtualFunctionBindingsFunctionCode()
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
                    
                    return (name: method.name.baseName, hash: hash, ptrName: methodPtrName)
                }
                
                if !methodData.isEmpty {
                    bindingFunctionsCall(methodData)
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
    private func bindingFunctionsCall(_ methodData: [(name: String, hash: Int, ptrName: String)]) -> some Code {
        Let("_class_name").typed("StringName").assign("\"\(name.code())\"")
        Var("_method_name").typed("StringName!")
        
        PointersAccess(parameters: [.named("_class_name", type: .stringName, mutability: .const)]) { classPointerNames, _ in
            let classNamePointerName = classPointerNames[0]
            
            Stack {
                for method in methodData {
                    Group {
                        Property("_method_name").assign("\"\(method.name)\"")
                        Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                            Property(method.ptrName)
                                .assign("GodotExtension.shared.interface.classdb_get_method_bind(\(classNamePointerName), \(methodPointerName), \(method.hash))")
                        }
                    }
                }
            }
        }
    }
    
    @CodeBuilder
    private func setVirtualFunctionBindingsFunctionCode() -> some Code {
        Func(name: "setVirtualFunctionCalls", parameters: .named(
            "body",
            type: "(StringName, GDNativeExtensionClassCallVirtual) -> Void",
            label: .hidden
        )) {
            if !isRootClass {
                "super.setVirtualFunctionCalls(body)"
                Space()
            }
            
            if let methods {
                let virtualMethods = methods.filter { $0.isVirtual }
                if !virtualMethods.isEmpty {
                    Stack {
                        Var("_method_name").typed("StringName!")
                        
                        for method in virtualMethods {
                            virtualFunctionCall(method)
                        }
                    }
                }
            }
        }
        .class()
        .override(!isRootClass)
        .internal()
        .documentation {
            "Sets all the virtual function bindings used to communicate with Godot."
        }
    }
    
    @CodeBuilder
    private func virtualFunctionCall(_ method: Method) -> some Code {
        Group {
            Property("_method_name").assign("\"\(method.name.baseName)\"")
            "body(_method_name, { instancePtr, args, returnPtr in"
            Group {
                Guard(condition: "let instancePtr" + (method.arguments == nil ? "" : ", let args")) {
                    Return()
                }
                
                Let("instance")
                    .assign("Unmanaged<\(name.code())>.fromOpaque(instancePtr).takeUnretainedValue()")
                
                "instance.".suffix {
                    method.functionCallCode(
                        definedIndise: name,
                        breakLineOnArguments: true,
                        withParameters: method.arguments?.enumerated().map { (index, _) in
                            "functionArgument(fromArgs: args, at: \(index))"
                        } ?? []
                    )
                }
            }.indent()
            "})"
        }
    }
}