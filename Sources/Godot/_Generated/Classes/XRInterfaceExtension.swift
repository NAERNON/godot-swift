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

    open func _getSystemInfo() -> Godot.GodotDictionary {
        Godot.GodotDictionary()
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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_color_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func colorTexture() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_depth_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_depth_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func depthTexture() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_depth_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_velocity_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_velocity_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func velocityTexture() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_velocity_texture,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_blit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_blit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 258596971)!
        }
        }
    }()
    public func addBlit(renderTarget: Godot.RID, srcRect: Godot.Rect2, dstRect: Godot.Rect2i, useLayer: Bool, layer: UInt32, applyLensDistortion: Bool, eyeCenter: Godot.Vector2, k1: Double, k2: Double, upscale: Double, aspectRatio: Double) {
        renderTarget.withUnsafeRawPointer { (__ptr_renderTarget) in
            withUnsafePointer(to: srcRect) { (__ptr_srcRect) in
                withUnsafePointer(to: dstRect) { (__ptr_dstRect) in
                    withUnsafePointer(to: useLayer) { (__ptr_useLayer) in
                        withUnsafePointer(to: layer) { (__ptr_layer) in
                            withUnsafePointer(to: applyLensDistortion) { (__ptr_applyLensDistortion) in
                                withUnsafePointer(to: eyeCenter) { (__ptr_eyeCenter) in
                                    withUnsafePointer(to: k1) { (__ptr_k1) in
                                        withUnsafePointer(to: k2) { (__ptr_k2) in
                                            withUnsafePointer(to: upscale) { (__ptr_upscale) in
                                                withUnsafePointer(to: aspectRatio) { (__ptr_aspectRatio) in
                                                    withUnsafeArgumentPackPointer(__ptr_renderTarget, __ptr_srcRect, __ptr_dstRect, __ptr_useLayer, __ptr_layer, __ptr_applyLensDistortion, __ptr_eyeCenter, __ptr_k1, __ptr_k2, __ptr_upscale, __ptr_aspectRatio) { (__accessPtr) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
                                                                Self.__method_binding_add_blit,
                                                                __ptr_self,
                                                                __accessPtr,
                                                                nil
                                                            )
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_render_target_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_render_target_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 41030802)!
        }
        }
    }()
    public func renderTargetTexture(renderTarget: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        renderTarget.withUnsafeRawPointer { (__ptr_renderTarget) in
            withUnsafeArgumentPackPointer(__ptr_renderTarget) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_render_target_texture,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
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
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_capabilities_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCapabilities()
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _is_initialized_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isInitialized()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._initialize()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _uninitialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._uninitialize()}
        let _get_system_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSystemInfo()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _supports_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._supportsPlayAreaMode(
            args[0]!.load(as: Godot.XRInterface.PlayAreaMode.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPlayAreaMode()
        returnPtr!.assumingMemoryBound(to: Godot.XRInterface.PlayAreaMode.self).pointee = returnValue}
        let _set_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._setPlayAreaMode(
            args[0]!.load(as: Godot.XRInterface.PlayAreaMode.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_play_area_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPlayArea()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_render_target_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getRenderTargetSize()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_view_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getViewCount()
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _get_camera_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCameraTransform()
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _get_transform_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTransformForView(
            args[0]!.load(as: UInt32.self),
            camTransform: args[1]!.load(as: Godot.Transform3D.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _get_projection_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getProjectionForView(
            args[0]!.load(as: UInt32.self),
            aspect: args[1]!.load(as: Double.self),
            zNear: args[2]!.load(as: Double.self),
            zFar: args[3]!.load(as: Double.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_vrs_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getVrsTexture()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._process()}
        let _pre_render_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._preRender()}
        let _pre_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._preDrawViewport(
            renderTarget: Godot.RID(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _post_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._postDrawViewport(
            renderTarget: Godot.RID(godotExtensionPointer: args[0]!),
            screenRect: args[1]!.load(as: Godot.Rect2.self)
        )}
        let _end_frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._endFrame()}
        let _get_suggested_tracker_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSuggestedTrackerNames()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_suggested_pose_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSuggestedPoseNames(
            trackerName: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_tracking_status_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTrackingStatus()
        returnPtr!.assumingMemoryBound(to: Godot.XRInterface.TrackingStatus.self).pointee = returnValue}
        let _trigger_haptic_pulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._triggerHapticPulse(
            actionName: Godot.GodotString(godotExtensionPointer: args[0]!),
            trackerName: Godot.GodotStringName(godotExtensionPointer: args[1]!),
            frequency: args[2]!.load(as: Double.self),
            amplitude: args[3]!.load(as: Double.self),
            durationSec: args[4]!.load(as: Double.self),
            delaySec: args[5]!.load(as: Double.self)
        )}
        let _get_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getAnchorDetectionIsEnabled()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _set_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setAnchorDetectionIsEnabled(
            args[0]!.load(as: Bool.self)
        )}
        let _get_camera_feed_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCameraFeedId()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_color_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getColorTexture()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_depth_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getDepthTexture()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_velocity_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<XRInterfaceExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getVelocityTexture()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
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