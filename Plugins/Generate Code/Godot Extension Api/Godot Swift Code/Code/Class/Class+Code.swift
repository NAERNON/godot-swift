import Foundation

#warning("isRefcounted and isInstantiable, isVararg, isVirtual not used from ExtensionApi.Class. Is it ok or am I dumb ?")

extension ExtensionApi.Class {
    var isRootClass: Bool { name == "Object" }
    
    @CodeBuilder
    func code() -> some SwiftCode {
        Class(name.toSwift(), extensions: inherits == nil ? [] : [inherits!.toSwift()]) {
            initsCode()
            if isRootClass {
                isExtensionClassCode()
            }
            bindingsCallbackCode()
            enumCode()
            methodsCode()
            bindingsCode()
        }.open()
    }
    
    private var isRefCountedRootClass: Bool {
        name == "RefCounted"
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
    
    // MARK: Is extension class
    
    @CodeBuilder
    private func isExtensionClassCode() -> some SwiftCode {
#warning("Return true for all necessary classes")
        Spacer()
        Comment(style: .doc) {
"""
Returns a Boolean value indicating whether the class is an extension
of a base Godot class.

Every class inside the Godot target are not extension classes,
and all others should be.
"""
        }
        Func(name: "isExtentionClass", returnType: "Bool") {
            "false"
        }.open().class()
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
                if let methodPtrName = method.godotMethodPtrName {
                    Property(methodPtrName)
                        .varDefined().private().static().type("GDNativeMethodBindPtr!")
                }
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
                    Property("_class_name").letDefined().type("StringName").assign(value: "\"\(name.toSwift())\"")
                    Property("_method_name").varDefined().type("StringName!")
                    
                    ObjectsPointersAccess(parameters: [.named("_class_name", type: .stringName, mutability: .mutable)]) { classPointerNames in
                        let classNamePointerName = classPointerNames[0]
                        
                        for method in methodData {
                            Property("_method_name").assign(value: "\"\(method.name)\"")
                            Property("_method_name").pointerAccess(type: .stringName, mutability: .mutable) { methodPointerName in
                                Property(method.ptrName)
                                    .assign(value: "GodotInterface.native.classdb_get_method_bind(\(classNamePointerName), \(methodPointerName), \(method.hash))")
                            }
                        }
                    }
                }
            }
        }.internal().class().override(!isRootClass)
    }
    
    // MARK: Bindings callback
    
    @CodeBuilder
    private func bindingsCallbackCode() -> some SwiftCode {
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
        Unmanaged<\(name.toSwift())>.fromOpaque(instance!).takeRetainedValue().withUnsafeNativePointer { __ptr_self in
            GodotInterface.native.mem_free(__ptr_self)
        }
    } reference_callback: { token, instance, reference in
        return 1
    }
}
"""
        }.internal().override(!isRootClass).class()
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
                method.code(type: name, accessControl: methodsAccessControl)
            }
        }
    }
    
    private var methodsAccessControl: AccessControl {
        isRefCountedRootClass ? .private : .public
    }
    
    // MARK: Inits
    
    @CodeBuilder
    private func initsCode() -> some SwiftCode {
        Mark(text: "Inits", isSeparator: true).padding(top: 1, bottom: 1)
        
        if isRootClass {
            Property("nativeObjectPtr").varDefined().type("GDNativeObjectPtr")
                .internal().privateSet()
            Spacer()
#warning("Store in dictionary the StringNames for optimization ?")
            Init() {
"""
var nativeObjectPtr: GDNativeObjectPtr!
StringName(swiftString: Self.classNameForGodot()).withUnsafeNativePointer { namePtr in
    nativeObjectPtr = GodotInterface.native.classdb_construct_object(namePtr)!
}

self.nativeObjectPtr = nativeObjectPtr
"""
            }.public()
        } else if isRefCountedRootClass {
            Property("_isReferenced").varDefined().private().type("Bool")
            
            Spacer()
            
            Init() {
                Property("_isReferenced").assign(value: "true")
                "super.init()"
                Spacer()
                "_ = initRef()"
            }.public().override()
            
            Spacer()
            
            Deinit {
                Guard(condition: "_isReferenced") {
                    Return()
                }
                
                Spacer()
                
                If("unreference()") {
                    Property("self").pointerAccess(type: name, mutability: .constMutablePointer) { pointerName in
                        "GodotInterface.native.mem_free(\(pointerName))"
                    }
                }
            }
        } else {
            Init() {
                "super.init()"
            }.public().override()
        }
        
        Spacer()
        
        if isRootClass {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                Property("nativeObjectPtr").selfDefined().assign(value: "nativeObjectPtr")
            }.internal()
        } else {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign(value: "false")
                }
                
                "super.init(nativeObjectPtr: nativeObjectPtr)"
            }.internal().override()
        }
        
        Spacer()
        
        Init(parameters: .named("typedVariant", type: "Variant")) {
            if isRootClass {
                "nativeObjectPtr = typedVariant.uncheckedObjectValue(ofType: Self.self).nativeObjectPtr"
            } else {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign(value: "false")
                }
                "super.init(typedVariant: typedVariant)"
            }
        }.public().required()
    }
}
