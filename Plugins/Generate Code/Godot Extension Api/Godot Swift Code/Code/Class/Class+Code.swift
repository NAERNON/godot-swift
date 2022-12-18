import Foundation

#warning("isRefcounted and isInstantiable isVararg not used from ExtensionApi.Class. Is it ok or am I dumb ?")

extension ExtensionApi.Class {
    var isRootClass: Bool { name == "Object" }
    
    @CodeBuilder
    func code() -> some SwiftCode {
        let extensions = inherits == nil ? [] : [inherits!]
        
        if isRootClass {
            Extension(name.godotName) {
                insideClassOrExtensionCode()
            }
        } else {
            Class(name.godotName, extensions: extensions) {
                insideClassOrExtensionCode()
            }
        }
    }
    
    @CodeBuilder
    private func insideClassOrExtensionCode() -> some SwiftCode {
        enumCode()
        methodsCode()
        bindingsCode()
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
                `enum`.code()
            }
        }
    }
    
    // MARK: Bindings
    
    @CodeBuilder
    private func bindingsCode() -> some SwiftCode {
        Mark(text: "Bindings", isSeparator: true).padding(top: 1, bottom: 1)
        bindingsPropertiesCode()
        Spacer()
        setFunctionBindingsFunctionCode()
    }
    
    @CodeBuilder
    private func bindingsPropertiesCode() -> some SwiftCode {
        if let methods {
            for method in methods {
                Property(method.godotMethodPtrName    )
                    .varDefined().private().static().type("GDNativeMethodBindPtr!")
            }
        }
    }
    
    @CodeBuilder
    private func setFunctionBindingsFunctionCode() -> some SwiftCode {
        Comment(style: .doc) {
"""
Sets all the function bindings used to communicate with Godot.
"""
        }
        Func(name: isRootClass ? "setRootClassFunctionBindings" : "setFunctionBindings") {
            if let methods {
                Property("_class_name").letDefined().type("StringName").assign(value: "\"\(name.godotName)\"")
                Property("_method_name").varDefined().type("StringName!")
                
                ObjectsPointersAccess(parameters: [.named("_class_name", type: .stringName, mutability: .mutable)]) { classPointerNames in
                    let classNamePointerName = classPointerNames[0]
                    
                    for method in methods {
                        if let hash = method.hash {
                            Property("_method_name").assign(value: "\"\(method.name.godotName)\"")
                            Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                                Property(method.godotMethodPtrName)
                                    .assign(value: "GodotInterface.native.classdb_get_method_bind(\(classNamePointerName), \(methodPointerName), \(hash))")
                            }
                        } else if method.isVirtual {
                            "// Cannot retreive method \(method.name.godotName) binding because the method is virtual"
                        } else {
                            "// Cannot retreive method \(method.name.godotName) binding because no hash is provided"
                        }
                    }
                }
            }
        }.internal().class(!isRootClass).static(isRootClass).override(!isRootClass)
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
}
