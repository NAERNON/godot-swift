//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Geometry3D: Object {
    internal static var __method_binding_compute_convex_mesh_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compute_convex_mesh_points").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1936902142)!
        }
        }
    }()

    public func computeConvexMeshPoints(
        planes: Godot.GodotArray<Godot.Plane>
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: planes) { __ptr_planes in
                withUnsafeArgumentPackPointer(__ptr_planes) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_compute_convex_mesh_points,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_build_box_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_box_planes").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3622277145)!
        }
        }
    }()

    public func buildBoxPlanes(
        extents: Godot.Vector3
    ) -> Godot.GodotArray<Godot.Plane> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: extents) { __ptr_extents in
                withUnsafeArgumentPackPointer(__ptr_extents) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_build_box_planes,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_build_cylinder_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_cylinder_planes").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: radius) { __ptr_radius in
                withTransferrableUnsafeRawPointer(to: height) { __ptr_height in
                    withTransferrableUnsafeRawPointer(to: sides) { __ptr_sides in
                        withTransferrableUnsafeRawPointer(to: axis) { __ptr_axis in
                            withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_axis) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_build_cylinder_planes,
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

    internal static var __method_binding_build_capsule_planes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_capsule_planes").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: radius) { __ptr_radius in
                withTransferrableUnsafeRawPointer(to: height) { __ptr_height in
                    withTransferrableUnsafeRawPointer(to: sides) { __ptr_sides in
                        withTransferrableUnsafeRawPointer(to: lats) { __ptr_lats in
                            withTransferrableUnsafeRawPointer(to: axis) { __ptr_axis in
                                withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_lats, __ptr_axis) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_build_capsule_planes,
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

    internal static var __method_binding_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_points_between_segments").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1056373962)!
        }
        }
    }()

    public func closestPointsBetweenSegments(
        p1: Godot.Vector3,
        p2: Godot.Vector3,
        q1: Godot.Vector3,
        q2: Godot.Vector3
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: p1) { __ptr_p1 in
                withTransferrableUnsafeRawPointer(to: p2) { __ptr_p2 in
                    withTransferrableUnsafeRawPointer(to: q1) { __ptr_q1 in
                        withTransferrableUnsafeRawPointer(to: q2) { __ptr_q2 in
                            withUnsafeArgumentPackPointer(__ptr_p1, __ptr_p2, __ptr_q1, __ptr_q2) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_get_closest_points_between_segments,
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

    internal static var __method_binding_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()

    public func closestPointToSegment(
        point: Godot.Vector3,
        s1: Godot.Vector3,
        s2: Godot.Vector3
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withTransferrableUnsafeRawPointer(to: s1) { __ptr_s1 in
                    withTransferrableUnsafeRawPointer(to: s2) { __ptr_s2 in
                        withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_closest_point_to_segment,
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

    internal static var __method_binding_get_closest_point_to_segment_uncapped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment_uncapped").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()

    public func closestPointToSegmentUncapped(
        point: Godot.Vector3,
        s1: Godot.Vector3,
        s2: Godot.Vector3
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withTransferrableUnsafeRawPointer(to: s1) { __ptr_s1 in
                    withTransferrableUnsafeRawPointer(to: s2) { __ptr_s2 in
                        withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_closest_point_to_segment_uncapped,
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

    internal static var __method_binding_get_triangle_barycentric_coords: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_triangle_barycentric_coords").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: point) { __ptr_point in
                withTransferrableUnsafeRawPointer(to: a) { __ptr_a in
                    withTransferrableUnsafeRawPointer(to: b) { __ptr_b in
                        withTransferrableUnsafeRawPointer(to: c) { __ptr_c in
                            withUnsafeArgumentPackPointer(__ptr_point, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_get_triangle_barycentric_coords,
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

    internal static var __method_binding_ray_intersects_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ray_intersects_triangle").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: dir) { __ptr_dir in
                    withTransferrableUnsafeRawPointer(to: a) { __ptr_a in
                        withTransferrableUnsafeRawPointer(to: b) { __ptr_b in
                            withTransferrableUnsafeRawPointer(to: c) { __ptr_c in
                                withUnsafeArgumentPackPointer(__ptr_from, __ptr_dir, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_ray_intersects_triangle,
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

    internal static var __method_binding_segment_intersects_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_triangle").withUnsafeOpaquePointer { __ptr__method_name in
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
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                    withTransferrableUnsafeRawPointer(to: a) { __ptr_a in
                        withTransferrableUnsafeRawPointer(to: b) { __ptr_b in
                            withTransferrableUnsafeRawPointer(to: c) { __ptr_c in
                                withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_segment_intersects_triangle,
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

    internal static var __method_binding_segment_intersects_sphere: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_sphere").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4080141172)!
        }
        }
    }()

    public func segmentIntersectsSphere(
        from: Godot.Vector3,
        to: Godot.Vector3,
        spherePosition: Godot.Vector3,
        sphereRadius: Double
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                    withTransferrableUnsafeRawPointer(to: spherePosition) { __ptr_spherePosition in
                        withTransferrableUnsafeRawPointer(to: sphereRadius) { __ptr_sphereRadius in
                            withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_spherePosition, __ptr_sphereRadius) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_segment_intersects_sphere,
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

    internal static var __method_binding_segment_intersects_cylinder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_cylinder").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2361316491)!
        }
        }
    }()

    public func segmentIntersectsCylinder(
        from: Godot.Vector3,
        to: Godot.Vector3,
        height: Double,
        radius: Double
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                    withTransferrableUnsafeRawPointer(to: height) { __ptr_height in
                        withTransferrableUnsafeRawPointer(to: radius) { __ptr_radius in
                            withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_height, __ptr_radius) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_segment_intersects_cylinder,
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

    internal static var __method_binding_segment_intersects_convex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_convex").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 537425332)!
        }
        }
    }()

    public func segmentIntersectsConvex(
        from: Godot.Vector3,
        to: Godot.Vector3,
        planes: Godot.GodotArray<Godot.Plane>
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                    withTransferrableUnsafeRawPointer(to: planes) { __ptr_planes in
                        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_planes) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_segment_intersects_convex,
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

    internal static var __method_binding_clip_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clip_polygon").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2603188319)!
        }
        }
    }()

    public func clipPolygon(
        points: Godot.GodotContiguousArray<Vector3>,
        plane: Godot.Plane
    ) -> Godot.GodotContiguousArray<Vector3> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: points) { __ptr_points in
                withTransferrableUnsafeRawPointer(to: plane) { __ptr_plane in
                    withUnsafeArgumentPackPointer(__ptr_points, __ptr_plane) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_clip_polygon,
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