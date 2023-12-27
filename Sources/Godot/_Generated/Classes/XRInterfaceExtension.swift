//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class XRInterfaceExtension: XRInterface {
    open func _getName() -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _getCapabilities() -> UInt32 {
        UInt32()
    }

    open func _isInitialized() -> Bool {
        Bool()
    }

    open func _initialize() -> Bool {
        Bool()
    }

    open func _uninitialize() {
    }

    open func _getSystemInfo() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _supportsPlayAreaMode(_ mode: Godot.XRInterface.PlayAreaMode) -> Bool {
        Bool()
    }

    open func _getPlayAreaMode() -> Godot.XRInterface.PlayAreaMode {
        Godot.XRInterface.PlayAreaMode(rawValue: 0)!
    }

    open func _setPlayAreaMode(_ mode: Godot.XRInterface.PlayAreaMode) -> Bool {
        Bool()
    }

    open func _getPlayArea() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array()
    }

    open func _getRenderTargetSize() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getViewCount() -> UInt32 {
        UInt32()
    }

    open func _getCameraTransform() -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _getTransformForView(_ view: UInt32, camTransform: Godot.Transform3D) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _getProjectionForView(_ view: UInt32, aspect: Double, zNear: Double, zFar: Double) -> Godot.PackedFloat64Array {
        Godot.PackedFloat64Array()
    }

    open func _getVrsTexture() -> Godot.RID {
        Godot.RID()
    }

    open func _process() {
    }

    open func _preRender() {
    }

    open func _preDrawViewport(renderTarget: Godot.RID) -> Bool {
        Bool()
    }

    open func _postDrawViewport(renderTarget: Godot.RID, screenRect: Godot.Rect2) {
    }

    open func _endFrame() {
    }

    open func _getSuggestedTrackerNames() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getSuggestedPoseNames(trackerName: Godot.GodotStringName) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getTrackingStatus() -> Godot.XRInterface.TrackingStatus {
        Godot.XRInterface.TrackingStatus(rawValue: 0)!
    }

    open func _triggerHapticPulse(actionName: Godot.GodotString, trackerName: Godot.GodotStringName, frequency: Double, amplitude: Double, durationSec: Double, delaySec: Double) {
    }

    open func _getAnchorDetectionIsEnabled() -> Bool {
        Bool()
    }

    open func _setAnchorDetectionIsEnabled(_ enabled: Bool) {
    }

    open func _getCameraFeedId() -> Int32 {
        Int32()
    }

    open func _getColorTexture() -> Godot.RID {
        Godot.RID()
    }

    open func _getDepthTexture() -> Godot.RID {
        Godot.RID()
    }

    open func _getVelocityTexture() -> Godot.RID {
        Godot.RID()
    }

    private static var __method_binding_get_color_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func colorTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_depth_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func depthTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_velocity_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func velocityTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_velocity_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_blit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_blit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 258596971)!
        }
        }
    }()
    public func addBlit(renderTarget: Godot.RID, srcRect: Godot.Rect2, dstRect: Godot.Rect2i, useLayer: Bool, layer: UInt32, applyLensDistortion: Bool, eyeCenter: Godot.Vector2, k1: Double, k2: Double, upscale: Double, aspectRatio: Double) {
        renderTarget.withGodotUnsafeRawPointer { __ptr_renderTarget in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        dstRect.withGodotUnsafeRawPointer { __ptr_dstRect in
        useLayer.withGodotUnsafeRawPointer { __ptr_useLayer in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        applyLensDistortion.withGodotUnsafeRawPointer { __ptr_applyLensDistortion in
        eyeCenter.withGodotUnsafeRawPointer { __ptr_eyeCenter in
        k1.withGodotUnsafeRawPointer { __ptr_k1 in
        k2.withGodotUnsafeRawPointer { __ptr_k2 in
        upscale.withGodotUnsafeRawPointer { __ptr_upscale in
        aspectRatio.withGodotUnsafeRawPointer { __ptr_aspectRatio in
        withUnsafeArgumentPackPointer(__ptr_renderTarget, __ptr_srcRect, __ptr_dstRect, __ptr_useLayer, __ptr_layer, __ptr_applyLensDistortion, __ptr_eyeCenter, __ptr_k1, __ptr_k2, __ptr_upscale, __ptr_aspectRatio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_blit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}
    }

    private static var __method_binding_get_render_target_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_target_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 41030802)!
        }
        }
    }()
    public func renderTargetTexture(renderTarget: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        renderTarget.withGodotUnsafeRawPointer { __ptr_renderTarget in
        withUnsafeArgumentPackPointer(__ptr_renderTarget) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_render_target_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_capabilities_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCapabilities()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_initialized_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isInitialized()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._initialize()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _uninitialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._uninitialize()}
        let _get_system_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSystemInfo()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _supports_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._supportsPlayAreaMode(
            Godot.XRInterface.PlayAreaMode.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPlayAreaMode()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setPlayAreaMode(
            Godot.XRInterface.PlayAreaMode.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_play_area_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPlayArea()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_render_target_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getRenderTargetSize()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_view_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getViewCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_camera_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCameraTransform()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_transform_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTransformForView(
            UInt32.fromGodotUnsafePointer(args[0]!),
            camTransform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_projection_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getProjectionForView(
            UInt32.fromGodotUnsafePointer(args[0]!),
            aspect: Double.fromGodotUnsafePointer(args[1]!),
            zNear: Double.fromGodotUnsafePointer(args[2]!),
            zFar: Double.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_vrs_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getVrsTexture()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._process()}
        let _pre_render_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._preRender()}
        let _pre_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._preDrawViewport(
            renderTarget: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _post_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._postDrawViewport(
            renderTarget: Godot.RID.fromGodotUnsafePointer(args[0]!),
            screenRect: Godot.Rect2.fromGodotUnsafePointer(args[1]!)
        )}
        let _end_frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._endFrame()}
        let _get_suggested_tracker_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSuggestedTrackerNames()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_suggested_pose_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSuggestedPoseNames(
            trackerName: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_tracking_status_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTrackingStatus()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _trigger_haptic_pulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._triggerHapticPulse(
            actionName: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            trackerName: Godot.GodotStringName.fromGodotUnsafePointer(args[1]!),
            frequency: Double.fromGodotUnsafePointer(args[2]!),
            amplitude: Double.fromGodotUnsafePointer(args[3]!),
            durationSec: Double.fromGodotUnsafePointer(args[4]!),
            delaySec: Double.fromGodotUnsafePointer(args[5]!)
        )}
        let _get_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAnchorDetectionIsEnabled()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setAnchorDetectionIsEnabled(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_camera_feed_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCameraFeedId()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_color_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getColorTexture()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_depth_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getDepthTexture()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_velocity_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getVelocityTexture()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getName" : ("_get_name", _get_name_call),
            "_getCapabilities" : ("_get_capabilities", _get_capabilities_call),
            "_isInitialized" : ("_is_initialized", _is_initialized_call),
            "_initialize" : ("_initialize", _initialize_call),
            "_uninitialize" : ("_uninitialize", _uninitialize_call),
            "_getSystemInfo" : ("_get_system_info", _get_system_info_call),
            "_supportsPlayAreaMode" : ("_supports_play_area_mode", _supports_play_area_mode_call),
            "_getPlayAreaMode" : ("_get_play_area_mode", _get_play_area_mode_call),
            "_setPlayAreaMode" : ("_set_play_area_mode", _set_play_area_mode_call),
            "_getPlayArea" : ("_get_play_area", _get_play_area_call),
            "_getRenderTargetSize" : ("_get_render_target_size", _get_render_target_size_call),
            "_getViewCount" : ("_get_view_count", _get_view_count_call),
            "_getCameraTransform" : ("_get_camera_transform", _get_camera_transform_call),
            "_getTransformForView" : ("_get_transform_for_view", _get_transform_for_view_call),
            "_getProjectionForView" : ("_get_projection_for_view", _get_projection_for_view_call),
            "_getVrsTexture" : ("_get_vrs_texture", _get_vrs_texture_call),
            "_process" : ("_process", _process_call),
            "_preRender" : ("_pre_render", _pre_render_call),
            "_preDrawViewport" : ("_pre_draw_viewport", _pre_draw_viewport_call),
            "_postDrawViewport" : ("_post_draw_viewport", _post_draw_viewport_call),
            "_endFrame" : ("_end_frame", _end_frame_call),
            "_getSuggestedTrackerNames" : ("_get_suggested_tracker_names", _get_suggested_tracker_names_call),
            "_getSuggestedPoseNames" : ("_get_suggested_pose_names", _get_suggested_pose_names_call),
            "_getTrackingStatus" : ("_get_tracking_status", _get_tracking_status_call),
            "_triggerHapticPulse" : ("_trigger_haptic_pulse", _trigger_haptic_pulse_call),
            "_getAnchorDetectionIsEnabled" : ("_get_anchor_detection_is_enabled", _get_anchor_detection_is_enabled_call),
            "_setAnchorDetectionIsEnabled" : ("_set_anchor_detection_is_enabled", _set_anchor_detection_is_enabled_call),
            "_getCameraFeedId" : ("_get_camera_feed_id", _get_camera_feed_id_call),
            "_getColorTexture" : ("_get_color_texture", _get_color_texture_call),
            "_getDepthTexture" : ("_get_depth_texture", _get_depth_texture_call),
            "_getVelocityTexture" : ("_get_velocity_texture", _get_velocity_texture_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }