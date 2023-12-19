//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Animation: Resource {
    public enum TrackType: UInt32, GodotEnum {
        case value = 0
        case position3D = 1
        case rotation3D = 2
        case scale3D = 3
        case blendShape = 4
        case method = 5
        case bezier = 6
        case audio = 7
        case animation = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Value", 0),
            ("Position3 D", 1),
            ("Rotation3 D", 2),
            ("Scale3 D", 3),
            ("Blend Shape", 4),
            ("Method", 5),
            ("Bezier", 6),
            ("Audio", 7),
            ("Animation", 8),]
        }
    }
    public enum InterpolationType: UInt32, GodotEnum {
        case nearest = 0
        case linear = 1
        case cubic = 2
        case linearAngle = 3
        case cubicAngle = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Linear", 1),
            ("Cubic", 2),
            ("Linear Angle", 3),
            ("Cubic Angle", 4),]
        }
    }
    public enum UpdateMode: UInt32, GodotEnum {
        case continuous = 0
        case discrete = 1
        case capture = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Continuous", 0),
            ("Discrete", 1),
            ("Capture", 2),]
        }
    }
    public enum LoopMode: UInt32, GodotEnum {
        case none = 0
        case linear = 1
        case pingpong = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Linear", 1),
            ("Pingpong", 2),]
        }
    }
    public enum LoopedFlag: UInt32, GodotEnum {
        case none = 0
        case end = 1
        case start = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("End", 1),
            ("Start", 2),]
        }
    }
    public enum FindMode: UInt32, GodotEnum {
        case nearest = 0
        case approx = 1
        case exact = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Approx", 1),
            ("Exact", 2),]
        }
    }

    private static var __method_binding_add_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3843682357)!
        }
        }
    }()
    public func addTrack(type: Godot.Animation.TrackType, atPosition position: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_track,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_remove_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeTrack(trackIdx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_track,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_track_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_track_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func trackCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_track_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_track_get_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3445944217)!
        }
        }
    }()
    public func trackGetType(trackIdx: Int32) -> Godot.Animation.TrackType {
        Godot.Animation.TrackType.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()
    public func trackGetPath(trackIdx: Int32) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_set_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()
    public func trackSetPath(trackIdx: Int32, path: Godot.NodePath) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_find_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 245376003)!
        }
        }
    }()
    public func findTrack(path: Godot.NodePath, type: Godot.Animation.TrackType) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_find_track,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_track_move_up: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_up").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func trackMoveUp(trackIdx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_move_up,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_track_move_down: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_down").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func trackMoveDown(trackIdx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_move_down,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_track_move_to: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_to").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func trackMoveTo(trackIdx: Int32, toIdx idx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_move_to,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_swap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_swap").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func trackSwap(trackIdx: Int32, withIdx idx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_swap,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_set_imported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_imported").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func trackSetImported(trackIdx: Int32, imported: Bool) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        imported.withGodotUnsafeRawPointer { __ptr_imported in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_imported) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_imported,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_is_imported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_imported").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func trackIsImported(trackIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_is_imported,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func trackSetEnabled(trackIdx: Int32, enabled: Bool) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_is_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func trackIsEnabled(trackIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_is_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_position_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "position_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2540608232)!
        }
        }
    }()
    public func positionTrackInsertKey(trackIdx: Int32, time: Double, position: Godot.Vector3) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_position_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_rotation_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotation_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4165004800)!
        }
        }
    }()
    public func rotationTrackInsertKey(trackIdx: Int32, time: Double, rotation: Godot.Quaternion) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        rotation.withGodotUnsafeRawPointer { __ptr_rotation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_rotation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_rotation_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_scale_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scale_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2540608232)!
        }
        }
    }()
    public func scaleTrackInsertKey(trackIdx: Int32, time: Double, scale: Godot.Vector3) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scale_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_blend_shape_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_shape_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1534913637)!
        }
        }
    }()
    public func blendShapeTrackInsertKey(trackIdx: Int32, time: Double, amount: Double) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_blend_shape_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_position_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "position_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3285246857)!
        }
        }
    }()
    public func positionTrackInterpolate(trackIdx: Int32, timeSec: Double) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_position_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rotation_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotation_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1988711975)!
        }
        }
    }()
    public func rotationTrackInterpolate(trackIdx: Int32, timeSec: Double) -> Godot.Quaternion {
        Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_rotation_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_scale_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scale_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3285246857)!
        }
        }
    }()
    public func scaleTrackInterpolate(trackIdx: Int32, timeSec: Double) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scale_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_blend_shape_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_shape_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1900462983)!
        }
        }
    }()
    public func blendShapeTrackInterpolate(trackIdx: Int32, timeSec: Double) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_blend_shape_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 808952278)!
        }
        }
    }()
    public func trackInsertKey<Value: VariantStorableIn>(trackIdx: Int32, time: Double, key: Value, transition: Double = 1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
        transition.withGodotUnsafeRawPointer { __ptr_transition in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_key, __ptr_transition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_track_remove_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_remove_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func trackRemoveKey(trackIdx: Int32, keyIdx: Int32) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_remove_key,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_remove_key_at_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_remove_key_at_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func trackRemoveKeyAtTime(trackIdx: Int32, time: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_remove_key_at_time,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_set_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2060538656)!
        }
        }
    }()
    public func trackSetKeyValue<Value: VariantStorableIn>(trackIdx: Int32, key: Int32, value: Value) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        key.withGodotUnsafeRawPointer { __ptr_key in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_key, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_key_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_track_set_key_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_transition").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func trackSetKeyTransition(trackIdx: Int32, keyIdx: Int32, transition: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        transition.withGodotUnsafeRawPointer { __ptr_transition in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_transition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_key_transition,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_track_set_key_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func trackSetKeyTime(trackIdx: Int32, keyIdx: Int32, time: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_time) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_key_time,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_track_get_key_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_transition").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func trackGetKeyTransition(trackIdx: Int32, keyIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_key_transition,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_track_get_key_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func trackGetKeyCount(trackIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_key_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_get_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 678354945)!
        }
        }
    }()
    public func trackGetKeyValue(trackIdx: Int32, keyIdx: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_key_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_track_get_key_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func trackGetKeyTime(trackIdx: Int32, keyIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_key_time,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_track_find_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_find_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3245197284)!
        }
        }
    }()
    public func trackFindKey(trackIdx: Int32, time: Double, findMode: Godot.Animation.FindMode = Animation.FindMode(rawValue: 0)!) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        findMode.withGodotUnsafeRawPointer { __ptr_findMode in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_findMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_find_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_track_set_interpolation_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_interpolation_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4112932513)!
        }
        }
    }()
    public func trackSetInterpolationType(trackIdx: Int32, interpolation: Godot.Animation.InterpolationType) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        interpolation.withGodotUnsafeRawPointer { __ptr_interpolation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_interpolation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_interpolation_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_get_interpolation_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_interpolation_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1530756894)!
        }
        }
    }()
    public func trackGetInterpolationType(trackIdx: Int32) -> Godot.Animation.InterpolationType {
        Godot.Animation.InterpolationType.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_interpolation_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_set_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_interpolation_loop_wrap").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func trackSetInterpolationLoopWrap(trackIdx: Int32, interpolation: Bool) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        interpolation.withGodotUnsafeRawPointer { __ptr_interpolation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_interpolation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_set_interpolation_loop_wrap,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_track_get_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_interpolation_loop_wrap").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func trackGetInterpolationLoopWrap(trackIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_get_interpolation_loop_wrap,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_track_is_compressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_compressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func trackIsCompressed(trackIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_track_is_compressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_value_track_set_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_set_update_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2854058312)!
        }
        }
    }()
    public func valueTrackSetUpdateMode(trackIdx: Int32, mode: Godot.Animation.UpdateMode) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_value_track_set_update_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_value_track_get_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_get_update_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1440326473)!
        }
        }
    }()
    public func valueTrackGetUpdateMode(trackIdx: Int32) -> Godot.Animation.UpdateMode {
        Godot.Animation.UpdateMode.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_value_track_get_update_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_value_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 491147702)!
        }
        }
    }()
    public func valueTrackInterpolate(trackIdx: Int32, timeSec: Double) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_value_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_method_track_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "method_track_get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 351665558)!
        }
        }
    }()
    public func methodTrackGetName(trackIdx: Int32, keyIdx: Int32) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_method_track_get_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_method_track_get_params: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "method_track_get_params").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2345056839)!
        }
        }
    }()
    public func methodTrackGetParams(trackIdx: Int32, keyIdx: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_method_track_get_params,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_bezier_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3656773645)!
        }
        }
    }()
    public func bezierTrackInsertKey(trackIdx: Int32, time: Double, value: Double, inHandle handle: Godot.Vector2 = Vector2(x: 0, y: 0), outHandle: Godot.Vector2 = Vector2(x: 0, y: 0)) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        value.withGodotUnsafeRawPointer { __ptr_value in
        handle.withGodotUnsafeRawPointer { __ptr_handle in
        outHandle.withGodotUnsafeRawPointer { __ptr_outHandle in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_value, __ptr_handle, __ptr_outHandle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_bezier_track_set_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func bezierTrackSetKeyValue(trackIdx: Int32, keyIdx: Int32, value: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_set_key_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_bezier_track_set_key_in_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_in_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1719223284)!
        }
        }
    }()
    public func bezierTrackSetKeyInHandle(trackIdx: Int32, keyIdx: Int32, inHandle handle: Godot.Vector2, balancedValueTimeRatio: Double = 1.0) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        handle.withGodotUnsafeRawPointer { __ptr_handle in
        balancedValueTimeRatio.withGodotUnsafeRawPointer { __ptr_balancedValueTimeRatio in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_handle, __ptr_balancedValueTimeRatio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_set_key_in_handle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_bezier_track_set_key_out_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_out_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1719223284)!
        }
        }
    }()
    public func bezierTrackSetKeyOutHandle(trackIdx: Int32, keyIdx: Int32, outHandle: Godot.Vector2, balancedValueTimeRatio: Double = 1.0) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        outHandle.withGodotUnsafeRawPointer { __ptr_outHandle in
        balancedValueTimeRatio.withGodotUnsafeRawPointer { __ptr_balancedValueTimeRatio in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_outHandle, __ptr_balancedValueTimeRatio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_set_key_out_handle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_bezier_track_get_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func bezierTrackGetKeyValue(trackIdx: Int32, keyIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_get_key_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_bezier_track_get_key_in_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_in_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func bezierTrackGetKeyInHandle(trackIdx: Int32, keyIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_get_key_in_handle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_bezier_track_get_key_out_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_out_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func bezierTrackGetKeyOutHandle(trackIdx: Int32, keyIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_get_key_out_handle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_bezier_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1900462983)!
        }
        }
    }()
    public func bezierTrackInterpolate(trackIdx: Int32, time: Double) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bezier_track_interpolate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_audio_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4021027286)!
        }
        }
    }()
    public func audioTrackInsertKey(trackIdx: Int32, time: Double, stream: Godot.Resource?, startOffset: Double = 0, endOffset: Double = 0) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
        startOffset.withGodotUnsafeRawPointer { __ptr_startOffset in
        endOffset.withGodotUnsafeRawPointer { __ptr_endOffset in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, _ptr___ptr_stream, __ptr_startOffset, __ptr_endOffset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_audio_track_set_key_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3886397084)!
        }
        }
    }()
    public func audioTrackSetKeyStream(trackIdx: Int32, keyIdx: Int32, stream: Godot.Resource?) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        stream.withGodotUnsafeRawPointer { __ptr_stream in
        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, _ptr___ptr_stream) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_set_key_stream,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_audio_track_set_key_start_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_start_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func audioTrackSetKeyStartOffset(trackIdx: Int32, keyIdx: Int32, offset: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_set_key_start_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_audio_track_set_key_end_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_end_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func audioTrackSetKeyEndOffset(trackIdx: Int32, keyIdx: Int32, offset: Double) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_set_key_end_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_audio_track_get_key_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_stream").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 635277205)!
        }
        }
    }()
    public func audioTrackGetKeyStream(trackIdx: Int32, keyIdx: Int32) -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_get_key_stream,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_audio_track_get_key_start_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_start_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func audioTrackGetKeyStartOffset(trackIdx: Int32, keyIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_get_key_start_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_audio_track_get_key_end_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_end_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func audioTrackGetKeyEndOffset(trackIdx: Int32, keyIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_get_key_end_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_audio_track_set_use_blend: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_use_blend").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func audioTrackSetUseBlend(trackIdx: Int32, enable: Bool) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_set_use_blend,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_audio_track_is_use_blend: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_is_use_blend").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func audioTrackIsUseBlend(trackIdx: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_audio_track_is_use_blend,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_animation_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_insert_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 158676774)!
        }
        }
    }()
    public func animationTrackInsertKey(trackIdx: Int32, time: Double, animation: Godot.GodotStringName) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        time.withGodotUnsafeRawPointer { __ptr_time in
        animation.withGodotUnsafeRawPointer { __ptr_animation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_animation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_animation_track_insert_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_animation_track_set_key_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_set_key_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 117615382)!
        }
        }
    }()
    public func animationTrackSetKeyAnimation(trackIdx: Int32, keyIdx: Int32, animation: Godot.GodotStringName) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        animation.withGodotUnsafeRawPointer { __ptr_animation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_animation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_animation_track_set_key_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_animation_track_get_key_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_get_key_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 351665558)!
        }
        }
    }()
    public func animationTrackGetKeyAnimation(trackIdx: Int32, keyIdx: Int32) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        keyIdx.withGodotUnsafeRawPointer { __ptr_keyIdx in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_animation_track_get_key_animation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLength(timeSec: Double) {
        timeSec.withGodotUnsafeRawPointer { __ptr_timeSec in
        withUnsafeArgumentPackPointer(__ptr_timeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_length,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLength() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_loop_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_loop_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3155355575)!
        }
        }
    }()
    private func __setLoopMode(_ loopMode: Godot.Animation.LoopMode) {
        loopMode.withGodotUnsafeRawPointer { __ptr_loopMode in
        withUnsafeArgumentPackPointer(__ptr_loopMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_loop_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_loop_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_loop_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1988889481)!
        }
        }
    }()
    private func __getLoopMode() -> Godot.Animation.LoopMode {
        Godot.Animation.LoopMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_loop_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setStep(sizeSec: Double) {
        sizeSec.withGodotUnsafeRawPointer { __ptr_sizeSec in
        withUnsafeArgumentPackPointer(__ptr_sizeSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_step,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getStep() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_step,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_copy_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "copy_track").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 148001024)!
        }
        }
    }()
    public func copyTrack(trackIdx: Int32, to animation: Godot.Animation?) {
        trackIdx.withGodotUnsafeRawPointer { __ptr_trackIdx in
        animation.withGodotUnsafeRawPointer { __ptr_animation in
        withUnsafePointer(to: __ptr_animation) { _ptr___ptr_animation in
        withUnsafeArgumentPackPointer(__ptr_trackIdx, _ptr___ptr_animation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_copy_track,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compress").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3608408117)!
        }
        }
    }()
    public func compress(pageSize: UInt32 = 8192, fps: UInt32 = 120, splitTolerance: Double = 4.0) {
        pageSize.withGodotUnsafeRawPointer { __ptr_pageSize in
        fps.withGodotUnsafeRawPointer { __ptr_fps in
        splitTolerance.withGodotUnsafeRawPointer { __ptr_splitTolerance in
        withUnsafeArgumentPackPointer(__ptr_pageSize, __ptr_fps, __ptr_splitTolerance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_compress,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    public var length: Double {
        get {
            __getLength()
        }
        set {
            __setLength(
                timeSec: newValue
            )
        }
    }

    public var loopMode: Godot.Animation.LoopMode {
        get {
            __getLoopMode()
        }
        set {
            __setLoopMode(
                newValue
            )
        }
    }

    public var step: Double {
        get {
            __getStep()
        }
        set {
            __setStep(
                sizeSec: newValue
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