//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GDScript: Script {
    private static var __method_binding_new: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "new").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1545262638)!
        }
        }
    }()
    public func new<each VariantRest : VariantStorableIn>(_ rest: repeat each VariantRest) -> Godot.Variant {
        let __temporary = Godot.Variant()
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_call(
                        Self.__method_binding_new,
                        __ptr_self,
                        __accessPtr,
                        Int64(packCount),
                        __ptr___temporary,
                        nil
                    )
                }
            }
        }
        return __temporary
    }
    public func new() -> Godot.Variant {
        let __temporary = Godot.Variant()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_call(
                    Self.__method_binding_new,
                    __ptr_self,
                    nil,
                    0,
                    __ptr___temporary,
                    nil
                )
            }
        }
        return __temporary
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }