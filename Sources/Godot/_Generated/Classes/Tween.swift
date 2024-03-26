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

    public struct StepFinishedSignalInput: Godot.SignalInput {
        public let idx: Int

        fileprivate init(
            idx: Int
        ) {
            self.idx = idx
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.idx)]
        }
    }

    public func stepFinished(
        idx: Int
    ) {
        _ = stepFinishedSignal.emit(.init(idx: idx))
    }

    public lazy var stepFinishedSignal: Godot.SignalEmitter<StepFinishedSignalInput> = {
        .init(object: self, signalName: "step_finished") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<StepFinishedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(idx: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<StepFinishedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<StepFinishedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct LoopFinishedSignalInput: Godot.SignalInput {
        public let loopCount: Int

        fileprivate init(
            loopCount: Int
        ) {
            self.loopCount = loopCount
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.loopCount)]
        }
    }

    public func loopFinished(
        loopCount: Int
    ) {
        _ = loopFinishedSignal.emit(.init(loopCount: loopCount))
    }

    public lazy var loopFinishedSignal: Godot.SignalEmitter<LoopFinishedSignalInput> = {
        .init(object: self, signalName: "loop_finished") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<LoopFinishedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(loopCount: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<LoopFinishedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<LoopFinishedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func finished() {
        _ = finishedSignal.emit()
    }

    public lazy var finishedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "finished") { callablePtr, args, _, _, _ in
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

    internal static var __method_binding_tween_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4049770449)!
        }
        }
    }()

    public func tweenProperty<Value: VariantStorableIn>(
        object: Godot.Object?,
        property: Godot.NodePath,
        finalVal: Value,
        duration: Double
    ) -> Godot.PropertyTweener? {
        Godot.PropertyTweener?.fromMutatingGodotUnsafePointer { __temporary in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: finalVal) { __ptr_finalVal in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_finalVal, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tween_property,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_tween_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 413360199)!
        }
        }
    }()

    public func tweenInterval(
        time: Double
    ) -> Godot.IntervalTweener? {
        Godot.IntervalTweener?.fromMutatingGodotUnsafePointer { __temporary in
        time.withGodotUnsafeRawPointer { __ptr_time in
        withUnsafeArgumentPackPointer(__ptr_time) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tween_interval,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_tween_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1540176488)!
        }
        }
    }()

    public func tweenCallback(
        _ callback: Godot.Callable
    ) -> Godot.CallbackTweener? {
        Godot.CallbackTweener?.fromMutatingGodotUnsafePointer { __temporary in
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tween_callback,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_tween_method: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tween_method").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2337877153)!
        }
        }
    }()

    public func tweenMethod<Value1: VariantStorableIn, Value2: VariantStorableIn>(
        _ method: Godot.Callable,
        from: Value1,
        to: Value2,
        duration: Double
    ) -> Godot.MethodTweener? {
        Godot.MethodTweener?.fromMutatingGodotUnsafePointer { __temporary in
        method.withGodotUnsafeRawPointer { __ptr_method in
        Godot.Variant.withStorageUnsafeRawPointer(to: from) { __ptr_from in
        Godot.Variant.withStorageUnsafeRawPointer(to: to) { __ptr_to in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_from, __ptr_to, __ptr_duration) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tween_method,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_custom_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "custom_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 330693286)!
        }
        }
    }()

    public func customStep(
        delta: Double
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        delta.withGodotUnsafeRawPointer { __ptr_delta in
        withUnsafeArgumentPackPointer(__ptr_delta) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_custom_step,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_stop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func stop() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_stop,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_pause: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pause").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func pause() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_pause,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_play: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func play() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_play,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_kill: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "kill").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func kill() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_kill,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_total_elapsed_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_elapsed_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func totalElapsedTime() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_elapsed_time,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_running: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_running").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func isRunning() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_running,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_valid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    public func isValid() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_valid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_bind_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bind_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2946786331)!
        }
        }
    }()

    public func bindNode(
        _ node: Godot.Node?
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bind_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_process_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_process_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 855258840)!
        }
        }
    }()

    public func setProcessMode(
        _ mode: Godot.Tween.TweenProcessMode
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_process_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_pause_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pause_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3363368837)!
        }
        }
    }()

    public func setPauseMode(
        _ mode: Godot.Tween.TweenPauseMode
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pause_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_parallel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_parallel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1942052223)!
        }
        }
    }()

    public func setParallel(
        _ parallel: Bool = true
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        parallel.withGodotUnsafeRawPointer { __ptr_parallel in
        withUnsafeArgumentPackPointer(__ptr_parallel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_parallel,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_loops: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_loops").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2670836414)!
        }
        }
    }()

    public func setLoops(
        _ loops: Int32 = 0
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        loops.withGodotUnsafeRawPointer { __ptr_loops in
        withUnsafeArgumentPackPointer(__ptr_loops) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_loops,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_loops_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_loops_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func loopsLeft() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_loops_left,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_speed_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3961971106)!
        }
        }
    }()

    public func setSpeedScale(
        speed: Double
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        speed.withGodotUnsafeRawPointer { __ptr_speed in
        withUnsafeArgumentPackPointer(__ptr_speed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_speed_scale,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_trans: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_trans").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3965963875)!
        }
        }
    }()

    public func setTrans(
        _ trans: Godot.Tween.TransitionType
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        trans.withGodotUnsafeRawPointer { __ptr_trans in
        withUnsafeArgumentPackPointer(__ptr_trans) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_trans,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ease: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ease").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1208117252)!
        }
        }
    }()

    public func setEase(
        _ ease: Godot.Tween.EaseType
    ) -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        ease.withGodotUnsafeRawPointer { __ptr_ease in
        withUnsafeArgumentPackPointer(__ptr_ease) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ease,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_parallel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parallel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()

    public func parallel() -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parallel,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_chain: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "chain").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3426978995)!
        }
        }
    }()

    public func chain() -> Godot.Tween? {
        Godot.Tween?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_chain,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_interpolate_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "interpolate_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3452526450)!
        }
        }
    }()

    static public func interpolateValue<Value1: VariantStorableIn, Value2: VariantStorableIn>(
        initialValue: Value1,
        deltaValue: Value2,
        elapsedTime: Double,
        duration: Double,
        transType: Godot.Tween.TransitionType,
        easeType: Godot.Tween.EaseType
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: initialValue) { __ptr_initialValue in
        Godot.Variant.withStorageUnsafeRawPointer(to: deltaValue) { __ptr_deltaValue in
        elapsedTime.withGodotUnsafeRawPointer { __ptr_elapsedTime in
        duration.withGodotUnsafeRawPointer { __ptr_duration in
        transType.withGodotUnsafeRawPointer { __ptr_transType in
        easeType.withGodotUnsafeRawPointer { __ptr_easeType in
        withUnsafeArgumentPackPointer(__ptr_initialValue, __ptr_deltaValue, __ptr_elapsedTime, __ptr_duration, __ptr_transType, __ptr_easeType) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_interpolate_value,
            nil,
            __accessPtr,
            __temporary
        )}}}}}}}}
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