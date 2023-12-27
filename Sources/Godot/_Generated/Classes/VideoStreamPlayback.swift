//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VideoStreamPlayback: Resource {
    open func _stop() {
    }

    open func _play() {
    }

    open func _isPlaying() -> Bool {
        Bool()
    }

    open func _setPaused(_ paused: Bool) {
    }

    open func _isPaused() -> Bool {
        Bool()
    }

    open func _getLength() -> Double {
        Double()
    }

    open func _getPlaybackPosition() -> Double {
        Double()
    }

    open func _seek(time: Double) {
    }

    open func _setAudioTrack(idx: Int32) {
    }

    open func _getTexture() -> Godot.Texture2D? {
        nil
    }

    open func _update(delta: Double) {
    }

    open func _getChannels() -> Int32 {
        Int32()
    }

    open func _getMixRate() -> Int32 {
        Int32()
    }

    private static var __method_binding_mix_audio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mix_audio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 93876830)!
        }
        }
    }()
    public func mixAudio(numFrames: Int32, buffer: Godot.PackedFloat32Array = PackedFloat32Array(), offset: Int32 = 0) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        numFrames.withGodotUnsafeRawPointer { __ptr_numFrames in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_numFrames, __ptr_buffer, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_mix_audio,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _stop_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stop()}
        let _play_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._play()}
        let _is_playing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isPlaying()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_paused_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setPaused(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _is_paused_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isPaused()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_length_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getLength()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_playback_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPlaybackPosition()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _seek_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._seek(
            time: Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_audio_track_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setAudioTrack(
            idx: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTexture()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._update(
            delta: Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_channels_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getChannels()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_mix_rate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VideoStreamPlayback>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMixRate()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_stop" : ("_stop", _stop_call),
            "_play" : ("_play", _play_call),
            "_isPlaying" : ("_is_playing", _is_playing_call),
            "_setPaused" : ("_set_paused", _set_paused_call),
            "_isPaused" : ("_is_paused", _is_paused_call),
            "_getLength" : ("_get_length", _get_length_call),
            "_getPlaybackPosition" : ("_get_playback_position", _get_playback_position_call),
            "_seek" : ("_seek", _seek_call),
            "_setAudioTrack" : ("_set_audio_track", _set_audio_track_call),
            "_getTexture" : ("_get_texture", _get_texture_call),
            "_update" : ("_update", _update_call),
            "_getChannels" : ("_get_channels", _get_channels_call),
            "_getMixRate" : ("_get_mix_rate", _get_mix_rate_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }