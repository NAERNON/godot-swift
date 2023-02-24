import Foundation
import CodeGenerator

#warning("isRefcounted and isInstantiable, isVararg, isVirtual not used from ExtensionApi.Class. Is it ok or am I dumb ?")

extension ExtensionApi.Class {
    var isRootClass: Bool { name == "Object" }
    
    @CodeBuilder
    func code() -> some Code {
        Class(name.toSwift(), extensions: inherits == nil ? [] : [inherits!.toSwift()]) {
            Stack {
                initsCode()
                if isRootClass {
                    isExtensionClassCode()
                }
                bindingsCallbackCode()
                enumCode()
                methodsCode()
                bindingsCode()
            }
        }.open()
    }
    
    private var isRefCountedRootClass: Bool {
        name == "RefCounted"
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
    
    // MARK: Is extension class
    
    @CodeBuilder
    private func isExtensionClassCode() -> some Code {
#warning("Return true for all necessary classes")
        Func(name: "isExtentionClass", returnType: "Bool") {
            "false"
        }
        .class()
        .open()
        .documentation {
"""
Returns a Boolean value indicating whether the class is an extension
of a base Godot class.

Every class inside the Godot target are not extension classes,
and all others should be.
"""
        }
    }
    
    // MARK: Bindings
    
    @CodeBuilder
    private func bindingsCode() -> some Code {
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
                    Let("_class_name").typed("StringName").assign("\"\(name.toSwift())\"")
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
                                .assign("Unmanaged<\(name.toSwift())>.fromOpaque(instancePtr).takeUnretainedValue()")
                            
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
    
    // MARK: Bindings callback
    
    @CodeBuilder
    private func bindingsCallbackCode() -> some Code {
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
        }.class().override(!isRootClass).internal()
    }
    
    // MARK: Methods
    
    @CodeBuilder
    private func methodsCode() -> some Code {
        if let methods,
           !methods.isEmpty {
            Mark("Functions", isSeparator: true)
            
            for method in methods {
                method.code(type: name, accessControl: methodsAccessControl)
            }
        }
    }
    
    private var methodsAccessControl: AccessControl {
        isRefCountedRootClass ? .private : .public
    }
    
    // MARK: Inits
    
    @CodeBuilder
    private func initsCode() -> some Code {
        Mark("Inits", isSeparator: true)
        
        baseInitCode()
        nativeObjectInitCode()
        variantInitCode()
        classNameFunctionCode()
    }
    
    @CodeBuilder
    private func baseInitCode() -> some Code {
        if isRootClass {
            Let("nativeObjectPtr").typed("GDNativeObjectPtr").internal()
            
            Init() { #warning("Check another way to know if the class is an extension class.")
"""
var nativeObjectPtr: GDNativeObjectPtr!
Self.lastDerivedGodotClassName().withUnsafeNativePointer { namePtr in
    nativeObjectPtr = GodotInterface.native.classdb_construct_object(namePtr)!
}

self.nativeObjectPtr = nativeObjectPtr

let className = StringName(swiftString: .init(describing: Self.self))
if className != Self.lastDerivedGodotClassName() {
    self.withUnsafeNativePointer { ptr in
        className.withUnsafeNativePointer { classNamePtr in
            GodotInterface.native.object_set_instance(ptr, classNamePtr, Unmanaged.passRetained(self).toOpaque())
        }
    }
}
"""
            }.required().public()
        } else if isRefCountedRootClass {
            Var("_isReferenced").private().typed("Bool")
            
            
            Init() {
                Property("_isReferenced").assign("true")
                "super.init()"
                "_ = initRef()"
            }.required().public()
            
            Deinit {
                Guard(condition: "_isReferenced") {
                    Return()
                }
                
                If("unreference()") {
                    Property("self").pointerAccess(type: name, mutability: .constMutablePointer) { pointerName in
                        "GodotInterface.native.mem_free(\(pointerName))"
                    }
                }
            }
        } else {
            Init() {
                "super.init()"
            }.required().public()
        }
    }
    
    @CodeBuilder
    private func nativeObjectInitCode() -> some Code {
        if isRootClass {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                Property("nativeObjectPtr").selfDefined().assign("nativeObjectPtr")
            }.internal()
        } else {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign("false")
                }
                
                "super.init(nativeObjectPtr: nativeObjectPtr)"
            }.override().internal()
        }
    }
    
    @CodeBuilder
    private func variantInitCode() -> some Code {
        Init(parameters: .named("typedVariant", type: "Variant")) {
            if isRootClass {
                Property("nativeObjectPtr").assign("typedVariant.uncheckedObjectValue(ofType: Self.self).nativeObjectPtr")
            } else {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign("false")
                }
                "super.init(typedVariant: typedVariant)"
            }
        }.required().public()
    }
    
    @CodeBuilder
    private func classNameFunctionCode() -> some Code {
        Let("_className").static().private().assign("StringName(string: \"\(name.toSwift())\")")
        Func(name: "lastDerivedGodotClassName", returnType: "StringName") {
            "_className"
        }
        .class()
        .override(!isRootClass)
        .public()
        .documentation {
            "Returns the last derived Godot class name."
        }
    }
}
