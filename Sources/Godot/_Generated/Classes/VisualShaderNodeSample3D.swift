//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeSample3D: VisualShaderNode {
    public enum Source: UInt32 {
        case texture = 0
        case port = 1
        case max = 2
    }

    private static var __method_binding_set_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3315130991)!
        }
        }
    }()
    private func __setSource(value: Godot.VisualShaderNodeSample3D.Source) {
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_source,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1079494121)!
        }
        }
    }()
    private func __getSource() -> Godot.VisualShaderNodeSample3D.Source {
        var __temporary = Godot.VisualShaderNodeSample3D.Source.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_source,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeSample3D.Source(rawValue: __temporary)!
    }

    public var source: Godot.VisualShaderNodeSample3D.Source {
        get {
            __getSource()
        }
        set {
            __setSource(
                value: newValue
            )
        }
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