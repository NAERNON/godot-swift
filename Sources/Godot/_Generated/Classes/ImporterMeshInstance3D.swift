//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class ImporterMeshInstance3D: Node3D {
    internal static var __method_binding_set_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2255166972)!
        }
        }
    }()

    private func __setMesh(
        _ mesh: Godot.ImporterMesh?
    ) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        withUnsafeArgumentPackPointer(_ptr___ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3161779525)!
        }
        }
    }()

    private func __getMesh() -> Godot.ImporterMesh? {
        Godot.ImporterMesh?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mesh,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3971435618)!
        }
        }
    }()

    private func __setSkin(
        _ skin: Godot.Skin?
    ) {
        skin.withGodotUnsafeRawPointer { __ptr_skin in
        withUnsafePointer(to: __ptr_skin) { _ptr___ptr_skin in
        withUnsafeArgumentPackPointer(_ptr___ptr_skin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2074563878)!
        }
        }
    }()

    private func __getSkin() -> Godot.Skin? {
        Godot.Skin?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skeleton_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeleton_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setSkeletonPath(
        _ skeletonPath: Godot.NodePath
    ) {
        skeletonPath.withGodotUnsafeRawPointer { __ptr_skeletonPath in
        withUnsafeArgumentPackPointer(__ptr_skeletonPath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skeleton_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_skeleton_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeleton_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getSkeletonPath() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skeleton_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_layer_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_layer_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setLayerMask(
        _ layerMask: UInt32
    ) {
        layerMask.withGodotUnsafeRawPointer { __ptr_layerMask in
        withUnsafeArgumentPackPointer(__ptr_layerMask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_layer_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_layer_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getLayerMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_layer_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_cast_shadows_setting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cast_shadows_setting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 856677339)!
        }
        }
    }()

    private func __setCastShadowsSetting(
        shadowCastingSetting: Godot.GeometryInstance3D.ShadowCastingSetting
    ) {
        shadowCastingSetting.withGodotUnsafeRawPointer { __ptr_shadowCastingSetting in
        withUnsafeArgumentPackPointer(__ptr_shadowCastingSetting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cast_shadows_setting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_cast_shadows_setting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cast_shadows_setting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3383019359)!
        }
        }
    }()

    private func __getCastShadowsSetting() -> Godot.GeometryInstance3D.ShadowCastingSetting {
        Godot.GeometryInstance3D.ShadowCastingSetting.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cast_shadows_setting,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_range_end_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVisibilityRangeEndMargin(
        distance: Double
    ) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_range_end_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_range_end_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVisibilityRangeEndMargin() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_range_end_margin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_range_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_range_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVisibilityRangeEnd(
        distance: Double
    ) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_range_end,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_range_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_range_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVisibilityRangeEnd() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_range_end,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_range_begin_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVisibilityRangeBeginMargin(
        distance: Double
    ) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_range_begin_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_range_begin_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVisibilityRangeBeginMargin() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_range_begin_margin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_range_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_range_begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVisibilityRangeBegin(
        distance: Double
    ) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_range_begin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_range_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_range_begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVisibilityRangeBegin() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_range_begin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_range_fade_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1440117808)!
        }
        }
    }()

    private func __setVisibilityRangeFadeMode(
        _ mode: Godot.GeometryInstance3D.VisibilityRangeFadeMode
    ) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_range_fade_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_range_fade_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2067221882)!
        }
        }
    }()

    private func __getVisibilityRangeFadeMode() -> Godot.GeometryInstance3D.VisibilityRangeFadeMode {
        Godot.GeometryInstance3D.VisibilityRangeFadeMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_range_fade_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var mesh: Godot.ImporterMesh? {
        get {
            __getMesh()
        }
        set {
            __setMesh(
                newValue
            )
        }
    }

    public var skin: Godot.Skin? {
        get {
            __getSkin()
        }
        set {
            __setSkin(
                newValue
            )
        }
    }

    public var skeletonPath: Godot.NodePath {
        get {
            __getSkeletonPath()
        }
        set {
            __setSkeletonPath(
                newValue
            )
        }
    }

    public var layerMask: UInt32 {
        get {
            __getLayerMask()
        }
        set {
            __setLayerMask(
                newValue
            )
        }
    }

    public var castShadowsSetting: Godot.GeometryInstance3D.ShadowCastingSetting {
        get {
            __getCastShadowsSetting()
        }
        set {
            __setCastShadowsSetting(
                shadowCastingSetting: newValue
            )
        }
    }

    public var visibilityRangeBegin: Double {
        get {
            __getVisibilityRangeBegin()
        }
        set {
            __setVisibilityRangeBegin(
                distance: newValue
            )
        }
    }

    public var visibilityRangeBeginMargin: Double {
        get {
            __getVisibilityRangeBeginMargin()
        }
        set {
            __setVisibilityRangeBeginMargin(
                distance: newValue
            )
        }
    }

    public var visibilityRangeEnd: Double {
        get {
            __getVisibilityRangeEnd()
        }
        set {
            __setVisibilityRangeEnd(
                distance: newValue
            )
        }
    }

    public var visibilityRangeEndMargin: Double {
        get {
            __getVisibilityRangeEndMargin()
        }
        set {
            __setVisibilityRangeEndMargin(
                distance: newValue
            )
        }
    }

    public var visibilityRangeFadeMode: Godot.GeometryInstance3D.VisibilityRangeFadeMode {
        get {
            __getVisibilityRangeFadeMode()
        }
        set {
            __setVisibilityRangeFadeMode(
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