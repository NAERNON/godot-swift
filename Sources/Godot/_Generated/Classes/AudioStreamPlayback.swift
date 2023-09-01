//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioStreamPlayback: RefCounted {
    open func _start(fromPos pos: Double) {
    }

    open func _stop() {
    }

    open func _isPlaying() -> Bool {
        Bool()
    }

    open func _getLoopCount() -> Int32 {
        Int32()
    }

    open func _getPlaybackPosition() -> Double {
        Double()
    }

    open func _seek(position: Double) {
    }

    open func _mix(buffer: UnsafeMutablePointer<AudioFrame>, rateScale: Double, frames: Int32) -> Int32 {
        Int32()
    }

    open func _tagUsedStreams() {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _start_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._start(
            fromPos: args[0]!.load(as: Double.self)
        )}
        let _stop_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._stop()}
        let _is_playing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isPlaying()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_loop_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLoopCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_playback_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPlaybackPosition()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _seek_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._seek(
            position: args[0]!.load(as: Double.self)
        )}
        let _mix_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._mix(
            buffer: args[0]!.load(as: UnsafeMutablePointer<AudioFrame> .self),
            rateScale: args[1]!.load(as: Double.self),
            frames: args[2]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _tag_used_streams_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<AudioStreamPlayback> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._tagUsedStreams()}
        _virtualFunctions = [
            "_start" : ("_start", _start_call),
            "_stop" : ("_stop", _stop_call),
            "_isPlaying" : ("_is_playing", _is_playing_call),
            "_getLoopCount" : ("_get_loop_count", _get_loop_count_call),
            "_getPlaybackPosition" : ("_get_playback_position", _get_playback_position_call),
            "_seek" : ("_seek", _seek_call),
            "_mix" : ("_mix", _mix_call),
            "_tagUsedStreams" : ("_tag_used_streams", _tag_used_streams_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }