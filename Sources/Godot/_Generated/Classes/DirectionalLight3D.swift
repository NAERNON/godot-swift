//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class DirectionalLight3D: Light3D {
    public enum ShadowMode: UInt32, GodotEnum {
        case orthogonal = 0
        case parallel2Splits = 1
        case parallel4Splits = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Orthogonal", 0),
            ("Parallel2 Splits", 1),
            ("Parallel4 Splits", 2),]
        }
    }
    public enum SkyMode: UInt32, GodotEnum {
        case lightAndSky = 0
        case lightOnly = 1
        case skyOnly = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Light And Sky", 0),
            ("Light Only", 1),
            ("Sky Only", 2),]
        }
    }

    private static var __method_binding_set_shadow_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_shadow_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1261211726)!
        }
        }
    }()
    private func __setShadowMode(_ mode: Godot.DirectionalLight3D.ShadowMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_shadow_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_shadow_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shadow_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2765228544)!
        }
        }
    }()
    private func __getShadowMode() -> Godot.DirectionalLight3D.ShadowMode {
        Godot.DirectionalLight3D.ShadowMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_shadow_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_blend_splits: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_splits").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setBlendSplits(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_blend_splits,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_blend_splits_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_blend_splits_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isBlendSplitsEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_blend_splits_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_sky_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sky_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2691194817)!
        }
        }
    }()
    private func __setSkyMode(_ mode: Godot.DirectionalLight3D.SkyMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sky_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_sky_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sky_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3819982774)!
        }
        }
    }()
    private func __getSkyMode() -> Godot.DirectionalLight3D.SkyMode {
        Godot.DirectionalLight3D.SkyMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sky_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var shadowMode: Godot.DirectionalLight3D.ShadowMode {
        get {
            __getShadowMode()
        }
        set {
            __setShadowMode(
                newValue
            )
        }
    }

    public var isBlendSplitsEnabled: Bool {
        get {
            __isBlendSplitsEnabled()
        }
        set {
            __setBlendSplits(
                enabled: newValue
            )
        }
    }

    public var skyMode: Godot.DirectionalLight3D.SkyMode {
        get {
            __getSkyMode()
        }
        set {
            __setSkyMode(
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