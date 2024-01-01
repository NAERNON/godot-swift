//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class XRPositionalTracker: RefCounted {
    public enum TrackerHand: UInt32, GodotEnum {
        case unknown = 0
        case left = 1
        case right = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unknown", 0),
            ("Left", 1),
            ("Right", 2),]
        }
    }

    public struct PoseChangedSignalInput: Godot.SignalInput {
        public let pose: Godot.XRPose?
        fileprivate init(pose: Godot.XRPose?) {
            self.pose = pose
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, pose)
        }
    }
    public func poseChanged(pose: Godot.XRPose?) {
        _ = poseChangedSignal.emit(.init(pose: pose))
    }
    public lazy var poseChangedSignal: Godot.SignalEmitter<PoseChangedSignalInput> = {
        .init(object: self, signalName: "pose_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PoseChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(pose: Godot.XRPose?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PoseChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PoseChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PoseLostTrackingSignalInput: Godot.SignalInput {
        public let pose: Godot.XRPose?
        fileprivate init(pose: Godot.XRPose?) {
            self.pose = pose
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, pose)
        }
    }
    public func poseLostTracking(pose: Godot.XRPose?) {
        _ = poseLostTrackingSignal.emit(.init(pose: pose))
    }
    public lazy var poseLostTrackingSignal: Godot.SignalEmitter<PoseLostTrackingSignalInput> = {
        .init(object: self, signalName: "pose_lost_tracking") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PoseLostTrackingSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(pose: Godot.XRPose?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PoseLostTrackingSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PoseLostTrackingSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ButtonPressedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString
        fileprivate init(name: Godot.GodotString) {
            self.name = name
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, name)
        }
    }
    public func buttonPressed(name: Godot.GodotString) {
        _ = buttonPressedSignal.emit(.init(name: name))
    }
    public lazy var buttonPressedSignal: Godot.SignalEmitter<ButtonPressedSignalInput> = {
        .init(object: self, signalName: "button_pressed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ButtonReleasedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString
        fileprivate init(name: Godot.GodotString) {
            self.name = name
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, name)
        }
    }
    public func buttonReleased(name: Godot.GodotString) {
        _ = buttonReleasedSignal.emit(.init(name: name))
    }
    public lazy var buttonReleasedSignal: Godot.SignalEmitter<ButtonReleasedSignalInput> = {
        .init(object: self, signalName: "button_released") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InputFloatChangedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString
        public let value: Double
        fileprivate init(name: Godot.GodotString, value: Double) {
            self.name = name
            self.value = value
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, name, value)
        }
    }
    public func inputFloatChanged(name: Godot.GodotString, value: Double) {
        _ = inputFloatChangedSignal.emit(.init(name: name,
                value: value))
    }
    public lazy var inputFloatChangedSignal: Godot.SignalEmitter<InputFloatChangedSignalInput> = {
        .init(object: self, signalName: "input_float_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Double.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InputVector2ChangedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString
        public let vector: Godot.Vector2
        fileprivate init(name: Godot.GodotString, vector: Godot.Vector2) {
            self.name = name
            self.vector = vector
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, name, vector)
        }
    }
    public func inputVector2Changed(name: Godot.GodotString, vector: Godot.Vector2) {
        _ = inputVector2ChangedSignal.emit(.init(name: name,
                vector: vector))
    }
    public lazy var inputVector2ChangedSignal: Godot.SignalEmitter<InputVector2ChangedSignalInput> = {
        .init(object: self, signalName: "input_vector2_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    vector: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ProfileChangedSignalInput: Godot.SignalInput {
        public let role: Godot.GodotString
        fileprivate init(role: Godot.GodotString) {
            self.role = role
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, role)
        }
    }
    public func profileChanged(role: Godot.GodotString) {
        _ = profileChangedSignal.emit(.init(role: role))
    }
    public lazy var profileChangedSignal: Godot.SignalEmitter<ProfileChangedSignalInput> = {
        .init(object: self, signalName: "profile_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ProfileChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(role: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ProfileChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ProfileChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_get_tracker_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2784508102)!
        }
        }
    }()
    private func __getTrackerType() -> Godot.XRServer.TrackerType {
        Godot.XRServer.TrackerType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tracker_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3055763575)!
        }
        }
    }()
    private func __setTrackerType(_ type: Godot.XRServer.TrackerType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tracker_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tracker_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getTrackerName() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tracker_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setTrackerName(_ name: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tracker_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tracker_desc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_desc").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getTrackerDesc() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_desc,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tracker_desc: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker_desc").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setTrackerDesc(description: Godot.GodotString) {
        description.withGodotUnsafeRawPointer { __ptr_description in
        withUnsafeArgumentPackPointer(__ptr_description) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tracker_desc,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tracker_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getTrackerProfile() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_profile,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tracker_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setTrackerProfile(_ profile: Godot.GodotString) {
        profile.withGodotUnsafeRawPointer { __ptr_profile in
        withUnsafeArgumentPackPointer(__ptr_profile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tracker_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tracker_hand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_hand").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4181770860)!
        }
        }
    }()
    private func __getTrackerHand() -> Godot.XRPositionalTracker.TrackerHand {
        Godot.XRPositionalTracker.TrackerHand.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_hand,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_tracker_hand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker_hand").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3904108980)!
        }
        }
    }()
    private func __setTrackerHand(_ hand: Godot.XRPositionalTracker.TrackerHand) {
        hand.withGodotUnsafeRawPointer { __ptr_hand in
        withUnsafeArgumentPackPointer(__ptr_hand) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tracker_hand,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_pose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()
    public func hasPose(name: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_pose,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4099720006)!
        }
        }
    }()
    public func pose(name: Godot.GodotStringName) -> Godot.XRPose? {
        Godot.XRPose?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pose,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_invalidate_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "invalidate_pose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func invalidatePose(name: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_invalidate_pose,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pose").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3451230163)!
        }
        }
    }()
    public func setPose(name: Godot.GodotStringName, transform: Godot.Transform3D, linearVelocity: Godot.Vector3, angularVelocity: Godot.Vector3, trackingConfidence: Godot.XRPose.TrackingConfidence) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        linearVelocity.withGodotUnsafeRawPointer { __ptr_linearVelocity in
        angularVelocity.withGodotUnsafeRawPointer { __ptr_angularVelocity in
        trackingConfidence.withGodotUnsafeRawPointer { __ptr_trackingConfidence in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_transform, __ptr_linearVelocity, __ptr_angularVelocity, __ptr_trackingConfidence) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pose,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func input(name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_input,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setInput<Value: VariantStorableIn>(name: Godot.GodotStringName, value: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var trackerType: Godot.XRServer.TrackerType {
        get {
            __getTrackerType()
        }
        set {
            __setTrackerType(
                newValue
            )
        }
    }

    public var trackerName: Godot.GodotStringName {
        get {
            __getTrackerName()
        }
        set {
            __setTrackerName(
                newValue
            )
        }
    }

    public var trackerDesc: Godot.GodotString {
        get {
            __getTrackerDesc()
        }
        set {
            __setTrackerDesc(
                description: newValue
            )
        }
    }

    public var trackerProfile: Godot.GodotString {
        get {
            __getTrackerProfile()
        }
        set {
            __setTrackerProfile(
                newValue
            )
        }
    }

    public var trackerHand: Godot.XRPositionalTracker.TrackerHand {
        get {
            __getTrackerHand()
        }
        set {
            __setTrackerHand(
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