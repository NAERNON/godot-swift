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
            ("Position3D", 1),
            ("Rotation3D", 2),
            ("Scale3D", 3),
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

    internal static var __method_binding_add_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_track").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3843682357)!
        }
        }
    }()

    public func addTrack(
        type: Godot.Animation.TrackType,
        atPosition position: Int32 = -1
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
                withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                    withUnsafeArgumentPackPointer(__ptr_type, __ptr_position) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_track,
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

    internal static var __method_binding_remove_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_track").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeTrack(
        trackIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_track,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_track_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_track_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func trackCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_track_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_track_get_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_type").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3445944217)!
        }
        }
    }()

    public func trackGetType(
        trackIdx: Int32
    ) -> Godot.Animation.TrackType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_get_type,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()

    public func trackGetPath(
        trackIdx: Int32
    ) -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_get_path,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_set_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()

    public func trackSetPath(
        trackIdx: Int32,
        path: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_path) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_set_path,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_find_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_track").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 245376003)!
        }
        }
    }()

    public func findTrack(
        path: Godot.NodePath,
        type: Godot.Animation.TrackType
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
                    withUnsafeArgumentPackPointer(__ptr_path, __ptr_type) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_find_track,
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

    internal static var __method_binding_track_move_up: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_up").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func trackMoveUp(
        trackIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_track_move_up,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_track_move_down: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_down").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func trackMoveDown(
        trackIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_track_move_down,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_track_move_to: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_move_to").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func trackMoveTo(
        trackIdx: Int32,
        toIdx idx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_move_to,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_swap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_swap").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func trackSwap(
        trackIdx: Int32,
        withIdx idx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_swap,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_set_imported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_imported").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func trackSetImported(
        trackIdx: Int32,
        imported: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: imported) { __ptr_imported in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_imported) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_set_imported,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_is_imported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_imported").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func trackIsImported(
        trackIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_is_imported,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func trackSetEnabled(
        trackIdx: Int32,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_set_enabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_is_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_enabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func trackIsEnabled(
        trackIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_is_enabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_position_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "position_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2540608232)!
        }
        }
    }()

    public func positionTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        position: Godot.Vector3
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_position) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_position_track_insert_key,
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

    internal static var __method_binding_rotation_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotation_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4165004800)!
        }
        }
    }()

    public func rotationTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        rotation: Godot.Quaternion
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: rotation) { __ptr_rotation in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_rotation) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_rotation_track_insert_key,
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

    internal static var __method_binding_scale_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scale_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2540608232)!
        }
        }
    }()

    public func scaleTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        scale: Godot.Vector3
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_scale) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_scale_track_insert_key,
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

    internal static var __method_binding_blend_shape_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_shape_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1534913637)!
        }
        }
    }()

    public func blendShapeTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        amount: Double
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: amount) { __ptr_amount in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_amount) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_blend_shape_track_insert_key,
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

    internal static var __method_binding_position_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "position_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3285246857)!
        }
        }
    }()

    public func positionTrackInterpolate(
        trackIdx: Int32,
        timeSec: Double
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_position_track_interpolate,
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

    internal static var __method_binding_rotation_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotation_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1988711975)!
        }
        }
    }()

    public func rotationTrackInterpolate(
        trackIdx: Int32,
        timeSec: Double
    ) -> Godot.Quaternion {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_rotation_track_interpolate,
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

    internal static var __method_binding_scale_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scale_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3285246857)!
        }
        }
    }()

    public func scaleTrackInterpolate(
        trackIdx: Int32,
        timeSec: Double
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_scale_track_interpolate,
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

    internal static var __method_binding_blend_shape_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_shape_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1900462983)!
        }
        }
    }()

    public func blendShapeTrackInterpolate(
        trackIdx: Int32,
        timeSec: Double
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_blend_shape_track_interpolate,
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

    internal static var __method_binding_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 808952278)!
        }
        }
    }()

    public func trackInsertKey<Value: Variant.Storable>(
        trackIdx: Int32,
        time: Double,
        key: Value,
        transition: Double = 1
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
                        withTransferrableUnsafeRawPointer(to: transition) { __ptr_transition in
                            withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_key, __ptr_transition) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_track_insert_key,
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

    internal static var __method_binding_track_remove_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_remove_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func trackRemoveKey(
        trackIdx: Int32,
        keyIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_remove_key,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_remove_key_at_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_remove_key_at_time").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func trackRemoveKeyAtTime(
        trackIdx: Int32,
        time: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_remove_key_at_time,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_set_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2060538656)!
        }
        }
    }()

    public func trackSetKeyValue<Value: Variant.Storable>(
        trackIdx: Int32,
        key: Int32,
        value: Value
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_key, __ptr_value) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_set_key_value,
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

    internal static var __method_binding_track_set_key_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func trackSetKeyTransition(
        trackIdx: Int32,
        keyIdx: Int32,
        transition: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: transition) { __ptr_transition in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_transition) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_set_key_transition,
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

    internal static var __method_binding_track_set_key_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_key_time").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func trackSetKeyTime(
        trackIdx: Int32,
        keyIdx: Int32,
        time: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_time) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_set_key_time,
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

    internal static var __method_binding_track_get_key_transition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_transition").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func trackGetKeyTransition(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_get_key_transition,
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

    internal static var __method_binding_track_get_key_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func trackGetKeyCount(
        trackIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_get_key_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_get_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 678354945)!
        }
        }
    }()

    public func trackGetKeyValue(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_get_key_value,
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

    internal static var __method_binding_track_get_key_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_key_time").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func trackGetKeyTime(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_track_get_key_time,
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

    internal static var __method_binding_track_find_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_find_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3245197284)!
        }
        }
    }()

    public func trackFindKey(
        trackIdx: Int32,
        time: Double,
        findMode: Godot.Animation.FindMode = Animation.FindMode(rawValue: 0)!
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: findMode) { __ptr_findMode in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_findMode) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_track_find_key,
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

    internal static var __method_binding_track_set_interpolation_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_interpolation_type").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4112932513)!
        }
        }
    }()

    public func trackSetInterpolationType(
        trackIdx: Int32,
        interpolation: Godot.Animation.InterpolationType
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: interpolation) { __ptr_interpolation in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_interpolation) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_set_interpolation_type,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_get_interpolation_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_interpolation_type").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1530756894)!
        }
        }
    }()

    public func trackGetInterpolationType(
        trackIdx: Int32
    ) -> Godot.Animation.InterpolationType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_get_interpolation_type,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_set_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_set_interpolation_loop_wrap").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func trackSetInterpolationLoopWrap(
        trackIdx: Int32,
        interpolation: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: interpolation) { __ptr_interpolation in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_interpolation) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_set_interpolation_loop_wrap,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_get_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_get_interpolation_loop_wrap").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func trackGetInterpolationLoopWrap(
        trackIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_get_interpolation_loop_wrap,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_track_is_compressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "track_is_compressed").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func trackIsCompressed(
        trackIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_track_is_compressed,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_value_track_set_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_set_update_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2854058312)!
        }
        }
    }()

    public func valueTrackSetUpdateMode(
        trackIdx: Int32,
        mode: Godot.Animation.UpdateMode
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_mode) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_value_track_set_update_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_value_track_get_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_get_update_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1440326473)!
        }
        }
    }()

    public func valueTrackGetUpdateMode(
        trackIdx: Int32
    ) -> Godot.Animation.UpdateMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_value_track_get_update_mode,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_value_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "value_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 491147702)!
        }
        }
    }()

    public func valueTrackInterpolate(
        trackIdx: Int32,
        timeSec: Double
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_timeSec) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_value_track_interpolate,
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

    internal static var __method_binding_method_track_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "method_track_get_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 351665558)!
        }
        }
    }()

    public func methodTrackGetName(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_method_track_get_name,
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

    internal static var __method_binding_method_track_get_params: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "method_track_get_params").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2345056839)!
        }
        }
    }()

    public func methodTrackGetParams(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.AnyGodotArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_method_track_get_params,
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

    internal static var __method_binding_bezier_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3656773645)!
        }
        }
    }()

    public func bezierTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        value: Double,
        inHandle handle: Godot.Vector2 = Vector2(x: 0, y: 0),
        outHandle: Godot.Vector2 = Vector2(x: 0, y: 0)
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                        withTransferrableUnsafeRawPointer(to: handle) { __ptr_handle in
                            withTransferrableUnsafeRawPointer(to: outHandle) { __ptr_outHandle in
                                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_value, __ptr_handle, __ptr_outHandle) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_bezier_track_insert_key,
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

    internal static var __method_binding_bezier_track_set_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func bezierTrackSetKeyValue(
        trackIdx: Int32,
        keyIdx: Int32,
        value: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_value) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_bezier_track_set_key_value,
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

    internal static var __method_binding_bezier_track_set_key_in_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_in_handle").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1719223284)!
        }
        }
    }()

    public func bezierTrackSetKeyInHandle(
        trackIdx: Int32,
        keyIdx: Int32,
        inHandle handle: Godot.Vector2,
        balancedValueTimeRatio: Double = 1.0
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: handle) { __ptr_handle in
                    withTransferrableUnsafeRawPointer(to: balancedValueTimeRatio) { __ptr_balancedValueTimeRatio in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_handle, __ptr_balancedValueTimeRatio) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_bezier_track_set_key_in_handle,
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

    internal static var __method_binding_bezier_track_set_key_out_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_set_key_out_handle").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1719223284)!
        }
        }
    }()

    public func bezierTrackSetKeyOutHandle(
        trackIdx: Int32,
        keyIdx: Int32,
        outHandle: Godot.Vector2,
        balancedValueTimeRatio: Double = 1.0
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: outHandle) { __ptr_outHandle in
                    withTransferrableUnsafeRawPointer(to: balancedValueTimeRatio) { __ptr_balancedValueTimeRatio in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_outHandle, __ptr_balancedValueTimeRatio) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_bezier_track_set_key_out_handle,
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

    internal static var __method_binding_bezier_track_get_key_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func bezierTrackGetKeyValue(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_bezier_track_get_key_value,
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

    internal static var __method_binding_bezier_track_get_key_in_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_in_handle").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func bezierTrackGetKeyInHandle(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_bezier_track_get_key_in_handle,
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

    internal static var __method_binding_bezier_track_get_key_out_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_get_key_out_handle").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func bezierTrackGetKeyOutHandle(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_bezier_track_get_key_out_handle,
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

    internal static var __method_binding_bezier_track_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bezier_track_interpolate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1900462983)!
        }
        }
    }()

    public func bezierTrackInterpolate(
        trackIdx: Int32,
        time: Double
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_bezier_track_interpolate,
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

    internal static var __method_binding_audio_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4021027286)!
        }
        }
    }()

    public func audioTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        stream: Godot.Resource?,
        startOffset: Double = 0,
        endOffset: Double = 0
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                        withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
                            withTransferrableUnsafeRawPointer(to: startOffset) { __ptr_startOffset in
                                withTransferrableUnsafeRawPointer(to: endOffset) { __ptr_endOffset in
                                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, _ptr___ptr_stream, __ptr_startOffset, __ptr_endOffset) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_audio_track_insert_key,
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
    }

    internal static var __method_binding_audio_track_set_key_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_stream").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3886397084)!
        }
        }
    }()

    public func audioTrackSetKeyStream(
        trackIdx: Int32,
        keyIdx: Int32,
        stream: Godot.Resource?
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: stream) { __ptr_stream in
                    withUnsafePointer(to: __ptr_stream) { _ptr___ptr_stream in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, _ptr___ptr_stream) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_audio_track_set_key_stream,
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

    internal static var __method_binding_audio_track_set_key_start_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_start_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func audioTrackSetKeyStartOffset(
        trackIdx: Int32,
        keyIdx: Int32,
        offset: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_offset) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_audio_track_set_key_start_offset,
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

    internal static var __method_binding_audio_track_set_key_end_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_key_end_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func audioTrackSetKeyEndOffset(
        trackIdx: Int32,
        keyIdx: Int32,
        offset: Double
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_offset) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_audio_track_set_key_end_offset,
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

    internal static var __method_binding_audio_track_get_key_stream: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_stream").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 635277205)!
        }
        }
    }()

    public func audioTrackGetKeyStream(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.Resource? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_audio_track_get_key_stream,
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

    internal static var __method_binding_audio_track_get_key_start_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_start_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func audioTrackGetKeyStartOffset(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_audio_track_get_key_start_offset,
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

    internal static var __method_binding_audio_track_get_key_end_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_get_key_end_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func audioTrackGetKeyEndOffset(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_audio_track_get_key_end_offset,
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

    internal static var __method_binding_audio_track_set_use_blend: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_set_use_blend").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func audioTrackSetUseBlend(
        trackIdx: Int32,
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
                withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_enable) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_audio_track_set_use_blend,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_audio_track_is_use_blend: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "audio_track_is_use_blend").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func audioTrackIsUseBlend(
        trackIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withUnsafeArgumentPackPointer(__ptr_trackIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_audio_track_is_use_blend,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_animation_track_insert_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_insert_key").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 158676774)!
        }
        }
    }()

    public func animationTrackInsertKey(
        trackIdx: Int32,
        time: Double,
        animation: Godot.GodotStringName
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: time) { __ptr_time in
                    withTransferrableUnsafeRawPointer(to: animation) { __ptr_animation in
                        withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_time, __ptr_animation) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_animation_track_insert_key,
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

    internal static var __method_binding_animation_track_set_key_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_set_key_animation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 117615382)!
        }
        }
    }()

    public func animationTrackSetKeyAnimation(
        trackIdx: Int32,
        keyIdx: Int32,
        animation: Godot.GodotStringName
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                withTransferrableUnsafeRawPointer(to: animation) { __ptr_animation in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx, __ptr_animation) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_animation_track_set_key_animation,
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

    internal static var __method_binding_animation_track_get_key_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "animation_track_get_key_animation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 351665558)!
        }
        }
    }()

    public func animationTrackGetKeyAnimation(
        trackIdx: Int32,
        keyIdx: Int32
    ) -> Godot.GodotStringName {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
                withTransferrableUnsafeRawPointer(to: keyIdx) { __ptr_keyIdx in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, __ptr_keyIdx) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_animation_track_get_key_animation,
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

    internal static var __method_binding_set_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setLength(
        timeSec: Double
    ) {
        withTransferrableUnsafeRawPointer(to: timeSec) { __ptr_timeSec in
            withUnsafeArgumentPackPointer(__ptr_timeSec) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_length,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getLength() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_length,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_loop_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_loop_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3155355575)!
        }
        }
    }()

    private func __setLoopMode(
        _ loopMode: Godot.Animation.LoopMode
    ) {
        withTransferrableUnsafeRawPointer(to: loopMode) { __ptr_loopMode in
            withUnsafeArgumentPackPointer(__ptr_loopMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_loop_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_loop_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_loop_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1988889481)!
        }
        }
    }()

    private func __getLoopMode() -> Godot.Animation.LoopMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_loop_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_step").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setStep(
        sizeSec: Double
    ) {
        withTransferrableUnsafeRawPointer(to: sizeSec) { __ptr_sizeSec in
            withUnsafeArgumentPackPointer(__ptr_sizeSec) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_step,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_step").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getStep() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_step,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clear() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_copy_track: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "copy_track").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 148001024)!
        }
        }
    }()

    public func copyTrack(
        trackIdx: Int32,
        to animation: Godot.Animation?
    ) {
        withTransferrableUnsafeRawPointer(to: trackIdx) { __ptr_trackIdx in
            withTransferrableUnsafeRawPointer(to: animation) { __ptr_animation in
                withUnsafePointer(to: __ptr_animation) { _ptr___ptr_animation in
                    withUnsafeArgumentPackPointer(__ptr_trackIdx, _ptr___ptr_animation) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_copy_track,
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

    internal static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compress").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3608408117)!
        }
        }
    }()

    public func compress(
        pageSize: UInt32 = 8192,
        fps: UInt32 = 120,
        splitTolerance: Double = 4.0
    ) {
        withTransferrableUnsafeRawPointer(to: pageSize) { __ptr_pageSize in
            withTransferrableUnsafeRawPointer(to: fps) { __ptr_fps in
                withTransferrableUnsafeRawPointer(to: splitTolerance) { __ptr_splitTolerance in
                    withUnsafeArgumentPackPointer(__ptr_pageSize, __ptr_fps, __ptr_splitTolerance) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_compress,
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