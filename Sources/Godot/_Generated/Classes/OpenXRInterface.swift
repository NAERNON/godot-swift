//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class OpenXRInterface: XRInterface {
    public enum Hand: UInt32, GodotEnum {
        case left = 0
        case right = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Left", 0),
            ("Right", 1),
            ("Max", 2),]
        }
    }
    public enum HandMotionRange: UInt32, GodotEnum {
        case unobstructed = 0
        case conformToController = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unobstructed", 0),
            ("Conform To Controller", 1),
            ("Max", 2),]
        }
    }
    public enum HandJoints: UInt32, GodotEnum {
        case palm = 0
        case wrist = 1
        case thumbMetacarpal = 2
        case thumbProximal = 3
        case thumbDistal = 4
        case thumbTip = 5
        case indexMetacarpal = 6
        case indexProximal = 7
        case indexIntermediate = 8
        case indexDistal = 9
        case indexTip = 10
        case middleMetacarpal = 11
        case middleProximal = 12
        case middleIntermediate = 13
        case middleDistal = 14
        case middleTip = 15
        case ringMetacarpal = 16
        case ringProximal = 17
        case ringIntermediate = 18
        case ringDistal = 19
        case ringTip = 20
        case littleMetacarpal = 21
        case littleProximal = 22
        case littleIntermediate = 23
        case littleDistal = 24
        case littleTip = 25
        case max = 26
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Palm", 0),
            ("Wrist", 1),
            ("Thumb Metacarpal", 2),
            ("Thumb Proximal", 3),
            ("Thumb Distal", 4),
            ("Thumb Tip", 5),
            ("Index Metacarpal", 6),
            ("Index Proximal", 7),
            ("Index Intermediate", 8),
            ("Index Distal", 9),
            ("Index Tip", 10),
            ("Middle Metacarpal", 11),
            ("Middle Proximal", 12),
            ("Middle Intermediate", 13),
            ("Middle Distal", 14),
            ("Middle Tip", 15),
            ("Ring Metacarpal", 16),
            ("Ring Proximal", 17),
            ("Ring Intermediate", 18),
            ("Ring Distal", 19),
            ("Ring Tip", 20),
            ("Little Metacarpal", 21),
            ("Little Proximal", 22),
            ("Little Intermediate", 23),
            ("Little Distal", 24),
            ("Little Tip", 25),
            ("Max", 26),]
        }
    }
    public struct HandJointFlags: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let orientationValid: Self = .init(rawValue: 1)
        public static let orientationTracked: Self = .init(rawValue: 2)
        public static let positionValid: Self = .init(rawValue: 4)
        public static let positionTracked: Self = .init(rawValue: 8)
        public static let linearVelocityValid: Self = .init(rawValue: 16)
        public static let angularVelocityValid: Self = .init(rawValue: 32)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Orientation Valid", 1),
            ("Orientation Tracked", 2),
            ("Position Valid", 4),
            ("Position Tracked", 8),
            ("Linear Velocity Valid", 16),
            ("Angular Velocity Valid", 32),]
        }
    }

    public func sessionBegun() {
        _ = sessionBegunSignal.emit()
    }
    public lazy var sessionBegunSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_begun") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionStopping() {
        _ = sessionStoppingSignal.emit()
    }
    public lazy var sessionStoppingSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_stopping") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionFocussed() {
        _ = sessionFocussedSignal.emit()
    }
    public lazy var sessionFocussedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_focussed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func sessionVisible() {
        _ = sessionVisibleSignal.emit()
    }
    public lazy var sessionVisibleSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "session_visible") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func poseRecentered() {
        _ = poseRecenteredSignal.emit()
    }
    public lazy var poseRecenteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "pose_recentered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_get_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDisplayRefreshRate() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_display_refresh_rate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_display_refresh_rate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_display_refresh_rate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDisplayRefreshRate(_ refreshRate: Double) {
        refreshRate.withGodotUnsafeRawPointer { __ptr_refreshRate in
        withUnsafeArgumentPackPointer(__ptr_refreshRate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_display_refresh_rate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_render_target_size_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_target_size_multiplier").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRenderTargetSizeMultiplier() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_render_target_size_multiplier,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_render_target_size_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_render_target_size_multiplier").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRenderTargetSizeMultiplier(_ multiplier: Double) {
        multiplier.withGodotUnsafeRawPointer { __ptr_multiplier in
        withUnsafeArgumentPackPointer(__ptr_multiplier) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_render_target_size_multiplier,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_foveation_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_foveation_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isFoveationSupported() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_foveation_supported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_foveation_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_foveation_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getFoveationLevel() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_foveation_level,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_foveation_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_foveation_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setFoveationLevel(_ foveationLevel: Int32) {
        foveationLevel.withGodotUnsafeRawPointer { __ptr_foveationLevel in
        withUnsafeArgumentPackPointer(__ptr_foveationLevel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_foveation_level,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_foveation_dynamic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_foveation_dynamic").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFoveationDynamic() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_foveation_dynamic,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_foveation_dynamic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_foveation_dynamic").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFoveationDynamic(_ foveationDynamic: Bool) {
        foveationDynamic.withGodotUnsafeRawPointer { __ptr_foveationDynamic in
        withUnsafeArgumentPackPointer(__ptr_foveationDynamic) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_foveation_dynamic,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_action_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_action_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isActionSetActive(name: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_action_set_active,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_action_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_action_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()
    public func setActionSetActive(name: Godot.GodotString, active: Bool) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_action_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_action_sets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_sets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func actionSets() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_sets,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_available_display_refresh_rates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_available_display_refresh_rates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func availableDisplayRefreshRates() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_available_display_refresh_rates,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_motion_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_motion_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 855158159)!
        }
        }
    }()
    public func setMotionRange(hand: Godot.OpenXRInterface.Hand, motionRange: Godot.OpenXRInterface.HandMotionRange) {
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        motionRange.withGodotUnsafeRawPointer { __ptr_motionRange in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_motionRange) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_motion_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_motion_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_motion_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3955838114)!
        }
        }
    }()
    public func motionRange(hand: Godot.OpenXRInterface.Hand) -> Godot.OpenXRInterface.HandMotionRange {
        Godot.OpenXRInterface.HandMotionRange.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        withUnsafeArgumentPackPointer(__ptr_hand) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_motion_range,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_hand_joint_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 720567706)!
        }
        }
    }()
    public func handJointFlags(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Godot.OpenXRInterface.HandJointFlags {
        Godot.OpenXRInterface.HandJointFlags.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_flags,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_hand_joint_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1974618321)!
        }
        }
    }()
    public func handJointRotation(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Godot.Quaternion {
        Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_rotation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_hand_joint_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3529194242)!
        }
        }
    }()
    public func handJointPosition(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_hand_joint_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 901522724)!
        }
        }
    }()
    public func handJointRadius(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_radius,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_hand_joint_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3529194242)!
        }
        }
    }()
    public func handJointLinearVelocity(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_linear_velocity,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_hand_joint_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hand_joint_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3529194242)!
        }
        }
    }()
    public func handJointAngularVelocity(hand: Godot.OpenXRInterface.Hand, joint: Godot.OpenXRInterface.HandJoints) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        joint.withGodotUnsafeRawPointer { __ptr_joint in
        withUnsafeArgumentPackPointer(__ptr_hand, __ptr_joint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hand_joint_angular_velocity,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_is_hand_tracking_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_hand_tracking_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isHandTrackingSupported() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_hand_tracking_supported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_eye_gaze_interaction_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_eye_gaze_interaction_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isEyeGazeInteractionSupported() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_eye_gaze_interaction_supported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var displayRefreshRate: Double {
        get {
            __getDisplayRefreshRate()
        }
        set {
            __setDisplayRefreshRate(
                newValue
            )
        }
    }

    public var renderTargetSizeMultiplier: Double {
        get {
            __getRenderTargetSizeMultiplier()
        }
        set {
            __setRenderTargetSizeMultiplier(
                newValue
            )
        }
    }

    public var foveationLevel: Int32 {
        get {
            __getFoveationLevel()
        }
        set {
            __setFoveationLevel(
                newValue
            )
        }
    }

    public var foveationDynamic: Bool {
        get {
            __getFoveationDynamic()
        }
        set {
            __setFoveationDynamic(
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