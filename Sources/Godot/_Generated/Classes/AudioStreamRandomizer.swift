//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AudioStreamRandomizer: AudioStream {
    public enum PlaybackMode: UInt32, GodotEnum {
        case randomNoRepeats = 0
        case random = 1
        case sequential = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Random No Repeats", 0),
            ("Random", 1),
            ("Sequential", 2),]
        }
    }

    internal static var __method_binding_add_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_stream").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892018854)!
        }
        }
    }()

    public func addStream(
        index: Int32,
        stream: Godot.AudioStream?,
        weight: Double = 1.0
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
                    withTransferrableUnsafeRawPointer(to: weight) { __ptr_weight in
                        withUnsafeArgumentPackPointer(__ptr_index, _ptr___ptr_stream, __ptr_weight) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_add_stream,
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
    }

    internal static var __method_binding_move_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_stream").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func moveStream(
        indexFrom: Int32,
        indexTo: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: indexFrom) { __ptr_indexFrom in
            withTransferrableUnsafeRawPointer(to: indexTo) { __ptr_indexTo in
                withUnsafeArgumentPackPointer(__ptr_indexFrom, __ptr_indexTo) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_move_stream,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_stream").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeStream(
        index: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_stream,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 111075094)!
        }
        }
    }()

    public func setStream(
        index: Int32,
        stream: Godot.AudioStream?
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
                    withUnsafeArgumentPackPointer(__ptr_index, _ptr___ptr_stream) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_stream,
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

    internal static var __method_binding_get_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2739380747)!
        }
        }
    }()

    public func stream(
        index: Int32
    ) -> Godot.AudioStream? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_stream,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_stream_probability_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_probability_weight").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setStreamProbabilityWeight(
        index: Int32,
        weight: Double
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withTransferrableUnsafeRawPointer(to: weight) { __ptr_weight in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_weight) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_stream_probability_weight,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_stream_probability_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream_probability_weight").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()

    public func streamProbabilityWeight(
        index: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_stream_probability_weight,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_streams_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_streams_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setStreamsCount(
        _ count: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: count) { __ptr_count in
            withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_streams_count,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_streams_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_streams_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getStreamsCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_streams_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_random_pitch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_random_pitch").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setRandomPitch(
        scale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
            withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_random_pitch,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_random_pitch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_random_pitch").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getRandomPitch() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_random_pitch,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_random_volume_offset_db: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_random_volume_offset_db").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setRandomVolumeOffsetDb(
        dbOffset: Double
    ) {
        withTransferrableUnsafeRawPointer(to: dbOffset) { __ptr_dbOffset in
            withUnsafeArgumentPackPointer(__ptr_dbOffset) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_random_volume_offset_db,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_random_volume_offset_db: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_random_volume_offset_db").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getRandomVolumeOffsetDb() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_random_volume_offset_db,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_playback_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_playback_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3950967023)!
        }
        }
    }()

    private func __setPlaybackMode(
        _ mode: Godot.AudioStreamRandomizer.PlaybackMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_playback_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_playback_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_playback_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3943055077)!
        }
        }
    }()

    private func __getPlaybackMode() -> Godot.AudioStreamRandomizer.PlaybackMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_playback_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var playbackMode: Godot.AudioStreamRandomizer.PlaybackMode {
        get {
            __getPlaybackMode()
        }
        set {
            __setPlaybackMode(
                newValue
            )
        }
    }

    public var randomPitch: Double {
        get {
            __getRandomPitch()
        }
        set {
            __setRandomPitch(
                scale: newValue
            )
        }
    }

    public var randomVolumeOffsetDb: Double {
        get {
            __getRandomVolumeOffsetDb()
        }
        set {
            __setRandomVolumeOffsetDb(
                dbOffset: newValue
            )
        }
    }

    public var streamsCount: Int32 {
        get {
            __getStreamsCount()
        }
        set {
            __setStreamsCount(
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