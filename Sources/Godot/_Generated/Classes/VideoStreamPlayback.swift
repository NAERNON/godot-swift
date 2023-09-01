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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "mix_audio").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1369271885)!
        }
        }
    }()
    public func mixAudio(numFrames: Int32, buffer: Godot.PackedFloat32Array = PackedFloat32Array(), offset: Int32 = 0) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: numFrames) { (__ptr_numFrames) in
            buffer.withUnsafeRawPointer { (__ptr_buffer) in
                withUnsafePointer(to: offset) { (__ptr_offset) in
                    withUnsafeArgumentPackPointer(__ptr_numFrames, __ptr_buffer, __ptr_offset) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_mix_audio,
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
        return __temporary
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
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._stop()}
        let _play_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._play()}
        let _is_playing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isPlaying()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _set_paused_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setPaused(
            args[0]!.load(as: Bool.self)
        )}
        let _is_paused_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isPaused()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_length_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLength()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_playback_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPlaybackPosition()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _seek_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._seek(
            time: args[0]!.load(as: Double.self)
        )}
        let _set_audio_track_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setAudioTrack(
            idx: args[0]!.load(as: Int32.self)
        )}
        let _get_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTexture()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _update_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._update(
            delta: args[0]!.load(as: Double.self)
        )}
        let _get_channels_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getChannels()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_mix_rate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VideoStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMixRate()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
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