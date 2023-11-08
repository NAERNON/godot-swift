//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeBillboard: VisualShaderNode {
    public enum BillboardType: UInt32, GodotEnum {
        case disabled = 0
        case enabled = 1
        case fixedY = 2
        case particles = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Enabled", 1),
            ("Fixed Y", 2),
            ("Particles", 3),
            ("Max", 4),]
        }
    }

    private static var __method_binding_set_billboard_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_billboard_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1227463289)!
        }
        }
    }()
    private func __setBillboardType(_ billboardType: Godot.VisualShaderNodeBillboard.BillboardType) {
        withUnsafePointer(to: billboardType) { (__ptr_billboardType) in
            withUnsafeArgumentPackPointer(__ptr_billboardType) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_billboard_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_billboard_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_billboard_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3724188517)!
        }
        }
    }()
    private func __getBillboardType() -> Godot.VisualShaderNodeBillboard.BillboardType {
        var __temporary = Godot.VisualShaderNodeBillboard.BillboardType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_billboard_type,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeBillboard.BillboardType(rawValue: __temporary)!
    }

    private static var __method_binding_set_keep_scale_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_scale_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeepScaleEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_keep_scale_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_keep_scale_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keep_scale_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeepScaleEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_keep_scale_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var billboardType: Godot.VisualShaderNodeBillboard.BillboardType {
        get {
            __getBillboardType()
        }
        set {
            __setBillboardType(
                newValue
            )
        }
    }

    public var isKeepScaleEnabled: Bool {
        get {
            __isKeepScaleEnabled()
        }
        set {
            __setKeepScaleEnabled(
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