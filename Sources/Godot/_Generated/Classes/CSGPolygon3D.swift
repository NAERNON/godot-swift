//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CSGPolygon3D: CSGPrimitive3D {
    public enum Mode: UInt32, GodotEnum {
        case depth = 0
        case spin = 1
        case path = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Depth", 0),
            ("Spin", 1),
            ("Path", 2),]
        }
    }
    public enum PathRotation: UInt32, GodotEnum {
        case polygon = 0
        case path = 1
        case pathFollow = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Polygon", 0),
            ("Path", 1),
            ("Path Follow", 2),]
        }
    }
    public enum PathIntervalType: UInt32, GodotEnum {
        case distance = 0
        case subdivide = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Distance", 0),
            ("Subdivide", 1),]
        }
    }

    private static var __method_binding_set_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1509147220)!
        }
        }
    }()
    private func __setPolygon(_ polygon: Godot.PackedVector2Array) {
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2961356807)!
        }
        }
    }()
    private func __getPolygon() -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_polygon,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3158377035)!
        }
        }
    }()
    private func __setMode(_ mode: Godot.CSGPolygon3D.Mode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1201612222)!
        }
        }
    }()
    private func __getMode() -> Godot.CSGPolygon3D.Mode {
        Godot.CSGPolygon3D.Mode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDepth(_ depth: Double) {
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        withUnsafeArgumentPackPointer(__ptr_depth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDepth() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_spin_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_spin_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpinDegrees(_ degrees: Double) {
        degrees.withGodotUnsafeRawPointer { __ptr_degrees in
        withUnsafeArgumentPackPointer(__ptr_degrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_spin_degrees,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_spin_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spin_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpinDegrees() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_spin_degrees,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_spin_sides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_spin_sides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSpinSides(_ spinSides: Int32) {
        spinSides.withGodotUnsafeRawPointer { __ptr_spinSides in
        withUnsafeArgumentPackPointer(__ptr_spinSides) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_spin_sides,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_spin_sides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spin_sides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSpinSides() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_spin_sides,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setPathNode(path: Godot.NodePath) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getPathNode() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_interval_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_interval_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744240707)!
        }
        }
    }()
    private func __setPathIntervalType(_ intervalType: Godot.CSGPolygon3D.PathIntervalType) {
        intervalType.withGodotUnsafeRawPointer { __ptr_intervalType in
        withUnsafeArgumentPackPointer(__ptr_intervalType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_interval_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_interval_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_interval_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3434618397)!
        }
        }
    }()
    private func __getPathIntervalType() -> Godot.CSGPolygon3D.PathIntervalType {
        Godot.CSGPolygon3D.PathIntervalType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_interval_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPathInterval(_ interval: Double) {
        interval.withGodotUnsafeRawPointer { __ptr_interval in
        withUnsafeArgumentPackPointer(__ptr_interval) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_interval,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPathInterval() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_interval,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_simplify_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_simplify_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPathSimplifyAngle(degrees: Double) {
        degrees.withGodotUnsafeRawPointer { __ptr_degrees in
        withUnsafeArgumentPackPointer(__ptr_degrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_simplify_angle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_simplify_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_simplify_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPathSimplifyAngle() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_simplify_angle,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1412947288)!
        }
        }
    }()
    private func __setPathRotation(_ pathRotation: Godot.CSGPolygon3D.PathRotation) {
        pathRotation.withGodotUnsafeRawPointer { __ptr_pathRotation in
        withUnsafeArgumentPackPointer(__ptr_pathRotation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_rotation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 647219346)!
        }
        }
    }()
    private func __getPathRotation() -> Godot.CSGPolygon3D.PathRotation {
        Godot.CSGPolygon3D.PathRotation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPathLocal(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_local,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_path_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_path_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPathLocal() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_path_local,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_continuous_u: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_continuous_u").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPathContinuousU(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_continuous_u,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_path_continuous_u: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_path_continuous_u").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPathContinuousU() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_path_continuous_u,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_u_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_u_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPathUDistance(_ distance: Double) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_u_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path_u_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_u_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPathUDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_u_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_path_joined: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path_joined").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPathJoined(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path_joined,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_path_joined: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_path_joined").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPathJoined() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_path_joined,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    private func __setMaterial(_ material: Godot.Material?) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
        }
        }
    }()
    private func __getMaterial() -> Godot.Material? {
        Godot.Material?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_material,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_smooth_faces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_smooth_faces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSmoothFaces(_ smoothFaces: Bool) {
        smoothFaces.withGodotUnsafeRawPointer { __ptr_smoothFaces in
        withUnsafeArgumentPackPointer(__ptr_smoothFaces) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_smooth_faces,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_smooth_faces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_smooth_faces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getSmoothFaces() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_smooth_faces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var polygon: Godot.PackedVector2Array {
        get {
            __getPolygon()
        }
        set {
            __setPolygon(
                newValue
            )
        }
    }

    public var mode: Godot.CSGPolygon3D.Mode {
        get {
            __getMode()
        }
        set {
            __setMode(
                newValue
            )
        }
    }

    public var depth: Double {
        get {
            __getDepth()
        }
        set {
            __setDepth(
                newValue
            )
        }
    }

    public var spinDegrees: Double {
        get {
            __getSpinDegrees()
        }
        set {
            __setSpinDegrees(
                newValue
            )
        }
    }

    public var spinSides: Int32 {
        get {
            __getSpinSides()
        }
        set {
            __setSpinSides(
                newValue
            )
        }
    }

    public var pathNode: Godot.NodePath {
        get {
            __getPathNode()
        }
        set {
            __setPathNode(
                path: newValue
            )
        }
    }

    public var pathIntervalType: Godot.CSGPolygon3D.PathIntervalType {
        get {
            __getPathIntervalType()
        }
        set {
            __setPathIntervalType(
                newValue
            )
        }
    }

    public var pathInterval: Double {
        get {
            __getPathInterval()
        }
        set {
            __setPathInterval(
                newValue
            )
        }
    }

    public var pathSimplifyAngle: Double {
        get {
            __getPathSimplifyAngle()
        }
        set {
            __setPathSimplifyAngle(
                degrees: newValue
            )
        }
    }

    public var pathRotation: Godot.CSGPolygon3D.PathRotation {
        get {
            __getPathRotation()
        }
        set {
            __setPathRotation(
                newValue
            )
        }
    }

    public var isPathLocal: Bool {
        get {
            __isPathLocal()
        }
        set {
            __setPathLocal(
                enable: newValue
            )
        }
    }

    public var isPathContinuousU: Bool {
        get {
            __isPathContinuousU()
        }
        set {
            __setPathContinuousU(
                enable: newValue
            )
        }
    }

    public var pathUDistance: Double {
        get {
            __getPathUDistance()
        }
        set {
            __setPathUDistance(
                newValue
            )
        }
    }

    public var isPathJoined: Bool {
        get {
            __isPathJoined()
        }
        set {
            __setPathJoined(
                enable: newValue
            )
        }
    }

    public var smoothFaces: Bool {
        get {
            __getSmoothFaces()
        }
        set {
            __setSmoothFaces(
                newValue
            )
        }
    }

    public var material: Godot.Material? {
        get {
            __getMaterial()
        }
        set {
            __setMaterial(
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