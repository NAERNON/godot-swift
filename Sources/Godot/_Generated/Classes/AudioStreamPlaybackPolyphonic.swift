//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class AudioStreamPlaybackPolyphonic: AudioStreamPlayback {
    private static var __method_binding_play_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "play_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3792189967)!
        }
        }
    }()
    public func playStream(_ stream: Godot.AudioStream?, fromOffset offset: Double = 0, volumeDb: Double = 0, pitchScale: Double = 1.0) -> Int64 {
        var __temporary = Int64()
        stream.withUnsafeRawPointer { (__ptr_stream) in
            withUnsafePointer(to: __ptr_stream) { (_ptr___ptr_stream) in
                withUnsafePointer(to: offset) { (__ptr_offset) in
                    withUnsafePointer(to: volumeDb) { (__ptr_volumeDb) in
                        withUnsafePointer(to: pitchScale) { (__ptr_pitchScale) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_stream, __ptr_offset, __ptr_volumeDb, __ptr_pitchScale) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_play_stream,
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
        return __temporary
    }

    private static var __method_binding_set_stream_volume: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stream_volume").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setStreamVolume(stream: Int64, volumeDb: Double) {
        withUnsafePointer(to: stream) { (__ptr_stream) in
            withUnsafePointer(to: volumeDb) { (__ptr_volumeDb) in
                withUnsafeArgumentPackPointer(__ptr_stream, __ptr_volumeDb) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_stream_volume,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_stream_pitch_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stream_pitch_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setStreamPitchScale(stream: Int64, pitchScale: Double) {
        withUnsafePointer(to: stream) { (__ptr_stream) in
            withUnsafePointer(to: pitchScale) { (__ptr_pitchScale) in
                withUnsafeArgumentPackPointer(__ptr_stream, __ptr_pitchScale) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_stream_pitch_scale,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_is_stream_playing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_stream_playing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isStreamPlaying(stream: Int64) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: stream) { (__ptr_stream) in
            withUnsafeArgumentPackPointer(__ptr_stream) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_stream_playing,
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

    private static var __method_binding_stop_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "stop_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func stopStream(_ stream: Int64) {
        withUnsafePointer(to: stream) { (__ptr_stream) in
            withUnsafeArgumentPackPointer(__ptr_stream) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_stop_stream,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
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