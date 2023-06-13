import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func isExtensionClassCode() -> some Code {
#warning("Return true for all necessary classes")
        Func(name: "isExtensionClass", returnType: "Bool") {
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
    
    @CodeBuilder
    func bindingsCallbackCode() -> some Code {
        Func(name: "instanceBindingsCallbacks", returnType: "GDExtensionInstanceBindingCallbacks") {
            """
            if isExtensionClass() {
                // When the class is an extension class, we should not generate any binding.
                
                return GDExtensionInstanceBindingCallbacks { token, instance in
                    return nil
                } free_callback: { token, instance, bindings in
                    // Nothing to do
                } reference_callback: { token, instance, reference in
                    return 1
                }
            } else {
                return GDExtensionInstanceBindingCallbacks { token, instance in
                    return Unmanaged.passRetained(\(name.code())(extensionObjectPtr: instance!)).toOpaque()
                } free_callback: { token, instance, bindings in
                    Unmanaged<\(name.code())>.fromOpaque(instance!).takeRetainedValue().withUnsafeExtensionPointer { __ptr_self in
                        GodotExtension.shared.interface.mem_free(__ptr_self)
                    }
                } reference_callback: { token, instance, reference in
                    return 1
                }
            }
            """
        }.class().override(!isRootClass).internal()
    }
    
    @CodeBuilder
    func classNameFunctionCode() -> some Code {
        Let("_className").static().private().assign("StringName(string: \"\(name.code())\")")
        Func(name: "lastDerivedGodotClassName", returnType: "StringName") {
            "_className"
        }
        .class()
        .override(!isRootClass)
        .internal()
        .documentation {
            "Returns the last derived Godot class name."
        }
        
        if isRootClass {
            Func(name: "godotClassName", returnType: "StringName") {
                "StringName(swiftString: .init(describing: self))"
            }
            .class()
            .final()
            .internal()
            .documentation {
                "Returns the Godot class name."
            }
        }
    }
    
    @CodeBuilder
    func exposeToGodotCode() -> some Code {
        """
        open \(isRootClass ? "" : "override ")class func exposeToGodot() {
            guard GodotExtension.shared.classRegister.registerBaseGodotClass(withName: "\(name.code())", ofType: self) else {
                return
            }
            
            setFunctionBindings()
        }
        """
    }
}
