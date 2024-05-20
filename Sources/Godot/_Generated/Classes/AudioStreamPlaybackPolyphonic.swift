//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AudioStreamPlaybackPolyphonic: AudioStreamPlayback {
    public static let invalidID: Int = -1

    internal static var __method_binding_play_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play_stream").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 604492179)!
        }
        }
    }()

    public func playStream(
        _ stream: Godot.AudioStream?,
        fromOffset offset: Double = 0,
        volumeDb: Double = 0,
        pitchScale: Double = 1.0
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
                    withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                        withTransferrableUnsafeRawPointer(to: volumeDb) { __ptr_volumeDb in
                            withTransferrableUnsafeRawPointer(to: pitchScale) { __ptr_pitchScale in
                                withUnsafeArgumentPackPointer(_ptr___ptr_stream, __ptr_offset, __ptr_volumeDb, __ptr_pitchScale) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_play_stream,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_stream_volume: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_volume").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setStreamVolume(
        stream: Int64,
        volumeDb: Double
    ) {
        withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
            withTransferrableUnsafeRawPointer(to: volumeDb) { __ptr_volumeDb in
                withUnsafeArgumentPackPointer(__ptr_stream, __ptr_volumeDb) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_set_stream_pitch_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_pitch_scale").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setStreamPitchScale(
        stream: Int64,
        pitchScale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
            withTransferrableUnsafeRawPointer(to: pitchScale) { __ptr_pitchScale in
                withUnsafeArgumentPackPointer(__ptr_stream, __ptr_pitchScale) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_is_stream_playing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_stream_playing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isStreamPlaying(
        stream: Int64
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                withUnsafeArgumentPackPointer(__ptr_stream) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_stream_playing,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_stop_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_stream").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func stopStream(
        _ stream: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
            withUnsafeArgumentPackPointer(__ptr_stream) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
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