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
            }.open()
        }
    }
    
    @CodeBuilder
    private func insideClassOrExtensionCode() -> some SwiftCode {
        if !isRootClass {
            initsCode()
        }
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
    
    // MARK: Inits
    
    @CodeBuilder
    private func initsCode() -> some SwiftCode {
        Mark(text: "Inits", isSeparator: true).padding(top: 1, bottom: 1)
        
        Init() {
            "super.init()"
        }.public().override()
        
        Spacer()
        
        Func(name: "instanceBindingsCallbacks", returnType: "GDNativeInstanceBindingCallbacks") {
"""
if isExtentionClass() {
    // When the class is an extension class, we should not generate any binding.
    
    return GDNativeInstanceBindingCallbacks { token, instance in
        return nil
    } free_callback: { token, instance, bindings in
        // Nothing to do
    } reference_callback: { token, instance, reference in
        return 1
    }
} else {
    return GDNativeInstanceBindingCallbacks { token, instance in
        return Unmanaged.passRetained(\(name.toSwift())(nativeObjectPtr: instance!)).toOpaque()
    } free_callback: { token, instance, bindings in
        Unmanaged<\(name.toSwift())>.fromOpaque(instance!).release()
    } reference_callback: { token, instance, reference in
        return 1
    }
}
"""
        }.internal().override().class()
        
        Spacer()
        
        Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
            "super.init(nativeObjectPtr: nativeObjectPtr)"
        }.internal().override()
    }
}
