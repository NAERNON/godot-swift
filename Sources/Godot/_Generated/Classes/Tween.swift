//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Tween: RefCounted {
    public enum TweenProcessMode: UInt32, GodotEnum {
        case physics = 0
        case idle = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Physics", 0),
            ("Idle", 1),]
        }
    }
    public enum TweenPauseMode: UInt32, GodotEnum {
        case bound = 0
        case stop = 1
        case process = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bound", 0),
            ("Stop", 1),
            ("Process", 2),]
        }
    }
    public enum TransitionType: UInt32, GodotEnum {
        case linear = 0
        case sine = 1
        case quint = 2
        case quart = 3
        case quad = 4
        case expo = 5
        case elastic = 6
        case cubic = 7
        case circ = 8
        case bounce = 9
        case back = 10
        case spring = 11
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear", 0),
            ("Sine", 1),
            ("Quint", 2),
            ("Quart", 3),
            ("Quad", 4),
            ("Expo", 5),
            ("Elastic", 6),
            ("Cubic", 7),
            ("Circ", 8),
            ("Bounce", 9),
            ("Back", 10),
            ("Spring", 11),]
        }
    }
    public enum EaseType: UInt32, GodotEnum {
        case `in` = 0
        case out = 1
        case inOut = 2
        case outIn = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("In", 0),
            ("Out", 1),
            ("In Out", 2),
            ("Out In", 3),]
        }
    }

    @Emitter(signal: "step_finished", args: ("idx", Int))
    public struct StepFinished {
    }

    @Emitter(signal: "loop_finished", args: ("loopCount", Int))
    public struct LoopFinished {
    }

    @Emitter(signal: "finished")
    public struct Finished {
    }

    private static var __method_binding_tween_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4049770449)!
        }
        }
    }()
    public func tweenProperty<Value: VariantEncodable>(object: Godot.Object?, property: Godot.NodePath, finalVal: Value, duration: Double) -> Godot.PropertyTweener? {
        var __temporary: GDExtensionObjectPtr!
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    Godot.Variant.withStorageUnsafeRawPointer(to: finalVal) { (__ptr_finalVal) in
                        withUnsafePointer(to: duration) { (__ptr_duration) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_finalVal, __ptr_duration) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_tween_property,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.PropertyTweener.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_tween_interval: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_interval").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 413360199)!
        }
        }
    }()
    public func tweenInterval(time: Double) -> Godot.IntervalTweener? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: time) { (__ptr_time) in
            withUnsafeArgumentPackPointer(__ptr_time) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tween_interval,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.IntervalTweener.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_tween_callback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_callback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1540176488)!
        }
        }
    }()
    public func tweenCallback(_ callback: Godot.Callable) -> Godot.CallbackTweener? {
        var __temporary: GDExtensionObjectPtr!
        callback.withUnsafeRawPointer { (__ptr_callback) in
            withUnsafeArgumentPackPointer(__ptr_callback) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tween_callback,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.CallbackTweener.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_tween_method: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_method").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2337877153)!
        }
        }
    }()
    public func tweenMethod<Value2: VariantEncodable, Value3: VariantEncodable>(_ method: Godot.Callable, from: Value2, to: Value3, duration: Double) -> Godot.MethodTweener? {
        var __temporary: GDExtensionObjectPtr!
        method.withUnsafeRawPointer { (__ptr_method) in
            Godot.Variant.withStorageUnsafeRawPointer(to: from) { (__ptr_from) in
                Godot.Variant.withStorageUnsafeRawPointer(to: to) { (__ptr_to) in
                    withUnsafePointer(to: duration) { (__ptr_duration) in
                        withUnsafeArgumentPackPointer(__ptr_method, __ptr_from, __ptr_to, __ptr_duration) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_tween_method,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.MethodTweener.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_custom_step: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "custom_step").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 330693286)!
        }
        }
    }()
    public func customStep(delta: Double) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: delta) { (__ptr_delta) in
            withUnsafeArgumentPackPointer(__ptr_delta) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_custom_step,
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

    private static var __method_binding_stop: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func stop() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_stop,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_pause: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pause").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func pause() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_pause,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_play: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func play() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_play,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_kill: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "kill").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func kill() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_kill,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_total_elapsed_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_elapsed_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func totalElapsedTime() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_total_elapsed_time,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_running: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_running").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isRunning() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_running,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func isValid() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_valid,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_bind_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bind_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2946786331)!
        }
        }
    }()
    public func bindNode(_ node: Godot.Node?) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        node.withUnsafeRawPointer { (__ptr_node) in
            withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                withUnsafeArgumentPackPointer(_ptr___ptr_node) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_bind_node,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_process_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 855258840)!
        }
        }
    }()
    public func setProcessMode(_ mode: Godot.Tween.TweenProcessMode) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_process_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_pause_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pause_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3363368837)!
        }
        }
    }()
    public func setPauseMode(_ mode: Godot.Tween.TweenPauseMode) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_pause_mode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_parallel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_parallel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1942052223)!
        }
        }
    }()
    public func setParallel(_ parallel: Bool = true) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: parallel) { (__ptr_parallel) in
            withUnsafeArgumentPackPointer(__ptr_parallel) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_parallel,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_loops: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_loops").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2670836414)!
        }
        }
    }()
    public func setLoops(_ loops: Int32 = 0) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: loops) { (__ptr_loops) in
            withUnsafeArgumentPackPointer(__ptr_loops) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_loops,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_loops_left: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_loops_left").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func loopsLeft() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_loops_left,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_speed_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_speed_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3961971106)!
        }
        }
    }()
    public func setSpeedScale(speed: Double) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: speed) { (__ptr_speed) in
            withUnsafeArgumentPackPointer(__ptr_speed) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_speed_scale,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_trans: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trans").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3965963875)!
        }
        }
    }()
    public func setTrans(_ trans: Godot.Tween.TransitionType) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: trans) { (__ptr_trans) in
            withUnsafeArgumentPackPointer(__ptr_trans) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_trans,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_ease: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ease").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1208117252)!
        }
        }
    }()
    public func setEase(_ ease: Godot.Tween.EaseType) -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: ease) { (__ptr_ease) in
            withUnsafeArgumentPackPointer(__ptr_ease) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_ease,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_parallel: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parallel").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()
    public func parallel() -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_parallel,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_chain: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "chain").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()
    public func chain() -> Godot.Tween? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_chain,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Tween.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_interpolate_value: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "interpolate_value").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3452526450)!
        }
        }
    }()
    static public func interpolateValue<Value1: VariantEncodable, Value2: VariantEncodable>(initialValue: Value1, deltaValue: Value2, elapsedTime: Double, duration: Double, transType: Godot.Tween.TransitionType, easeType: Godot.Tween.EaseType) -> Godot.Variant {
        let __temporary = Godot.Variant()
        Godot.Variant.withStorageUnsafeRawPointer(to: initialValue) { (__ptr_initialValue) in
            Godot.Variant.withStorageUnsafeRawPointer(to: deltaValue) { (__ptr_deltaValue) in
                withUnsafePointer(to: elapsedTime) { (__ptr_elapsedTime) in
                    withUnsafePointer(to: duration) { (__ptr_duration) in
                        withUnsafePointer(to: transType) { (__ptr_transType) in
                            withUnsafePointer(to: easeType) { (__ptr_easeType) in
                                withUnsafeArgumentPackPointer(__ptr_initialValue, __ptr_deltaValue, __ptr_elapsedTime, __ptr_duration, __ptr_transType, __ptr_easeType) { (__accessPtr) in
                                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_interpolate_value,
                                            nil,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }