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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_billboard_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1227463289)!
        }
        }
    }()
    private func __setBillboardType(_ billboardType: Godot.VisualShaderNodeBillboard.BillboardType) {
        billboardType.withGodotUnsafeRawPointer { __ptr_billboardType in
        withUnsafeArgumentPackPointer(__ptr_billboardType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_billboard_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_billboard_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_billboard_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3724188517)!
        }
        }
    }()
    private func __getBillboardType() -> Godot.VisualShaderNodeBillboard.BillboardType {
        Godot.VisualShaderNodeBillboard.BillboardType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_billboard_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_keep_scale_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_scale_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeepScaleEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_keep_scale_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_keep_scale_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keep_scale_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeepScaleEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_keep_scale_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
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