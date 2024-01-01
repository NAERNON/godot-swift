//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CPUParticles3D: GeometryInstance3D {
    public enum DrawOrder: UInt32, GodotEnum {
        case index = 0
        case lifetime = 1
        case viewDepth = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Index", 0),
            ("Lifetime", 1),
            ("View Depth", 2),]
        }
    }
    public enum Parameter: UInt32, GodotEnum {
        case initialLinearVelocity = 0
        case angularVelocity = 1
        case orbitVelocity = 2
        case linearAccel = 3
        case radialAccel = 4
        case tangentialAccel = 5
        case damping = 6
        case angle = 7
        case scale = 8
        case hueVariation = 9
        case animSpeed = 10
        case animOffset = 11
        case max = 12
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Initial Linear Velocity", 0),
            ("Angular Velocity", 1),
            ("Orbit Velocity", 2),
            ("Linear Accel", 3),
            ("Radial Accel", 4),
            ("Tangential Accel", 5),
            ("Damping", 6),
            ("Angle", 7),
            ("Scale", 8),
            ("Hue Variation", 9),
            ("Anim Speed", 10),
            ("Anim Offset", 11),
            ("Max", 12),]
        }
    }
    public enum ParticleFlags: UInt32, GodotEnum {
        case alignYToVelocity = 0
        case rotateY = 1
        case disableZ = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Align Y To Velocity", 0),
            ("Rotate Y", 1),
            ("Disable Z", 2),
            ("Max", 3),]
        }
    }
    public enum EmissionShape: UInt32, GodotEnum {
        case point = 0
        case sphere = 1
        case sphereSurface = 2
        case box = 3
        case points = 4
        case directedPoints = 5
        case ring = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Point", 0),
            ("Sphere", 1),
            ("Sphere Surface", 2),
            ("Box", 3),
            ("Points", 4),
            ("Directed Points", 5),
            ("Ring", 6),
            ("Max", 7),]
        }
    }

    public struct FinishedSignalInput: Godot.SignalInput {
        fileprivate init() {

        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName)
        }
    }
    public func finished() {
        _ = finishedSignal.emit(.init())
    }
    public lazy var finishedSignal: Godot.SignalEmitter<FinishedSignalInput> = {
        .init(object: self, signalName: "finished") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FinishedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FinishedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FinishedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_set_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emitting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEmitting(_ emitting: Bool) {
        emitting.withGodotUnsafeRawPointer { __ptr_emitting in
        withUnsafeArgumentPackPointer(__ptr_emitting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emitting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_amount").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setAmount(_ amount: Int32) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_amount,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lifetime").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLifetime(secs: Double) {
        secs.withGodotUnsafeRawPointer { __ptr_secs in
        withUnsafeArgumentPackPointer(__ptr_secs) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_lifetime,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_one_shot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_one_shot").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setOneShot(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_one_shot,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_pre_process_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pre_process_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPreProcessTime(secs: Double) {
        secs.withGodotUnsafeRawPointer { __ptr_secs in
        withUnsafeArgumentPackPointer(__ptr_secs) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pre_process_time,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_explosiveness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_explosiveness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setExplosivenessRatio(_ ratio: Double) {
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_explosiveness_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_randomness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_randomness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRandomnessRatio(_ ratio: Double) {
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_randomness_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_lifetime_randomness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lifetime_randomness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLifetimeRandomness(random: Double) {
        random.withGodotUnsafeRawPointer { __ptr_random in
        withUnsafeArgumentPackPointer(__ptr_random) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_lifetime_randomness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_use_local_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_local_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseLocalCoordinates(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_local_coordinates,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_fixed_fps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_fps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setFixedFps(_ fps: Int32) {
        fps.withGodotUnsafeRawPointer { __ptr_fps in
        withUnsafeArgumentPackPointer(__ptr_fps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fixed_fps,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_fractional_delta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractional_delta").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFractionalDelta(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fractional_delta,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_speed_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpeedScale(_ scale: Double) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_speed_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_emitting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isEmitting() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_emitting,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_amount").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getAmount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_amount,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lifetime").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLifetime() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_lifetime,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_one_shot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_one_shot").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getOneShot() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_one_shot,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_pre_process_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pre_process_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPreProcessTime() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pre_process_time,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_explosiveness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_explosiveness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getExplosivenessRatio() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_explosiveness_ratio,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_randomness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_randomness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRandomnessRatio() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_randomness_ratio,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_lifetime_randomness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lifetime_randomness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLifetimeRandomness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_lifetime_randomness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_use_local_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_local_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getUseLocalCoordinates() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_use_local_coordinates,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_fixed_fps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_fps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getFixedFps() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_fixed_fps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_fractional_delta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractional_delta").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFractionalDelta() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_fractional_delta,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_speed_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpeedScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_speed_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1427401774)!
        }
        }
    }()
    private func __setDrawOrder(_ order: Godot.CPUParticles3D.DrawOrder) {
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_order) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_order,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_draw_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_draw_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321900776)!
        }
        }
    }()
    private func __getDrawOrder() -> Godot.CPUParticles3D.DrawOrder {
        Godot.CPUParticles3D.DrawOrder.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_draw_order,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 194775623)!
        }
        }
    }()
    private func __setMesh(_ mesh: Godot.Mesh?) {
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

    private static var __method_binding_get_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1808005922)!
        }
        }
    }()
    private func __getMesh() -> Godot.Mesh? {
        Godot.Mesh?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mesh,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_restart: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "restart").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func restart() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_restart,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setDirection(_ direction: Godot.Vector3) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getDirection() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_spread: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_spread").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpread(degrees: Double) {
        degrees.withGodotUnsafeRawPointer { __ptr_degrees in
        withUnsafeArgumentPackPointer(__ptr_degrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_spread,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_spread: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spread").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpread() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_spread,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_flatness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flatness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFlatness(amount: Double) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flatness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_flatness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flatness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFlatness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_flatness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_param_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 557936109)!
        }
        }
    }()
    public func setParamMin(param: Godot.CPUParticles3D.Parameter, value: Double) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_min,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_param_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 597646162)!
        }
        }
    }()
    private func __getParamMin(param: Godot.CPUParticles3D.Parameter) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_min,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_param_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 557936109)!
        }
        }
    }()
    public func setParamMax(param: Godot.CPUParticles3D.Parameter, value: Double) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_max,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_param_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 597646162)!
        }
        }
    }()
    private func __getParamMax(param: Godot.CPUParticles3D.Parameter) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_max,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_param_curve: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param_curve").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4044142537)!
        }
        }
    }()
    public func setParamCurve(param: Godot.CPUParticles3D.Parameter, curve: Godot.Curve?) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        curve.withGodotUnsafeRawPointer { __ptr_curve in
        withUnsafePointer(to: __ptr_curve) { _ptr___ptr_curve in
        withUnsafeArgumentPackPointer(__ptr_param, _ptr___ptr_curve) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_param_curve,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_param_curve: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param_curve").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4132790277)!
        }
        }
    }()
    private func __getParamCurve(param: Godot.CPUParticles3D.Parameter) -> Godot.Curve? {
        Godot.Curve?.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_param_curve,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color_ramp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_ramp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2756054477)!
        }
        }
    }()
    private func __setColorRamp(_ ramp: Godot.Gradient?) {
        ramp.withGodotUnsafeRawPointer { __ptr_ramp in
        withUnsafePointer(to: __ptr_ramp) { _ptr___ptr_ramp in
        withUnsafeArgumentPackPointer(_ptr___ptr_ramp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color_ramp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_color_ramp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_ramp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 132272999)!
        }
        }
    }()
    private func __getColorRamp() -> Godot.Gradient? {
        Godot.Gradient?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_ramp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color_initial_ramp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_initial_ramp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2756054477)!
        }
        }
    }()
    private func __setColorInitialRamp(_ ramp: Godot.Gradient?) {
        ramp.withGodotUnsafeRawPointer { __ptr_ramp in
        withUnsafePointer(to: __ptr_ramp) { _ptr___ptr_ramp in
        withUnsafeArgumentPackPointer(_ptr___ptr_ramp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color_initial_ramp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_color_initial_ramp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_initial_ramp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 132272999)!
        }
        }
    }()
    private func __getColorInitialRamp() -> Godot.Gradient? {
        Godot.Gradient?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_initial_ramp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particle_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particle_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3515406498)!
        }
        }
    }()
    public func setParticleFlag(_ particleFlag: Godot.CPUParticles3D.ParticleFlags, enable: Bool) {
        particleFlag.withGodotUnsafeRawPointer { __ptr_particleFlag in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_particleFlag, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_particle_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_particle_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particle_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2845201987)!
        }
        }
    }()
    private func __getParticleFlag(_ particleFlag: Godot.CPUParticles3D.ParticleFlags) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        particleFlag.withGodotUnsafeRawPointer { __ptr_particleFlag in
        withUnsafeArgumentPackPointer(__ptr_particleFlag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_particle_flag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_emission_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 491823814)!
        }
        }
    }()
    private func __setEmissionShape(_ shape: Godot.CPUParticles3D.EmissionShape) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961454842)!
        }
        }
    }()
    private func __getEmissionShape() -> Godot.CPUParticles3D.EmissionShape {
        Godot.CPUParticles3D.EmissionShape.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_sphere_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_sphere_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionSphereRadius(_ radius: Double) {
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_sphere_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_sphere_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_sphere_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionSphereRadius() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_sphere_radius,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_box_extents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_box_extents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setEmissionBoxExtents(_ extents: Godot.Vector3) {
        extents.withGodotUnsafeRawPointer { __ptr_extents in
        withUnsafeArgumentPackPointer(__ptr_extents) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_box_extents,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_box_extents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_box_extents").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getEmissionBoxExtents() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_box_extents,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 334873810)!
        }
        }
    }()
    private func __setEmissionPoints(array: Godot.PackedVector3Array) {
        array.withGodotUnsafeRawPointer { __ptr_array in
        withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_points,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()
    private func __getEmissionPoints() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_points,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_normals: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_normals").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 334873810)!
        }
        }
    }()
    private func __setEmissionNormals(array: Godot.PackedVector3Array) {
        array.withGodotUnsafeRawPointer { __ptr_array in
        withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_normals,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_normals: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_normals").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()
    private func __getEmissionNormals() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_normals,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3546319833)!
        }
        }
    }()
    private func __setEmissionColors(array: Godot.PackedColorArray) {
        array.withGodotUnsafeRawPointer { __ptr_array in
        withUnsafeArgumentPackPointer(__ptr_array) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1392750486)!
        }
        }
    }()
    private func __getEmissionColors() -> Godot.PackedColorArray {
        Godot.PackedColorArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_colors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_ring_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setEmissionRingAxis(_ axis: Godot.Vector3) {
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        withUnsafeArgumentPackPointer(__ptr_axis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_ring_axis,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_ring_axis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_axis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getEmissionRingAxis() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_ring_axis,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_ring_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingHeight(_ height: Double) {
        height.withGodotUnsafeRawPointer { __ptr_height in
        withUnsafeArgumentPackPointer(__ptr_height) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_ring_height,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_ring_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingHeight() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_ring_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_ring_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingRadius(_ radius: Double) {
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_ring_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_ring_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingRadius() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_ring_radius,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_ring_inner_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionRingInnerRadius(_ innerRadius: Double) {
        innerRadius.withGodotUnsafeRawPointer { __ptr_innerRadius in
        withUnsafeArgumentPackPointer(__ptr_innerRadius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_emission_ring_inner_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_ring_inner_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_ring_inner_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionRingInnerRadius() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_emission_ring_inner_radius,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getGravity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gravity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setGravity(accelVec: Godot.Vector3) {
        accelVec.withGodotUnsafeRawPointer { __ptr_accelVec in
        withUnsafeArgumentPackPointer(__ptr_accelVec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gravity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_split_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_split_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __getSplitScale() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_split_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_split_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_split_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSplitScale(_ splitScale: Bool) {
        splitScale.withGodotUnsafeRawPointer { __ptr_splitScale in
        withUnsafeArgumentPackPointer(__ptr_splitScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_split_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scale_curve_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scale_curve_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2460114913)!
        }
        }
    }()
    private func __getScaleCurveX() -> Godot.Curve? {
        Godot.Curve?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scale_curve_x,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scale_curve_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scale_curve_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 270443179)!
        }
        }
    }()
    private func __setScaleCurveX(scaleCurve: Godot.Curve?) {
        scaleCurve.withGodotUnsafeRawPointer { __ptr_scaleCurve in
        withUnsafePointer(to: __ptr_scaleCurve) { _ptr___ptr_scaleCurve in
        withUnsafeArgumentPackPointer(_ptr___ptr_scaleCurve) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scale_curve_x,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_scale_curve_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scale_curve_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2460114913)!
        }
        }
    }()
    private func __getScaleCurveY() -> Godot.Curve? {
        Godot.Curve?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scale_curve_y,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scale_curve_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scale_curve_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 270443179)!
        }
        }
    }()
    private func __setScaleCurveY(scaleCurve: Godot.Curve?) {
        scaleCurve.withGodotUnsafeRawPointer { __ptr_scaleCurve in
        withUnsafePointer(to: __ptr_scaleCurve) { _ptr___ptr_scaleCurve in
        withUnsafeArgumentPackPointer(_ptr___ptr_scaleCurve) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scale_curve_y,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_scale_curve_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scale_curve_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2460114913)!
        }
        }
    }()
    private func __getScaleCurveZ() -> Godot.Curve? {
        Godot.Curve?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scale_curve_z,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scale_curve_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scale_curve_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 270443179)!
        }
        }
    }()
    private func __setScaleCurveZ(scaleCurve: Godot.Curve?) {
        scaleCurve.withGodotUnsafeRawPointer { __ptr_scaleCurve in
        withUnsafePointer(to: __ptr_scaleCurve) { _ptr___ptr_scaleCurve in
        withUnsafeArgumentPackPointer(_ptr___ptr_scaleCurve) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scale_curve_z,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_convert_from_particles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convert_from_particles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func convertFromParticles(_ particles: Godot.Node?) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafePointer(to: __ptr_particles) { _ptr___ptr_particles in
        withUnsafeArgumentPackPointer(_ptr___ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_convert_from_particles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var isEmitting: Bool {
        get {
            __isEmitting()
        }
        set {
            __setEmitting(
                newValue
            )
        }
    }

    public var amount: Int32 {
        get {
            __getAmount()
        }
        set {
            __setAmount(
                newValue
            )
        }
    }

    public var lifetime: Double {
        get {
            __getLifetime()
        }
        set {
            __setLifetime(
                secs: newValue
            )
        }
    }

    public var oneShot: Bool {
        get {
            __getOneShot()
        }
        set {
            __setOneShot(
                enable: newValue
            )
        }
    }

    public var preProcessTime: Double {
        get {
            __getPreProcessTime()
        }
        set {
            __setPreProcessTime(
                secs: newValue
            )
        }
    }

    public var speedScale: Double {
        get {
            __getSpeedScale()
        }
        set {
            __setSpeedScale(
                newValue
            )
        }
    }

    public var explosivenessRatio: Double {
        get {
            __getExplosivenessRatio()
        }
        set {
            __setExplosivenessRatio(
                newValue
            )
        }
    }

    public var randomnessRatio: Double {
        get {
            __getRandomnessRatio()
        }
        set {
            __setRandomnessRatio(
                newValue
            )
        }
    }

    public var lifetimeRandomness: Double {
        get {
            __getLifetimeRandomness()
        }
        set {
            __setLifetimeRandomness(
                random: newValue
            )
        }
    }

    public var fixedFps: Int32 {
        get {
            __getFixedFps()
        }
        set {
            __setFixedFps(
                newValue
            )
        }
    }

    public var fractionalDelta: Bool {
        get {
            __getFractionalDelta()
        }
        set {
            __setFractionalDelta(
                enable: newValue
            )
        }
    }

    public var useLocalCoordinates: Bool {
        get {
            __getUseLocalCoordinates()
        }
        set {
            __setUseLocalCoordinates(
                enable: newValue
            )
        }
    }

    public var drawOrder: Godot.CPUParticles3D.DrawOrder {
        get {
            __getDrawOrder()
        }
        set {
            __setDrawOrder(
                newValue
            )
        }
    }

    public var mesh: Godot.Mesh? {
        get {
            __getMesh()
        }
        set {
            __setMesh(
                newValue
            )
        }
    }

    public var emissionShape: Godot.CPUParticles3D.EmissionShape {
        get {
            __getEmissionShape()
        }
        set {
            __setEmissionShape(
                newValue
            )
        }
    }

    public var emissionSphereRadius: Double {
        get {
            __getEmissionSphereRadius()
        }
        set {
            __setEmissionSphereRadius(
                newValue
            )
        }
    }

    public var emissionBoxExtents: Godot.Vector3 {
        get {
            __getEmissionBoxExtents()
        }
        set {
            __setEmissionBoxExtents(
                newValue
            )
        }
    }

    public var emissionPoints: Godot.PackedVector3Array {
        get {
            __getEmissionPoints()
        }
        set {
            __setEmissionPoints(
                array: newValue
            )
        }
    }

    public var emissionNormals: Godot.PackedVector3Array {
        get {
            __getEmissionNormals()
        }
        set {
            __setEmissionNormals(
                array: newValue
            )
        }
    }

    public var emissionColors: Godot.PackedColorArray {
        get {
            __getEmissionColors()
        }
        set {
            __setEmissionColors(
                array: newValue
            )
        }
    }

    public var emissionRingAxis: Godot.Vector3 {
        get {
            __getEmissionRingAxis()
        }
        set {
            __setEmissionRingAxis(
                newValue
            )
        }
    }

    public var emissionRingHeight: Double {
        get {
            __getEmissionRingHeight()
        }
        set {
            __setEmissionRingHeight(
                newValue
            )
        }
    }

    public var emissionRingRadius: Double {
        get {
            __getEmissionRingRadius()
        }
        set {
            __setEmissionRingRadius(
                newValue
            )
        }
    }

    public var emissionRingInnerRadius: Double {
        get {
            __getEmissionRingInnerRadius()
        }
        set {
            __setEmissionRingInnerRadius(
                newValue
            )
        }
    }

    public var particleFlagAlignY: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 0)!
            )
        }
    }

    public var particleFlagRotateY: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 1)!
            )
        }
    }

    public var particleFlagDisableZ: Bool {
        get {
            __getParticleFlag(
                .init(rawValue: 2)!
            )
        }
    }

    public var direction: Godot.Vector3 {
        get {
            __getDirection()
        }
        set {
            __setDirection(
                newValue
            )
        }
    }

    public var spread: Double {
        get {
            __getSpread()
        }
        set {
            __setSpread(
                degrees: newValue
            )
        }
    }

    public var flatness: Double {
        get {
            __getFlatness()
        }
        set {
            __setFlatness(
                amount: newValue
            )
        }
    }

    public var gravity: Godot.Vector3 {
        get {
            __getGravity()
        }
        set {
            __setGravity(
                accelVec: newValue
            )
        }
    }

    public var initialVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 0)!
            )
        }
    }

    public var initialVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 0)!
            )
        }
    }

    public var angularVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var angularVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var angularVelocityCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var orbitVelocityMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var orbitVelocityMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var orbitVelocityCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var linearAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var linearAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var linearAccelCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var radialAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var radialAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var radialAccelCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var tangentialAccelMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var tangentialAccelMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var tangentialAccelCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var dampingMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var dampingMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var dampingCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var angleMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var angleMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var angleCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var scaleAmountMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var scaleAmountMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var scaleAmountCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var splitScale: Bool {
        get {
            __getSplitScale()
        }
        set {
            __setSplitScale(
                newValue
            )
        }
    }

    public var scaleCurveX: Godot.Curve? {
        get {
            __getScaleCurveX()
        }
        set {
            __setScaleCurveX(
                scaleCurve: newValue
            )
        }
    }

    public var scaleCurveY: Godot.Curve? {
        get {
            __getScaleCurveY()
        }
        set {
            __setScaleCurveY(
                scaleCurve: newValue
            )
        }
    }

    public var scaleCurveZ: Godot.Curve? {
        get {
            __getScaleCurveZ()
        }
        set {
            __setScaleCurveZ(
                scaleCurve: newValue
            )
        }
    }

    public var color: Godot.Color {
        get {
            __getColor()
        }
        set {
            __setColor(
                newValue
            )
        }
    }

    public var colorRamp: Godot.Gradient? {
        get {
            __getColorRamp()
        }
        set {
            __setColorRamp(
                newValue
            )
        }
    }

    public var colorInitialRamp: Godot.Gradient? {
        get {
            __getColorInitialRamp()
        }
        set {
            __setColorInitialRamp(
                newValue
            )
        }
    }

    public var hueVariationMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var hueVariationMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var hueVariationCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var animSpeedMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animSpeedMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animSpeedCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var animOffsetMin: Double {
        get {
            __getParamMin(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var animOffsetMax: Double {
        get {
            __getParamMax(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var animOffsetCurve: Godot.Curve? {
        get {
            __getParamCurve(
                param: .init(rawValue: 11)!
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