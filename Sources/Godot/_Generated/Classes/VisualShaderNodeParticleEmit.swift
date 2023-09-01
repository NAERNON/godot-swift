//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeParticleEmit: VisualShaderNode {
    public enum EmitFlags: UInt32 {
        case position = 1
        case rotScale = 2
        case velocity = 4
        case color = 8
        case custom = 16
    }

    private static var __method_binding_set_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3960756792)!
        }
        }
    }()
    private func __setFlags(_ flags: Godot.VisualShaderNodeParticleEmit.EmitFlags) {
        withUnsafePointer(to: flags) { (__ptr_flags) in
            withUnsafeArgumentPackPointer(__ptr_flags) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 171277835)!
        }
        }
    }()
    private func __getFlags() -> Godot.VisualShaderNodeParticleEmit.EmitFlags {
        var __temporary = Godot.VisualShaderNodeParticleEmit.EmitFlags.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_flags,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeParticleEmit.EmitFlags(rawValue: __temporary)!
    }

    public var flags: Godot.VisualShaderNodeParticleEmit.EmitFlags {
        get {
            __getFlags()
        }
        set {
            __setFlags(
                newValue
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