//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class AnimatedSprite3D: SpriteBase3D {

    public func spriteFramesChanged() {
        _ = spriteFramesChangedSignal.emit()
    }

    public lazy var spriteFramesChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "sprite_frames_changed") { callablePtr, args, _, _, _ in
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

    public func animationChanged() {
        _ = animationChangedSignal.emit()
    }

    public lazy var animationChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_changed") { callablePtr, args, _, _, _ in
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

    public func frameChanged() {
        _ = frameChangedSignal.emit()
    }

    public lazy var frameChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "frame_changed") { callablePtr, args, _, _, _ in
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

    public func animationLooped() {
        _ = animationLoopedSignal.emit()
    }

    public lazy var animationLoopedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_looped") { callablePtr, args, _, _, _ in
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

    public func animationFinished() {
        _ = animationFinishedSignal.emit()
    }

    public lazy var animationFinishedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_finished") { callablePtr, args, _, _, _ in
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

    internal static var __method_binding_set_sprite_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sprite_frames").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 905781144)!
        }
        }
    }()

    private func __setSpriteFrames(
        _ spriteFrames: Godot.SpriteFrames?
    ) {
        withTransferrableUnsafeRawPointer(to: spriteFrames) { __ptr_spriteFrames in
            withUnsafePointer(to: __ptr_spriteFrames) { _ptr___ptr_spriteFrames in
                withUnsafeArgumentPackPointer(_ptr___ptr_spriteFrames) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_sprite_frames,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_sprite_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sprite_frames").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3804851214)!
        }
        }
    }()

    private func __getSpriteFrames() -> Godot.SpriteFrames? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_sprite_frames,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animation").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    private func __setAnimation(
        name: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_animation,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    private func __getAnimation() -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_animation,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_autoplay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_autoplay").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setAutoplay(
        name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_autoplay,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_autoplay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_autoplay").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getAutoplay() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_autoplay,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_playing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_playing").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isPlaying() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_playing,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_play: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2372066587)!
        }
        }
    }()

    public func play(
        name: Godot.GodotStringName = "",
        customSpeed: Double = 1.0,
        fromEnd end: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: customSpeed) { __ptr_customSpeed in
                withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                    withUnsafeArgumentPackPointer(__ptr_name, __ptr_customSpeed, __ptr_end) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_play,
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

    internal static var __method_binding_play_backwards: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_backwards").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1421762485)!
        }
        }
    }()

    public func playBackwards(
        name: Godot.GodotStringName = ""
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_play_backwards,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_pause: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pause").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func pause() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_pause,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_stop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func stop() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_stop,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_set_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFrame(
        _ frame: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: frame) { __ptr_frame in
            withUnsafeArgumentPackPointer(__ptr_frame) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_frame,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFrame() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_frame,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_frame_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame_progress").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setFrameProgress(
        _ progress: Double
    ) {
        withTransferrableUnsafeRawPointer(to: progress) { __ptr_progress in
            withUnsafeArgumentPackPointer(__ptr_progress) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_frame_progress,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_frame_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_progress").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getFrameProgress() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_frame_progress,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_frame_and_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame_and_progress").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setFrameAndProgress(
        frame: Int32,
        progress: Double
    ) {
        withTransferrableUnsafeRawPointer(to: frame) { __ptr_frame in
            withTransferrableUnsafeRawPointer(to: progress) { __ptr_progress in
                withUnsafeArgumentPackPointer(__ptr_frame, __ptr_progress) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_frame_and_progress,
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
        _ speedScale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: speedScale) { __ptr_speedScale in
            withUnsafeArgumentPackPointer(__ptr_speedScale) { __accessPtr in
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

    internal static var __method_binding_get_playing_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_playing_speed").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func playingSpeed() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_playing_speed,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var spriteFrames: Godot.SpriteFrames? {
        get {
            __getSpriteFrames()
        }
        set {
            __setSpriteFrames(
                newValue
            )
        }
    }

    public var animation: Godot.GodotStringName {
        get {
            __getAnimation()
        }
        set {
            __setAnimation(
                name: newValue
            )
        }
    }

    public var autoplay: Godot.GodotString {
        get {
            __getAutoplay()
        }
        set {
            __setAutoplay(
                name: newValue
            )
        }
    }

    public var frame: Int32 {
        get {
            __getFrame()
        }
        set {
            __setFrame(
                newValue
            )
        }
    }

    public var frameProgress: Double {
        get {
            __getFrameProgress()
        }
        set {
            __setFrameProgress(
                newValue
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