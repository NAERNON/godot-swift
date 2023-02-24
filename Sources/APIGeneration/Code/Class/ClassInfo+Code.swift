import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func isExtensionClassCode() -> some Code {
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
    
    @CodeBuilder
    func bindingsCallbackCode() -> some Code {
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
    
    @CodeBuilder
    func classNameFunctionCode() -> some Code {
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
