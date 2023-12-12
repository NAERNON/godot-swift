//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioStreamPlaybackPolyphonic: AudioStreamPlayback {
    private static var __method_binding_play_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3792189967)!
        }
        }
    }()
    public func playStream(_ stream: Godot.AudioStream?, fromOffset offset: Double = 0, volumeDb: Double = 0, pitchScale: Double = 1.0) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        volumeDb.withGodotUnsafeRawPointer { __ptr_volumeDb in
        pitchScale.withGodotUnsafeRawPointer { __ptr_pitchScale in
        withUnsafeArgumentPackPointer(_ptr___ptr_stream, __ptr_offset, __ptr_volumeDb, __ptr_pitchScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_play_stream,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_set_stream_volume: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_volume").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setStreamVolume(stream: Int64, volumeDb: Double) {
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        volumeDb.withGodotUnsafeRawPointer { __ptr_volumeDb in
        withUnsafeArgumentPackPointer(__ptr_stream, __ptr_volumeDb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_stream_volume,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_stream_pitch_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_pitch_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setStreamPitchScale(stream: Int64, pitchScale: Double) {
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        pitchScale.withGodotUnsafeRawPointer { __ptr_pitchScale in
        withUnsafeArgumentPackPointer(__ptr_stream, __ptr_pitchScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_stream_pitch_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_stream_playing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_stream_playing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isStreamPlaying(stream: Int64) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafeArgumentPackPointer(__ptr_stream) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_stream_playing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_stop_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func stopStream(_ stream: Int64) {
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafeArgumentPackPointer(__ptr_stream) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_stop_stream,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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