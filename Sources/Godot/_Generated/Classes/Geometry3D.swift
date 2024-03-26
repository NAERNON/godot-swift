//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Geometry3D: Object {
    internal static var __method_binding_compute_convex_mesh_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compute_convex_mesh_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1936902142)!
        }
        }
    }()

    public func computeConvexMeshPoints(
        planes: Godot.GodotArray<Godot.Plane>
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        planes.withGodotUnsafeRawPointer { __ptr_planes in
        withUnsafeArgumentPackPointer(__ptr_planes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_compute_convex_mesh_points,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_build_box_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_box_planes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3622277145)!
        }
        }
    }()

    public func buildBoxPlanes(
        extents: Godot.Vector3
    ) -> Godot.GodotArray<Godot.Plane> {
        Godot.GodotArray<Godot.Plane>.fromMutatingGodotUnsafePointer { __temporary in
        extents.withGodotUnsafeRawPointer { __ptr_extents in
        withUnsafeArgumentPackPointer(__ptr_extents) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_build_box_planes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_build_cylinder_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_cylinder_planes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 449920067)!
        }
        }
    }()

    public func buildCylinderPlanes(
        radius: Double,
        height: Double,
        sides: Int32,
        axis: Godot.Vector3.Axis = Vector3.Axis(rawValue: 2)!
    ) -> Godot.GodotArray<Godot.Plane> {
        Godot.GodotArray<Godot.Plane>.fromMutatingGodotUnsafePointer { __temporary in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        height.withGodotUnsafeRawPointer { __ptr_height in
        sides.withGodotUnsafeRawPointer { __ptr_sides in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_axis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_build_cylinder_planes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_build_capsule_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_capsule_planes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2113592876)!
        }
        }
    }()

    public func buildCapsulePlanes(
        radius: Double,
        height: Double,
        sides: Int32,
        lats: Int32,
        axis: Godot.Vector3.Axis = Vector3.Axis(rawValue: 2)!
    ) -> Godot.GodotArray<Godot.Plane> {
        Godot.GodotArray<Godot.Plane>.fromMutatingGodotUnsafePointer { __temporary in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        height.withGodotUnsafeRawPointer { __ptr_height in
        sides.withGodotUnsafeRawPointer { __ptr_sides in
        lats.withGodotUnsafeRawPointer { __ptr_lats in
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_lats, __ptr_axis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_build_capsule_planes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_points_between_segments").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1056373962)!
        }
        }
    }()

    public func closestPointsBetweenSegments(
        p1: Godot.Vector3,
        p2: Godot.Vector3,
        q1: Godot.Vector3,
        q2: Godot.Vector3
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        p1.withGodotUnsafeRawPointer { __ptr_p1 in
        p2.withGodotUnsafeRawPointer { __ptr_p2 in
        q1.withGodotUnsafeRawPointer { __ptr_q1 in
        q2.withGodotUnsafeRawPointer { __ptr_q2 in
        withUnsafeArgumentPackPointer(__ptr_p1, __ptr_p2, __ptr_q1, __ptr_q2) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_points_between_segments,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()

    public func closestPointToSegment(
        point: Godot.Vector3,
        s1: Godot.Vector3,
        s2: Godot.Vector3
    ) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        s1.withGodotUnsafeRawPointer { __ptr_s1 in
        s2.withGodotUnsafeRawPointer { __ptr_s2 in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_point_to_segment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_closest_point_to_segment_uncapped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment_uncapped").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()

    public func closestPointToSegmentUncapped(
        point: Godot.Vector3,
        s1: Godot.Vector3,
        s2: Godot.Vector3
    ) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        s1.withGodotUnsafeRawPointer { __ptr_s1 in
        s2.withGodotUnsafeRawPointer { __ptr_s2 in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_point_to_segment_uncapped,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_get_triangle_barycentric_coords: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_triangle_barycentric_coords").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1362048029)!
        }
        }
    }()

    public func triangleBarycentricCoords(
        point: Godot.Vector3,
        a: Godot.Vector3,
        b: Godot.Vector3,
        c: Godot.Vector3
    ) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        a.withGodotUnsafeRawPointer { __ptr_a in
        b.withGodotUnsafeRawPointer { __ptr_b in
        c.withGodotUnsafeRawPointer { __ptr_c in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_triangle_barycentric_coords,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_ray_intersects_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ray_intersects_triangle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1718655448)!
        }
        }
    }()

    public func rayIntersectsTriangle(
        from: Godot.Vector3,
        dir: Godot.Vector3,
        a: Godot.Vector3,
        b: Godot.Vector3,
        c: Godot.Vector3
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        dir.withGodotUnsafeRawPointer { __ptr_dir in
        a.withGodotUnsafeRawPointer { __ptr_a in
        b.withGodotUnsafeRawPointer { __ptr_b in
        c.withGodotUnsafeRawPointer { __ptr_c in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_dir, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_ray_intersects_triangle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_segment_intersects_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_triangle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1718655448)!
        }
        }
    }()

    public func segmentIntersectsTriangle(
        from: Godot.Vector3,
        to: Godot.Vector3,
        a: Godot.Vector3,
        b: Godot.Vector3,
        c: Godot.Vector3
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        a.withGodotUnsafeRawPointer { __ptr_a in
        b.withGodotUnsafeRawPointer { __ptr_b in
        c.withGodotUnsafeRawPointer { __ptr_c in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_triangle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_segment_intersects_sphere: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_sphere").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4080141172)!
        }
        }
    }()

    public func segmentIntersectsSphere(
        from: Godot.Vector3,
        to: Godot.Vector3,
        spherePosition: Godot.Vector3,
        sphereRadius: Double
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        spherePosition.withGodotUnsafeRawPointer { __ptr_spherePosition in
        sphereRadius.withGodotUnsafeRawPointer { __ptr_sphereRadius in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_spherePosition, __ptr_sphereRadius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_sphere,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_segment_intersects_cylinder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_cylinder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2361316491)!
        }
        }
    }()

    public func segmentIntersectsCylinder(
        from: Godot.Vector3,
        to: Godot.Vector3,
        height: Double,
        radius: Double
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        height.withGodotUnsafeRawPointer { __ptr_height in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_height, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_cylinder,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_segment_intersects_convex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_convex").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 537425332)!
        }
        }
    }()

    public func segmentIntersectsConvex(
        from: Godot.Vector3,
        to: Godot.Vector3,
        planes: Godot.GodotArray<Godot.Plane>
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        planes.withGodotUnsafeRawPointer { __ptr_planes in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_planes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_convex,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_clip_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clip_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2603188319)!
        }
        }
    }()

    public func clipPolygon(
        points: Godot.PackedVector3Array,
        plane: Godot.Plane
    ) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        points.withGodotUnsafeRawPointer { __ptr_points in
        plane.withGodotUnsafeRawPointer { __ptr_plane in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_plane) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clip_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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