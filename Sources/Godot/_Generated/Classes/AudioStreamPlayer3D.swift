//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class AudioStreamPlayer3D: Node3D {
    public enum AttenuationModel: UInt32, GodotEnum {
        case inverseDistance = 0
        case inverseSquareDistance = 1
        case logarithmic = 2
        case disabled = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Inverse Distance", 0),
            ("Inverse Square Distance", 1),
            ("Logarithmic", 2),
            ("Disabled", 3),]
        }
    }
    public enum DopplerTracking: UInt32, GodotEnum {
        case disabled = 0
        case idleStep = 1
        case physicsStep = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Idle Step", 1),
            ("Physics Step", 2),]
        }
    }

    @Emitter(signal: "finished")
    public struct Finished {
    }

    private static var __method_binding_set_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2210767741)!
        }
        }
    }()
    private func __setStream(_ stream: Godot.AudioStream?) {
        stream.withUnsafeRawPointer { (__ptr_stream) in
            withUnsafePointer(to: __ptr_stream) { (_ptr___ptr_stream) in
                withUnsafeArgumentPackPointer(_ptr___ptr_stream) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_get_stream: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 160907539)!
        }
        }
    }()
    private func __getStream() -> Godot.AudioStream? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_stream,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioStream.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_volume_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_volume_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setVolumeDb(_ volumeDb: Double) {
        withUnsafePointer(to: volumeDb) { (__ptr_volumeDb) in
            withUnsafeArgumentPackPointer(__ptr_volumeDb) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_volume_db,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_volume_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_volume_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getVolumeDb() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_volume_db,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_unit_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unit_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setUnitSize(_ unitSize: Double) {
        withUnsafePointer(to: unitSize) { (__ptr_unitSize) in
            withUnsafeArgumentPackPointer(__ptr_unitSize) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_unit_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_unit_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unit_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getUnitSize() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_unit_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_max_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMaxDb(_ maxDb: Double) {
        withUnsafePointer(to: maxDb) { (__ptr_maxDb) in
            withUnsafeArgumentPackPointer(__ptr_maxDb) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_max_db,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_max_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMaxDb() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_max_db,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_pitch_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pitch_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPitchScale(_ pitchScale: Double) {
        withUnsafePointer(to: pitchScale) { (__ptr_pitchScale) in
            withUnsafeArgumentPackPointer(__ptr_pitchScale) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_pitch_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_pitch_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pitch_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPitchScale() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_pitch_scale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_play: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "play").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1958160172)!
        }
        }
    }()
    public func play(fromPosition position: Double = 0.0) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_play,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_seek: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "seek").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func seek(toPosition position: Double) {
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_seek,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_stop: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func stop() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_stop,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_is_playing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_playing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPlaying() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_playing,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_playback_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_playback_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    public func playbackPosition() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_playback_position,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_bus: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bus").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setBus(_ bus: Godot.GodotStringName) {
        bus.withUnsafeRawPointer { (__ptr_bus) in
            withUnsafeArgumentPackPointer(__ptr_bus) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_bus,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_bus: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bus").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getBus() -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_bus,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_autoplay: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_autoplay").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAutoplay(enable: Bool) {
        withUnsafePointer(to: enable) { (__ptr_enable) in
            withUnsafeArgumentPackPointer(__ptr_enable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_autoplay,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_autoplay_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_autoplay_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isAutoplayEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_autoplay_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_max_distance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_distance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMaxDistance(meters: Double) {
        withUnsafePointer(to: meters) { (__ptr_meters) in
            withUnsafeArgumentPackPointer(__ptr_meters) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_max_distance,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_max_distance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_distance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMaxDistance() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_max_distance,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_area_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_area_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setAreaMask(_ mask: UInt32) {
        withUnsafePointer(to: mask) { (__ptr_mask) in
            withUnsafeArgumentPackPointer(__ptr_mask) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_area_mask,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_area_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_area_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getAreaMask() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_area_mask,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_angle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_angle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionAngle(degrees: Double) {
        withUnsafePointer(to: degrees) { (__ptr_degrees) in
            withUnsafeArgumentPackPointer(__ptr_degrees) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_angle,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_angle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_angle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionAngle() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_angle,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_angle_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_angle_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEmissionAngleEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_angle_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_emission_angle_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_emission_angle_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isEmissionAngleEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_emission_angle_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_emission_angle_filter_attenuation_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_angle_filter_attenuation_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionAngleFilterAttenuationDb(_ db: Double) {
        withUnsafePointer(to: db) { (__ptr_db) in
            withUnsafeArgumentPackPointer(__ptr_db) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_emission_angle_filter_attenuation_db,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_emission_angle_filter_attenuation_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_angle_filter_attenuation_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionAngleFilterAttenuationDb() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_emission_angle_filter_attenuation_db,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_attenuation_filter_cutoff_hz: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attenuation_filter_cutoff_hz").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAttenuationFilterCutoffHz(degrees: Double) {
        withUnsafePointer(to: degrees) { (__ptr_degrees) in
            withUnsafeArgumentPackPointer(__ptr_degrees) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_attenuation_filter_cutoff_hz,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_attenuation_filter_cutoff_hz: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_attenuation_filter_cutoff_hz").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAttenuationFilterCutoffHz() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_attenuation_filter_cutoff_hz,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_attenuation_filter_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attenuation_filter_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAttenuationFilterDb(_ db: Double) {
        withUnsafePointer(to: db) { (__ptr_db) in
            withUnsafeArgumentPackPointer(__ptr_db) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_attenuation_filter_db,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_attenuation_filter_db: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_attenuation_filter_db").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAttenuationFilterDb() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_attenuation_filter_db,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_attenuation_model: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attenuation_model").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2988086229)!
        }
        }
    }()
    private func __setAttenuationModel(_ model: Godot.AudioStreamPlayer3D.AttenuationModel) {
        withUnsafePointer(to: model) { (__ptr_model) in
            withUnsafeArgumentPackPointer(__ptr_model) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_attenuation_model,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_attenuation_model: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_attenuation_model").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3035106060)!
        }
        }
    }()
    private func __getAttenuationModel() -> Godot.AudioStreamPlayer3D.AttenuationModel {
        var __temporary = Godot.AudioStreamPlayer3D.AttenuationModel.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_attenuation_model,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioStreamPlayer3D.AttenuationModel(rawValue: __temporary)!
    }

    private static var __method_binding_set_doppler_tracking: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_doppler_tracking").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3968161450)!
        }
        }
    }()
    private func __setDopplerTracking(mode: Godot.AudioStreamPlayer3D.DopplerTracking) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_doppler_tracking,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_doppler_tracking: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_doppler_tracking").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1702418664)!
        }
        }
    }()
    private func __getDopplerTracking() -> Godot.AudioStreamPlayer3D.DopplerTracking {
        var __temporary = Godot.AudioStreamPlayer3D.DopplerTracking.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_doppler_tracking,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioStreamPlayer3D.DopplerTracking(rawValue: __temporary)!
    }

    private static var __method_binding_set_stream_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stream_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setStreamPaused(pause: Bool) {
        withUnsafePointer(to: pause) { (__ptr_pause) in
            withUnsafeArgumentPackPointer(__ptr_pause) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_stream_paused,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_stream_paused: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream_paused").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getStreamPaused() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_stream_paused,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_max_polyphony: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_polyphony").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMaxPolyphony(_ maxPolyphony: Int32) {
        withUnsafePointer(to: maxPolyphony) { (__ptr_maxPolyphony) in
            withUnsafeArgumentPackPointer(__ptr_maxPolyphony) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_max_polyphony,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_max_polyphony: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_polyphony").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMaxPolyphony() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_max_polyphony,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_panning_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_panning_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPanningStrength(_ panningStrength: Double) {
        withUnsafePointer(to: panningStrength) { (__ptr_panningStrength) in
            withUnsafeArgumentPackPointer(__ptr_panningStrength) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_panning_strength,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_panning_strength: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_panning_strength").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPanningStrength() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_panning_strength,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_has_stream_playback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_stream_playback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    public func hasStreamPlayback() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_has_stream_playback,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_stream_playback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stream_playback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 210135309)!
        }
        }
    }()
    public func streamPlayback() -> Godot.AudioStreamPlayback? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_stream_playback,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AudioStreamPlayback.retrievedInstanceManagedByGodot(__temporary)
    }

    public var stream: Godot.AudioStream? {
        get {
            __getStream()
        }
        set {
            __setStream(
                newValue
            )
        }
    }

    public var attenuationModel: Godot.AudioStreamPlayer3D.AttenuationModel {
        get {
            __getAttenuationModel()
        }
        set {
            __setAttenuationModel(
                newValue
            )
        }
    }

    public var volumeDb: Double {
        get {
            __getVolumeDb()
        }
        set {
            __setVolumeDb(
                newValue
            )
        }
    }

    public var unitSize: Double {
        get {
            __getUnitSize()
        }
        set {
            __setUnitSize(
                newValue
            )
        }
    }

    public var maxDb: Double {
        get {
            __getMaxDb()
        }
        set {
            __setMaxDb(
                newValue
            )
        }
    }

    public var pitchScale: Double {
        get {
            __getPitchScale()
        }
        set {
            __setPitchScale(
                newValue
            )
        }
    }

    public var isPlaying: Bool {
        get {
            __isPlaying()
        }
    }

    public var isAutoplayEnabled: Bool {
        get {
            __isAutoplayEnabled()
        }
        set {
            __setAutoplay(
                enable: newValue
            )
        }
    }

    public var streamPaused: Bool {
        get {
            __getStreamPaused()
        }
        set {
            __setStreamPaused(
                pause: newValue
            )
        }
    }

    public var maxDistance: Double {
        get {
            __getMaxDistance()
        }
        set {
            __setMaxDistance(
                meters: newValue
            )
        }
    }

    public var maxPolyphony: Int32 {
        get {
            __getMaxPolyphony()
        }
        set {
            __setMaxPolyphony(
                newValue
            )
        }
    }

    public var panningStrength: Double {
        get {
            __getPanningStrength()
        }
        set {
            __setPanningStrength(
                newValue
            )
        }
    }

    public var bus: Godot.GodotStringName {
        get {
            __getBus()
        }
        set {
            __setBus(
                newValue
            )
        }
    }

    public var areaMask: UInt32 {
        get {
            __getAreaMask()
        }
        set {
            __setAreaMask(
                newValue
            )
        }
    }

    public var isEmissionAngleEnabled: Bool {
        get {
            __isEmissionAngleEnabled()
        }
        set {
            __setEmissionAngleEnabled(
                newValue
            )
        }
    }

    public var emissionAngle: Double {
        get {
            __getEmissionAngle()
        }
        set {
            __setEmissionAngle(
                degrees: newValue
            )
        }
    }

    public var emissionAngleFilterAttenuationDb: Double {
        get {
            __getEmissionAngleFilterAttenuationDb()
        }
        set {
            __setEmissionAngleFilterAttenuationDb(
                newValue
            )
        }
    }

    public var attenuationFilterCutoffHz: Double {
        get {
            __getAttenuationFilterCutoffHz()
        }
        set {
            __setAttenuationFilterCutoffHz(
                degrees: newValue
            )
        }
    }

    public var attenuationFilterDb: Double {
        get {
            __getAttenuationFilterDb()
        }
        set {
            __setAttenuationFilterDb(
                newValue
            )
        }
    }

    public var dopplerTracking: Godot.AudioStreamPlayer3D.DopplerTracking {
        get {
            __getDopplerTracking()
        }
        set {
            __setDopplerTracking(
                mode: newValue
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