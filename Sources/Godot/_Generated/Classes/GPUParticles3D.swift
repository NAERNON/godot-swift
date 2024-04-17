//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class GPUParticles3D: GeometryInstance3D {
    public enum DrawOrder: UInt32, GodotEnum {
        case index = 0
        case lifetime = 1
        case reverseLifetime = 2
        case viewDepth = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Index", 0),
            ("Lifetime", 1),
            ("Reverse Lifetime", 2),
            ("View Depth", 3),]
        }
    }

    public enum EmitFlags: UInt32, GodotEnum {
        case position = 1
        case rotationScale = 2
        case velocity = 4
        case color = 8
        case custom = 16

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Position", 1),
            ("Rotation Scale", 2),
            ("Velocity", 4),
            ("Color", 8),
            ("Custom", 16),]
        }
    }

    public enum TransformAlign: UInt32, GodotEnum {
        case disabled = 0
        case zBillboard = 1
        case yToVelocity = 2
        case zBillboardYToVelocity = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Z Billboard", 1),
            ("Y To Velocity", 2),
            ("Z Billboard Y To Velocity", 3),]
        }
    }

    public func finished() {
        _ = finishedSignal.emit()
    }

    public lazy var finishedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "finished") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public static let maxDrawPasses: Int = 4

    internal static var __method_binding_set_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emitting").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEmitting(
        _ emitting: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: emitting) { __ptr_emitting in
            withUnsafeArgumentPackPointer(__ptr_emitting) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_emitting,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_amount").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setAmount(
        _ amount: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: amount) { __ptr_amount in
            withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_amount,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lifetime").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setLifetime(
        secs: Double
    ) {
        withTransferrableUnsafeRawPointer(to: secs) { __ptr_secs in
            withUnsafeArgumentPackPointer(__ptr_secs) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lifetime,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_one_shot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_one_shot").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setOneShot(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_one_shot,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_pre_process_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pre_process_time").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setPreProcessTime(
        secs: Double
    ) {
        withTransferrableUnsafeRawPointer(to: secs) { __ptr_secs in
            withUnsafeArgumentPackPointer(__ptr_secs) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_pre_process_time,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_explosiveness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_explosiveness_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setExplosivenessRatio(
        _ ratio: Double
    ) {
        withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
            withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_explosiveness_ratio,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_randomness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_randomness_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setRandomnessRatio(
        _ ratio: Double
    ) {
        withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
            withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_randomness_ratio,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_visibility_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_aabb").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 259215842)!
        }
        }
    }()

    private func __setVisibilityAABB(
        _ aabb: Godot.AABB
    ) {
        withTransferrableUnsafeRawPointer(to: aabb) { __ptr_aabb in
            withUnsafeArgumentPackPointer(__ptr_aabb) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_aabb,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_use_local_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_local_coordinates").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseLocalCoordinates(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_local_coordinates,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_fixed_fps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_fps").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFixedFps(
        _ fps: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: fps) { __ptr_fps in
            withUnsafeArgumentPackPointer(__ptr_fps) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fixed_fps,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_fractional_delta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fractional_delta").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setFractionalDelta(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fractional_delta,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interpolate").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setInterpolate(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_interpolate,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_process_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_material").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()

    private func __setProcessMaterial(
        _ material: Godot.Material?
    ) {
        withTransferrableUnsafeRawPointer(to: material) { __ptr_material in
            withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
                withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_process_material,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_speed_scale").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setSpeedScale(
        _ scale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
            withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_speed_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_collision_base_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_base_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setCollisionBaseSize(
        _ size: Double
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_base_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_interp_to_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interp_to_end").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setInterpToEnd(
        interp: Double
    ) {
        withTransferrableUnsafeRawPointer(to: interp) { __ptr_interp in
            withUnsafeArgumentPackPointer(__ptr_interp) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_interp_to_end,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_emitting").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isEmitting() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_emitting,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_amount").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getAmount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_amount,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lifetime").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getLifetime() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_lifetime,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_one_shot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_one_shot").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getOneShot() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_one_shot,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_pre_process_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pre_process_time").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getPreProcessTime() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_pre_process_time,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_explosiveness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_explosiveness_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getExplosivenessRatio() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_explosiveness_ratio,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_randomness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_randomness_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getRandomnessRatio() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_randomness_ratio,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_visibility_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_aabb").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()

    private func __getVisibilityAABB() -> Godot.AABB {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_aabb,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_use_local_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_local_coordinates").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getUseLocalCoordinates() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_use_local_coordinates,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_fixed_fps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_fps").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFixedFps() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fixed_fps,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_fractional_delta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fractional_delta").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getFractionalDelta() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fractional_delta,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interpolate").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getInterpolate() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_interpolate,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_process_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_process_material").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()

    private func __getProcessMaterial() -> Godot.Material? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_process_material,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_speed_scale").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getSpeedScale() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_speed_scale,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_collision_base_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_base_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getCollisionBaseSize() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_base_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_interp_to_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interp_to_end").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getInterpToEnd() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_interp_to_end,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_order").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1208074815)!
        }
        }
    }()

    private func __setDrawOrder(
        _ order: Godot.GPUParticles3D.DrawOrder
    ) {
        withTransferrableUnsafeRawPointer(to: order) { __ptr_order in
            withUnsafeArgumentPackPointer(__ptr_order) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_order,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_draw_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_draw_order").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3770381780)!
        }
        }
    }()

    private func __getDrawOrder() -> Godot.GPUParticles3D.DrawOrder {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_draw_order,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_passes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_passes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setDrawPasses(
        _ passes: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: passes) { __ptr_passes in
            withUnsafeArgumentPackPointer(__ptr_passes) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_passes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_draw_pass_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_pass_mesh").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969122797)!
        }
        }
    }()

    public func setDrawPassMesh(
        pass: Int32,
        mesh: Godot.Mesh?
    ) {
        withTransferrableUnsafeRawPointer(to: pass) { __ptr_pass in
            withTransferrableUnsafeRawPointer(to: mesh) { __ptr_mesh in
                withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
                    withUnsafeArgumentPackPointer(__ptr_pass, _ptr___ptr_mesh) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_draw_pass_mesh,
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

    internal static var __method_binding_get_draw_passes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_draw_passes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getDrawPasses() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_draw_passes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_draw_pass_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_draw_pass_mesh").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1576363275)!
        }
        }
    }()

    private func __getDrawPassMesh(
        pass: Int32
    ) -> Godot.Mesh? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: pass) { __ptr_pass in
                withUnsafeArgumentPackPointer(__ptr_pass) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_draw_pass_mesh,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skin").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3971435618)!
        }
        }
    }()

    private func __setSkin(
        _ skin: Godot.Skin?
    ) {
        withTransferrableUnsafeRawPointer(to: skin) { __ptr_skin in
            withUnsafePointer(to: __ptr_skin) { _ptr___ptr_skin in
                withUnsafeArgumentPackPointer(_ptr___ptr_skin) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_skin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skin").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2074563878)!
        }
        }
    }()

    private func __getSkin() -> Godot.Skin? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_skin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_restart: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "restart").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func restart() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_restart,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_capture_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "capture_aabb").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()

    public func captureAABB() -> Godot.AABB {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_capture_aabb,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_sub_emitter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sub_emitter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setSubEmitter(
        path: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
            withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_sub_emitter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_sub_emitter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sub_emitter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getSubEmitter() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_sub_emitter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_emit_particle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "emit_particle").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 992173727)!
        }
        }
    }()

    public func emitParticle(
        xform: Godot.Transform3D,
        velocity: Godot.Vector3,
        color: Godot.Color,
        custom: Godot.Color,
        flags: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: xform) { __ptr_xform in
            withTransferrableUnsafeRawPointer(to: velocity) { __ptr_velocity in
                withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                    withTransferrableUnsafeRawPointer(to: custom) { __ptr_custom in
                        withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                            withUnsafeArgumentPackPointer(__ptr_xform, __ptr_velocity, __ptr_color, __ptr_custom, __ptr_flags) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_emit_particle,
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

    internal static var __method_binding_set_trail_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trail_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setTrailEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_trail_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_trail_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trail_lifetime").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setTrailLifetime(
        secs: Double
    ) {
        withTransferrableUnsafeRawPointer(to: secs) { __ptr_secs in
            withUnsafeArgumentPackPointer(__ptr_secs) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_trail_lifetime,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_trail_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_trail_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isTrailEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_trail_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_trail_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_trail_lifetime").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getTrailLifetime() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_trail_lifetime,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_transform_align: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transform_align").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3892425954)!
        }
        }
    }()

    private func __setTransformAlign(
        _ align: Godot.GPUParticles3D.TransformAlign
    ) {
        withTransferrableUnsafeRawPointer(to: align) { __ptr_align in
            withUnsafeArgumentPackPointer(__ptr_align) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_transform_align,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_transform_align: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform_align").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2100992166)!
        }
        }
    }()

    private func __getTransformAlign() -> Godot.GPUParticles3D.TransformAlign {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_transform_align,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_convert_from_particles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convert_from_particles").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    public func convertFromParticles(
        _ particles: Godot.Node?
    ) {
        withTransferrableUnsafeRawPointer(to: particles) { __ptr_particles in
            withUnsafePointer(to: __ptr_particles) { _ptr___ptr_particles in
                withUnsafeArgumentPackPointer(_ptr___ptr_particles) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_convert_from_particles,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_amount_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_amount_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setAmountRatio(
        _ ratio: Double
    ) {
        withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
            withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_amount_ratio,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_amount_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_amount_ratio").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getAmountRatio() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_amount_ratio,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
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

    public var amountRatio: Double {
        get {
            __getAmountRatio()
        }
        set {
            __setAmountRatio(
                newValue
            )
        }
    }

    public var subEmitter: Godot.NodePath {
        get {
            __getSubEmitter()
        }
        set {
            __setSubEmitter(
                path: newValue
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

    public var interpToEnd: Double {
        get {
            __getInterpToEnd()
        }
        set {
            __setInterpToEnd(
                interp: newValue
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

    public var interpolate: Bool {
        get {
            __getInterpolate()
        }
        set {
            __setInterpolate(
                enable: newValue
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

    public var collisionBaseSize: Double {
        get {
            __getCollisionBaseSize()
        }
        set {
            __setCollisionBaseSize(
                newValue
            )
        }
    }

    public var visibilityAABB: Godot.AABB {
        get {
            __getVisibilityAABB()
        }
        set {
            __setVisibilityAABB(
                newValue
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

    public var drawOrder: Godot.GPUParticles3D.DrawOrder {
        get {
            __getDrawOrder()
        }
        set {
            __setDrawOrder(
                newValue
            )
        }
    }

    public var transformAlign: Godot.GPUParticles3D.TransformAlign {
        get {
            __getTransformAlign()
        }
        set {
            __setTransformAlign(
                newValue
            )
        }
    }

    public var isTrailEnabled: Bool {
        get {
            __isTrailEnabled()
        }
        set {
            __setTrailEnabled(
                newValue
            )
        }
    }

    public var trailLifetime: Double {
        get {
            __getTrailLifetime()
        }
        set {
            __setTrailLifetime(
                secs: newValue
            )
        }
    }

    public var processMaterial: Godot.Material? {
        get {
            __getProcessMaterial()
        }
        set {
            __setProcessMaterial(
                newValue
            )
        }
    }

    public var drawPasses: Int32 {
        get {
            __getDrawPasses()
        }
        set {
            __setDrawPasses(
                newValue
            )
        }
    }

    public var drawPass1: Godot.Mesh? {
        get {
            __getDrawPassMesh(
                pass: 0
            )
        }
    }

    public var drawPass2: Godot.Mesh? {
        get {
            __getDrawPassMesh(
                pass: 1
            )
        }
    }

    public var drawPass3: Godot.Mesh? {
        get {
            __getDrawPassMesh(
                pass: 2
            )
        }
    }

    public var drawPass4: Godot.Mesh? {
        get {
            __getDrawPassMesh(
                pass: 3
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