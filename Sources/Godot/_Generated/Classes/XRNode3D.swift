//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class XRNode3D: Node3D {
    public struct TrackingChangedSignalInput: Godot.SignalInput {
        public let tracking: Bool

        fileprivate init(
            tracking: Bool
        ) {
            self.tracking = tracking
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.tracking)]
        }
    }

    public func trackingChanged(
        tracking: Bool
    ) {
        _ = trackingChangedSignal.emit(.init(tracking: tracking))
    }

    public lazy var trackingChangedSignal: Godot.SignalEmitter<TrackingChangedSignalInput> = {
        .init(object: self, signalName: "tracking_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<TrackingChangedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(tracking: Bool.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<TrackingChangedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<TrackingChangedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_set_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    private func __setTracker(
        trackerName: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: trackerName) { __ptr_trackerName in
            withUnsafeArgumentPackPointer(__ptr_trackerName) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tracker,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    private func __getTracker() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tracker,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_pose_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pose_name").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    private func __setPoseName(
        pose: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: pose) { __ptr_pose in
            withUnsafeArgumentPackPointer(__ptr_pose) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_pose_name,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_pose_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pose_name").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    private func __getPoseName() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_pose_name,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_is_active").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isActive() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_is_active,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_has_tracking_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_has_tracking_data").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasTrackingData() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_has_tracking_data,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pose").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2806551826)!
        }
        }
    }()

    public func pose() -> Godot.XRPose? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_pose,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_trigger_haptic_pulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "trigger_haptic_pulse").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 508576839)!
        }
        }
    }()

    public func triggerHapticPulse(
        actionName: Godot.GodotString,
        frequency: Double,
        amplitude: Double,
        durationSec: Double,
        delaySec: Double
    ) {
        withTransferrableUnsafeRawPointer(to: actionName) { __ptr_actionName in
            withTransferrableUnsafeRawPointer(to: frequency) { __ptr_frequency in
                withTransferrableUnsafeRawPointer(to: amplitude) { __ptr_amplitude in
                    withTransferrableUnsafeRawPointer(to: durationSec) { __ptr_durationSec in
                        withTransferrableUnsafeRawPointer(to: delaySec) { __ptr_delaySec in
                            withUnsafeArgumentPackPointer(__ptr_actionName, __ptr_frequency, __ptr_amplitude, __ptr_durationSec, __ptr_delaySec) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_trigger_haptic_pulse,
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

    public var tracker: Godot.GodotStringName {
        get {
            __getTracker()
        }
        set {
            __setTracker(
                trackerName: newValue
            )
        }
    }

    public var poseName: Godot.GodotStringName {
        get {
            __getPoseName()
        }
        set {
            __setPoseName(
                pose: newValue
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