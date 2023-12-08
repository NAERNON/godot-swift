//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Geometry3D: Object {
    private static var __method_binding_build_box_planes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_box_planes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3622277145)!
        }
        }
    }()
    public func buildBoxPlanes(extents: Godot.Vector3) -> Godot.GodotArray<Godot.Plane> {
        let __temporary = Godot.GodotArray<Godot.Plane>()
        withUnsafePointer(to: extents) { (__ptr_extents) in
            withUnsafeArgumentPackPointer(__ptr_extents) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_build_box_planes,
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

    private static var __method_binding_build_cylinder_planes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_cylinder_planes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3142160516)!
        }
        }
    }()
    public func buildCylinderPlanes(radius: Double, height: Double, sides: Int32, axis: Godot.Vector3.Axis = Vector3.Axis(rawValue: 2)!) -> Godot.GodotArray<Godot.Plane> {
        let __temporary = Godot.GodotArray<Godot.Plane>()
        withUnsafePointer(to: radius) { (__ptr_radius) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: sides) { (__ptr_sides) in
                    withUnsafePointer(to: axis) { (__ptr_axis) in
                        withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_axis) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_build_cylinder_planes,
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
        return __temporary
    }

    private static var __method_binding_build_capsule_planes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "build_capsule_planes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 410870045)!
        }
        }
    }()
    public func buildCapsulePlanes(radius: Double, height: Double, sides: Int32, lats: Int32, axis: Godot.Vector3.Axis = Vector3.Axis(rawValue: 2)!) -> Godot.GodotArray<Godot.Plane> {
        let __temporary = Godot.GodotArray<Godot.Plane>()
        withUnsafePointer(to: radius) { (__ptr_radius) in
            withUnsafePointer(to: height) { (__ptr_height) in
                withUnsafePointer(to: sides) { (__ptr_sides) in
                    withUnsafePointer(to: lats) { (__ptr_lats) in
                        withUnsafePointer(to: axis) { (__ptr_axis) in
                            withUnsafeArgumentPackPointer(__ptr_radius, __ptr_height, __ptr_sides, __ptr_lats, __ptr_axis) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_build_capsule_planes,
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

    private static var __method_binding_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_points_between_segments").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1056373962)!
        }
        }
    }()
    public func closestPointsBetweenSegments(p1: Godot.Vector3, p2: Godot.Vector3, q1: Godot.Vector3, q2: Godot.Vector3) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        withUnsafePointer(to: p1) { (__ptr_p1) in
            withUnsafePointer(to: p2) { (__ptr_p2) in
                withUnsafePointer(to: q1) { (__ptr_q1) in
                    withUnsafePointer(to: q2) { (__ptr_q2) in
                        withUnsafeArgumentPackPointer(__ptr_p1, __ptr_p2, __ptr_q1, __ptr_q2) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_get_closest_points_between_segments,
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
        return __temporary
    }

    private static var __method_binding_get_closest_point_to_segment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()
    public func closestPointToSegment(point: Godot.Vector3, s1: Godot.Vector3, s2: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafePointer(to: s1) { (__ptr_s1) in
                withUnsafePointer(to: s2) { (__ptr_s2) in
                    withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_closest_point_to_segment,
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
        return __temporary
    }

    private static var __method_binding_get_closest_point_to_segment_uncapped: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point_to_segment_uncapped").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2168193209)!
        }
        }
    }()
    public func closestPointToSegmentUncapped(point: Godot.Vector3, s1: Godot.Vector3, s2: Godot.Vector3) -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafePointer(to: s1) { (__ptr_s1) in
                withUnsafePointer(to: s2) { (__ptr_s2) in
                    withUnsafeArgumentPackPointer(__ptr_point, __ptr_s1, __ptr_s2) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_closest_point_to_segment_uncapped,
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
        return __temporary
    }

    private static var __method_binding_ray_intersects_triangle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ray_intersects_triangle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1718655448)!
        }
        }
    }()
    public func rayIntersectsTriangle(from: Godot.Vector3, dir: Godot.Vector3, a: Godot.Vector3, b: Godot.Vector3, c: Godot.Vector3) -> Godot.Variant {
        let __temporary = Godot.Variant()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: dir) { (__ptr_dir) in
                withUnsafePointer(to: a) { (__ptr_a) in
                    withUnsafePointer(to: b) { (__ptr_b) in
                        withUnsafePointer(to: c) { (__ptr_c) in
                            withUnsafeArgumentPackPointer(__ptr_from, __ptr_dir, __ptr_a, __ptr_b, __ptr_c) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_ray_intersects_triangle,
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

    private static var __method_binding_segment_intersects_triangle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_triangle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1718655448)!
        }
        }
    }()
    public func segmentIntersectsTriangle(from: Godot.Vector3, to: Godot.Vector3, a: Godot.Vector3, b: Godot.Vector3, c: Godot.Vector3) -> Godot.Variant {
        let __temporary = Godot.Variant()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafePointer(to: a) { (__ptr_a) in
                    withUnsafePointer(to: b) { (__ptr_b) in
                        withUnsafePointer(to: c) { (__ptr_c) in
                            withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_a, __ptr_b, __ptr_c) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_segment_intersects_triangle,
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

    private static var __method_binding_segment_intersects_sphere: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_sphere").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4080141172)!
        }
        }
    }()
    public func segmentIntersectsSphere(from: Godot.Vector3, to: Godot.Vector3, spherePosition: Godot.Vector3, sphereRadius: Double) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafePointer(to: spherePosition) { (__ptr_spherePosition) in
                    withUnsafePointer(to: sphereRadius) { (__ptr_sphereRadius) in
                        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_spherePosition, __ptr_sphereRadius) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_segment_intersects_sphere,
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
        return __temporary
    }

    private static var __method_binding_segment_intersects_cylinder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_cylinder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2361316491)!
        }
        }
    }()
    public func segmentIntersectsCylinder(from: Godot.Vector3, to: Godot.Vector3, height: Double, radius: Double) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafePointer(to: height) { (__ptr_height) in
                    withUnsafePointer(to: radius) { (__ptr_radius) in
                        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_height, __ptr_radius) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_segment_intersects_cylinder,
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
        return __temporary
    }

    private static var __method_binding_segment_intersects_convex: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_convex").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 537425332)!
        }
        }
    }()
    public func segmentIntersectsConvex(from: Godot.Vector3, to: Godot.Vector3, planes: Godot.GodotArray<Godot.Plane>) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                planes.withUnsafeRawPointer { (__ptr_planes) in
                    withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_planes) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_segment_intersects_convex,
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
        return __temporary
    }

    private static var __method_binding_clip_polygon: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clip_polygon").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2603188319)!
        }
        }
    }()
    public func clipPolygon(points: Godot.PackedVector3Array, plane: Godot.Plane) -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        points.withUnsafeRawPointer { (__ptr_points) in
            withUnsafePointer(to: plane) { (__ptr_plane) in
                withUnsafeArgumentPackPointer(__ptr_points, __ptr_plane) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_clip_polygon,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
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