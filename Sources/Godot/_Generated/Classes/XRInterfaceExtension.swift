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
    
    open func _supportsPlayAreaMode(
        _ mode: Godot.XRInterface.PlayAreaMode
    ) -> Bool {
        Bool()
    }
    
    open func _getPlayAreaMode() -> Godot.XRInterface.PlayAreaMode {
        Godot.XRInterface.PlayAreaMode(rawValue: 0)!
    }
    
    open func _setPlayAreaMode(
        _ mode: Godot.XRInterface.PlayAreaMode
    ) -> Bool {
        Bool()
    }
    
    open func _getPlayArea() -> Godot.GodotContiguousArray<Vector3> {
        Godot.GodotContiguousArray<Vector3>()
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
    
    open func _getTransformForView(
        _ view: UInt32,
        camTransform: Godot.Transform3D
    ) -> Godot.Transform3D {
        Godot.Transform3D()
    }
    
    open func _getProjectionForView(
        _ view: UInt32,
        aspect: Double,
        zNear: Double,
        zFar: Double
    ) -> Godot.GodotContiguousArray<Double> {
        Godot.GodotContiguousArray<Double>()
    }
    
    open func _getVrsTexture() -> Godot.RID {
        Godot.RID()
    }
    
    open func _process() {
        
    }
    
    open func _preRender() {
        
    }
    
    open func _preDrawViewport(
        renderTarget: Godot.RID
    ) -> Bool {
        Bool()
    }
    
    open func _postDrawViewport(
        renderTarget: Godot.RID,
        screenRect: Godot.Rect2
    ) {
        
    }
    
    open func _endFrame() {
        
    }
    
    open func _getSuggestedTrackerNames() -> Godot.GodotContiguousArray<GodotString> {
        Godot.GodotContiguousArray<GodotString>()
    }
    
    open func _getSuggestedPoseNames(
        trackerName: Godot.GodotStringName
    ) -> Godot.GodotContiguousArray<GodotString> {
        Godot.GodotContiguousArray<GodotString>()
    }
    
    open func _getTrackingStatus() -> Godot.XRInterface.TrackingStatus {
        Godot.XRInterface.TrackingStatus(rawValue: 0)!
    }
    
    open func _triggerHapticPulse(
        actionName: Godot.GodotString,
        trackerName: Godot.GodotStringName,
        frequency: Double,
        amplitude: Double,
        durationSec: Double,
        delaySec: Double
    ) {
        
    }
    
    open func _getAnchorDetectionIsEnabled() -> Bool {
        Bool()
    }
    
    open func _setAnchorDetectionIsEnabled(
        _ enabled: Bool
    ) {
        
    }
    
    open func _getCameraFeedID() -> Int32 {
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
    
    internal static var __method_binding_get_color_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_color_texture").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
            }
        }
    }()
    
    public func colorTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_color_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_depth_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_depth_texture").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
            }
        }
    }()
    
    public func depthTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_depth_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_velocity_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_velocity_texture").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
            }
        }
    }()
    
    public func velocityTexture() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_velocity_texture,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_add_blit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_blit").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 258596971)!
            }
        }
    }()
    
    public func addBlit(
        renderTarget: Godot.RID,
        srcRect: Godot.Rect2,
        dstRect: Godot.Rect2I,
        useLayer: Bool,
        layer: UInt32,
        applyLensDistortion: Bool,
        eyeCenter: Godot.Vector2,
        k1: Double,
        k2: Double,
        upscale: Double,
        aspectRatio: Double
    ) {
        withTransferrableUnsafeRawPointer(to: renderTarget) { __ptr_renderTarget in
            withTransferrableUnsafeRawPointer(to: srcRect) { __ptr_srcRect in
                withTransferrableUnsafeRawPointer(to: dstRect) { __ptr_dstRect in
                    withTransferrableUnsafeRawPointer(to: useLayer) { __ptr_useLayer in
                        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                            withTransferrableUnsafeRawPointer(to: applyLensDistortion) { __ptr_applyLensDistortion in
                                withTransferrableUnsafeRawPointer(to: eyeCenter) { __ptr_eyeCenter in
                                    withTransferrableUnsafeRawPointer(to: k1) { __ptr_k1 in
                                        withTransferrableUnsafeRawPointer(to: k2) { __ptr_k2 in
                                            withTransferrableUnsafeRawPointer(to: upscale) { __ptr_upscale in
                                                withTransferrableUnsafeRawPointer(to: aspectRatio) { __ptr_aspectRatio in
                                                    withUnsafeArgumentPackPointer(__ptr_renderTarget, __ptr_srcRect, __ptr_dstRect, __ptr_useLayer, __ptr_layer, __ptr_applyLensDistortion, __ptr_eyeCenter, __ptr_k1, __ptr_k2, __ptr_upscale, __ptr_aspectRatio) { __accessPtr in
                                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                                            GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_render_target_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_render_target_texture").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 41030802)!
            }
        }
    }()
    
    public func renderTargetTexture(
        renderTarget: Godot.RID
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: renderTarget) { __ptr_renderTarget in
                withUnsafeArgumentPackPointer(__ptr_renderTarget) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_render_target_texture,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getName()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_capabilities_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getCapabilities()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _is_initialized_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._isInitialized()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._initialize()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _uninitialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._uninitialize()
        }
        let _get_system_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getSystemInfo()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _supports_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._supportsPlayAreaMode(
                    Godot.XRInterface.PlayAreaMode.transferFromGodot(unsafePointer: args[0]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getPlayAreaMode()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _set_play_area_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setPlayAreaMode(
                    Godot.XRInterface.PlayAreaMode.transferFromGodot(unsafePointer: args[0]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_play_area_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getPlayArea()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_render_target_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getRenderTargetSize()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_view_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getViewCount()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_camera_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getCameraTransform()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_transform_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getTransformForView(
                    UInt32.transferFromGodot(unsafePointer: args[0]!),
                    camTransform: Godot.Transform3D.transferFromGodot(unsafePointer: args[1]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_projection_for_view_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getProjectionForView(
                    UInt32.transferFromGodot(unsafePointer: args[0]!),
                    aspect: Double.transferFromGodot(unsafePointer: args[1]!),
                    zNear: Double.transferFromGodot(unsafePointer: args[2]!),
                    zFar: Double.transferFromGodot(unsafePointer: args[3]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_vrs_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getVrsTexture()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._process()
        }
        let _pre_render_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._preRender()
        }
        let _pre_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._preDrawViewport(
                    renderTarget: Godot.RID.transferFromGodot(unsafePointer: args[0]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _post_draw_viewport_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._postDrawViewport(
                    renderTarget: Godot.RID.transferFromGodot(unsafePointer: args[0]!),
                    screenRect: Godot.Rect2.transferFromGodot(unsafePointer: args[1]!)
                )
        }
        let _end_frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._endFrame()
        }
        let _get_suggested_tracker_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getSuggestedTrackerNames()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_suggested_pose_names_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getSuggestedPoseNames(
                    trackerName: Godot.GodotStringName.transferFromGodot(unsafePointer: args[0]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_tracking_status_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getTrackingStatus()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _trigger_haptic_pulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._triggerHapticPulse(
                    actionName: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
                    trackerName: Godot.GodotStringName.transferFromGodot(unsafePointer: args[1]!),
                    frequency: Double.transferFromGodot(unsafePointer: args[2]!),
                    amplitude: Double.transferFromGodot(unsafePointer: args[3]!),
                    durationSec: Double.transferFromGodot(unsafePointer: args[4]!),
                    delaySec: Double.transferFromGodot(unsafePointer: args[5]!)
                )
        }
        let _get_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getAnchorDetectionIsEnabled()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _set_anchor_detection_is_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._setAnchorDetectionIsEnabled(
                    Bool.transferFromGodot(unsafePointer: args[0]!)
                )
        }
        let _get_camera_feed_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getCameraFeedID()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_color_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getColorTexture()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_depth_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getDepthTexture()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_velocity_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<XRInterfaceExtension>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getVelocityTexture()
               .transferToGodot(unsafePointer: returnPtr!)
        }
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
            "_getCameraFeedID" : ("_get_camera_feed_id", _get_camera_feed_id_call),
            "_getColorTexture" : ("_get_color_texture", _get_color_texture_call),
            "_getDepthTexture" : ("_get_depth_texture", _get_depth_texture_call),
            "_getVelocityTexture" : ("_get_velocity_texture", _get_velocity_texture_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}