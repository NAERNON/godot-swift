//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class AnimatedSprite2D: Node2D {

    public func spriteFramesChanged() {
        _ = spriteFramesChangedSignal.emit()
    }

    public lazy var spriteFramesChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "sprite_frames_changed") { callablePtr, args, _, _, _ in
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

    public func animationChanged() {
        _ = animationChangedSignal.emit()
    }

    public lazy var animationChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_changed") { callablePtr, args, _, _, _ in
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

    public func frameChanged() {
        _ = frameChangedSignal.emit()
    }

    public lazy var frameChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "frame_changed") { callablePtr, args, _, _, _ in
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

    public func animationLooped() {
        _ = animationLoopedSignal.emit()
    }

    public lazy var animationLoopedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_looped") { callablePtr, args, _, _, _ in
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

    public func animationFinished() {
        _ = animationFinishedSignal.emit()
    }

    public lazy var animationFinishedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "animation_finished") { callablePtr, args, _, _, _ in
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

    internal static var __method_binding_set_sprite_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sprite_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 905781144)!
        }
        }
    }()

    private func __setSpriteFrames(
        _ spriteFrames: Godot.SpriteFrames?
    ) {
        spriteFrames.withGodotUnsafeRawPointer { __ptr_spriteFrames in
        withUnsafePointer(to: __ptr_spriteFrames) { _ptr___ptr_spriteFrames in
        withUnsafeArgumentPackPointer(_ptr___ptr_spriteFrames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sprite_frames,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_sprite_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sprite_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3804851214)!
        }
        }
    }()

    private func __getSpriteFrames() -> Godot.SpriteFrames? {
        Godot.SpriteFrames?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sprite_frames,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    private func __setAnimation(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()

    private func __getAnimation() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_autoplay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_autoplay").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setAutoplay(
        name: Godot.GodotString
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_autoplay,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_autoplay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_autoplay").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getAutoplay() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_autoplay,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_playing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_playing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isPlaying() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_playing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_play: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2372066587)!
        }
        }
    }()

    public func play(
        name: Godot.GodotStringName = "",
        customSpeed: Double = 1.0,
        fromEnd end: Bool = false
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        customSpeed.withGodotUnsafeRawPointer { __ptr_customSpeed in
        end.withGodotUnsafeRawPointer { __ptr_end in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_customSpeed, __ptr_end) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_play,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_play_backwards: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_backwards").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1421762485)!
        }
        }
    }()

    public func playBackwards(
        name: Godot.GodotStringName = ""
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_play_backwards,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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

    internal static var __method_binding_set_centered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_centered").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCentered(
        _ centered: Bool
    ) {
        centered.withGodotUnsafeRawPointer { __ptr_centered in
        withUnsafeArgumentPackPointer(__ptr_centered) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_centered,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_centered: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_centered").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCentered() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_centered,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setOffset(
        _ offset: Godot.Vector2
    ) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_flip_h: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flip_h").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setFlipH(
        _ flipH: Bool
    ) {
        flipH.withGodotUnsafeRawPointer { __ptr_flipH in
        withUnsafeArgumentPackPointer(__ptr_flipH) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flip_h,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_flipped_h: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_flipped_h").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isFlippedH() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_flipped_h,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_flip_v: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flip_v").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setFlipV(
        _ flipV: Bool
    ) {
        flipV.withGodotUnsafeRawPointer { __ptr_flipV in
        withUnsafeArgumentPackPointer(__ptr_flipV) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_flip_v,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_flipped_v: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_flipped_v").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isFlippedV() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_flipped_v,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFrame(
        _ frame: Int32
    ) {
        frame.withGodotUnsafeRawPointer { __ptr_frame in
        withUnsafeArgumentPackPointer(__ptr_frame) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_frame,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_frame: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFrame() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_frame,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_frame_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame_progress").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setFrameProgress(
        _ progress: Double
    ) {
        progress.withGodotUnsafeRawPointer { __ptr_progress in
        withUnsafeArgumentPackPointer(__ptr_progress) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_frame_progress,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_frame_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_progress").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getFrameProgress() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_frame_progress,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_frame_and_progress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_frame_and_progress").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setFrameAndProgress(
        frame: Int32,
        progress: Double
    ) {
        frame.withGodotUnsafeRawPointer { __ptr_frame in
        progress.withGodotUnsafeRawPointer { __ptr_progress in
        withUnsafeArgumentPackPointer(__ptr_frame, __ptr_progress) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_frame_and_progress,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_speed_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setSpeedScale(
        _ speedScale: Double
    ) {
        speedScale.withGodotUnsafeRawPointer { __ptr_speedScale in
        withUnsafeArgumentPackPointer(__ptr_speedScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_speed_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_speed_scale: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_playing_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_playing_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func playingSpeed() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_playing_speed,
            __ptr_self,
            nil,
            __temporary
        )}}
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

    public var isCentered: Bool {
        get {
            __isCentered()
        }
        set {
            __setCentered(
                newValue
            )
        }
    }

    public var offset: Godot.Vector2 {
        get {
            __getOffset()
        }
        set {
            __setOffset(
                newValue
            )
        }
    }

    public var isFlippedH: Bool {
        get {
            __isFlippedH()
        }
        set {
            __setFlipH(
                newValue
            )
        }
    }

    public var isFlippedV: Bool {
        get {
            __isFlippedV()
        }
        set {
            __setFlipV(
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