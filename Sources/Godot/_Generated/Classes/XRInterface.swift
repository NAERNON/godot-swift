//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class XRInterface: RefCounted {
    public enum Capabilities: UInt32, GodotEnum {
        case none = 0
        case mono = 1
        case stereo = 2
        case quad = 4
        case vr = 8
        case ar = 16
        case external = 32

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Mono", 1),
            ("Stereo", 2),
            ("Quad", 4),
            ("Vr", 8),
            ("Ar", 16),
            ("External", 32),]
        }
    }

    public enum TrackingStatus: UInt32, GodotEnum {
        case normalTracking = 0
        case excessiveMotion = 1
        case insufficientFeatures = 2
        case unknownTracking = 3
        case notTracking = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Normal Tracking", 0),
            ("Excessive Motion", 1),
            ("Insufficient Features", 2),
            ("Unknown Tracking", 3),
            ("Not Tracking", 4),]
        }
    }

    public enum PlayAreaMode: UInt32, GodotEnum {
        case unknown = 0
        case xrPlayArea3dof = 1
        case sitting = 2
        case roomscale = 3
        case stage = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unknown", 0),
            ("Xr Play Area3dof", 1),
            ("Sitting", 2),
            ("Roomscale", 3),
            ("Stage", 4),]
        }
    }

    public enum EnvironmentBlendMode: UInt32, GodotEnum {
        case opaque = 0
        case additive = 1
        case alphaBlend = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Opaque", 0),
            ("Additive", 1),
            ("Alpha Blend", 2),]
        }
    }

    public struct PlayAreaChangedSignalInput: Godot.SignalInput {
        public let mode: Int

        fileprivate init(
            mode: Int
        ) {
            self.mode = mode
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.mode)]
        }
    }

    public func playAreaChanged(
        mode: Int
    ) {
        _ = playAreaChangedSignal.emit(.init(mode: mode))
    }

    public lazy var playAreaChangedSignal: Godot.SignalEmitter<PlayAreaChangedSignalInput> = {
        .init(object: self, signalName: "play_area_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PlayAreaChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(mode: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PlayAreaChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PlayAreaChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    public func name() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_capabilities: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_capabilities").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func capabilities() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_capabilities,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_primary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_primary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    private func __isPrimary() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_primary,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_primary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_primary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setPrimary(
        _ primary: Bool
    ) {
        primary.withGodotUnsafeRawPointer { __ptr_primary in
        withUnsafeArgumentPackPointer(__ptr_primary) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_primary,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_initialized: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_initialized").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isInitialized() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_initialized,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_initialize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "initialize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func initialize() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_initialize,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_uninitialize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "uninitialize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func uninitialize() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_uninitialize,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_system_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_system_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()

    public func systemInfo() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_system_info,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_tracking_status: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracking_status").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 167423259)!
        }
        }
    }()

    public func trackingStatus() -> Godot.XRInterface.TrackingStatus {
        Godot.XRInterface.TrackingStatus.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracking_status,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_render_target_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_target_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1497962370)!
        }
        }
    }()

    public func renderTargetSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_render_target_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_view_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_view_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    public func viewCount() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_view_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_trigger_haptic_pulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "trigger_haptic_pulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3752640163)!
        }
        }
    }()

    public func triggerHapticPulse(
        actionName: Godot.GodotString,
        trackerName: Godot.GodotStringName,
        frequency: Double,
        amplitude: Double,
        durationSec: Double,
        delaySec: Double
    ) {
        actionName.withGodotUnsafeRawPointer { __ptr_actionName in
        trackerName.withGodotUnsafeRawPointer { __ptr_trackerName in
        frequency.withGodotUnsafeRawPointer { __ptr_frequency in
        amplitude.withGodotUnsafeRawPointer { __ptr_amplitude in
        durationSec.withGodotUnsafeRawPointer { __ptr_durationSec in
        delaySec.withGodotUnsafeRawPointer { __ptr_delaySec in
        withUnsafeArgumentPackPointer(__ptr_actionName, __ptr_trackerName, __ptr_frequency, __ptr_amplitude, __ptr_durationSec, __ptr_delaySec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_trigger_haptic_pulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_supports_play_area_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "supports_play_area_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3429955281)!
        }
        }
    }()

    public func supportsPlayAreaMode(
        _ mode: Godot.XRInterface.PlayAreaMode
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_supports_play_area_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_play_area_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_play_area_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1615132885)!
        }
        }
    }()

    private func __getPlayAreaMode() -> Godot.XRInterface.PlayAreaMode {
        Godot.XRInterface.PlayAreaMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_play_area_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_play_area_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_play_area_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3429955281)!
        }
        }
    }()

    public func setPlayAreaMode(
        _ mode: Godot.XRInterface.PlayAreaMode
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_play_area_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_play_area: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_play_area").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()

    public func playArea() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_play_area,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_anchor_detection_is_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_anchor_detection_is_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getAnchorDetectionIsEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_anchor_detection_is_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_anchor_detection_is_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anchor_detection_is_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAnchorDetectionIsEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_anchor_detection_is_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_camera_feed_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_feed_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    public func cameraFeedID() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_camera_feed_id,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_passthrough_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_passthrough_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func isPassthroughSupported() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_passthrough_supported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_passthrough_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_passthrough_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func isPassthroughEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_passthrough_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_start_passthrough: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "start_passthrough").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func startPassthrough() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_start_passthrough,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_stop_passthrough: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_passthrough").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func stopPassthrough() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_stop_passthrough,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_transform_for_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform_for_view").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 518934792)!
        }
        }
    }()

    public func transformForView(
        _ view: UInt32,
        camTransform: Godot.Transform3D
    ) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        view.withGodotUnsafeRawPointer { __ptr_view in
        camTransform.withGodotUnsafeRawPointer { __ptr_camTransform in
        withUnsafeArgumentPackPointer(__ptr_view, __ptr_camTransform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_transform_for_view,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_projection_for_view: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_projection_for_view").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3766090294)!
        }
        }
    }()

    public func projectionForView(
        _ view: UInt32,
        aspect: Double,
        near: Double,
        far: Double
    ) -> Godot.Projection {
        Godot.Projection.fromMutatingGodotUnsafePointer { __temporary in
        view.withGodotUnsafeRawPointer { __ptr_view in
        aspect.withGodotUnsafeRawPointer { __ptr_aspect in
        near.withGodotUnsafeRawPointer { __ptr_near in
        far.withGodotUnsafeRawPointer { __ptr_far in
        withUnsafeArgumentPackPointer(__ptr_view, __ptr_aspect, __ptr_near, __ptr_far) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_projection_for_view,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_get_supported_environment_blend_modes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_environment_blend_modes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    public func supportedEnvironmentBlendModes() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_supported_environment_blend_modes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_environment_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 551152418)!
        }
        }
    }()

    public func setEnvironmentBlendMode(
        _ mode: Godot.XRInterface.EnvironmentBlendMode
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_environment_blend_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_environment_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1984334071)!
        }
        }
    }()

    private func __getEnvironmentBlendMode() -> Godot.XRInterface.EnvironmentBlendMode {
        Godot.XRInterface.EnvironmentBlendMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_environment_blend_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isPrimary: Bool {
        get {
            __isPrimary()
        }
        set {
            __setPrimary(
                newValue
            )
        }
    }

    public var playAreaMode: Godot.XRInterface.PlayAreaMode {
        get {
            __getPlayAreaMode()
        }
    }

    public var environmentBlendMode: Godot.XRInterface.EnvironmentBlendMode {
        get {
            __getEnvironmentBlendMode()
        }
    }

    public var anchorDetectionIsEnabled: Bool {
        get {
            __getAnchorDetectionIsEnabled()
        }
        set {
            __setAnchorDetectionIsEnabled(
                enable: newValue
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