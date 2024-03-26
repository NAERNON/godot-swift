//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Geometry2D: Object {
    public enum PolyBooleanOperation: UInt32, GodotEnum {
        case union = 0
        case difference = 1
        case intersection = 2
        case xor = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Union", 0),
            ("Difference", 1),
            ("Intersection", 2),
            ("Xor", 3),]
        }
    }

    public enum PolyJoinType: UInt32, GodotEnum {
        case square = 0
        case round = 1
        case miter = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Square", 0),
            ("Round", 1),
            ("Miter", 2),]
        }
    }

    public enum PolyEndType: UInt32, GodotEnum {
        case polygon = 0
        case joined = 1
        case butt = 2
        case square = 3
        case round = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Polygon", 0),
            ("Joined", 1),
            ("Butt", 2),
            ("Square", 3),
            ("Round", 4),]
        }
    }

    internal static var __method_binding_is_point_in_circle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_point_in_circle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2929491703)!
        }
        }
    }()

    public func isPointInCircle(
        point: Godot.Vector2,
        circlePosition: Godot.Vector2,
        circleRadius: Double
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        circlePosition.withGodotUnsafeRawPointer { __ptr_circlePosition in
        circleRadius.withGodotUnsafeRawPointer { __ptr_circleRadius in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_circlePosition, __ptr_circleRadius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_point_in_circle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_segment_intersects_circle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_circle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1356928167)!
        }
        }
    }()

    public func segmentIntersectsCircle(
        segmentFrom: Godot.Vector2,
        segmentTo: Godot.Vector2,
        circlePosition: Godot.Vector2,
        circleRadius: Double
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        segmentFrom.withGodotUnsafeRawPointer { __ptr_segmentFrom in
        segmentTo.withGodotUnsafeRawPointer { __ptr_segmentTo in
        circlePosition.withGodotUnsafeRawPointer { __ptr_circlePosition in
        circleRadius.withGodotUnsafeRawPointer { __ptr_circleRadius in
        withUnsafeArgumentPackPointer(__ptr_segmentFrom, __ptr_segmentTo, __ptr_circlePosition, __ptr_circleRadius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_circle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_segment_intersects_segment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "segment_intersects_segment").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2058025344)!
        }
        }
    }()

    public func segmentIntersectsSegment(
        fromA: Godot.Vector2,
        toA: Godot.Vector2,
        fromB: Godot.Vector2,
        toB: Godot.Vector2
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        fromA.withGodotUnsafeRawPointer { __ptr_fromA in
        toA.withGodotUnsafeRawPointer { __ptr_toA in
        fromB.withGodotUnsafeRawPointer { __ptr_fromB in
        toB.withGodotUnsafeRawPointer { __ptr_toB in
        withUnsafeArgumentPackPointer(__ptr_fromA, __ptr_toA, __ptr_fromB, __ptr_toB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_segment_intersects_segment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_line_intersects_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "line_intersects_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2058025344)!
        }
        }
    }()

    public func lineIntersectsLine(
        fromA a: Godot.Vector2,
        dirA: Godot.Vector2,
        fromB b: Godot.Vector2,
        dirB: Godot.Vector2
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        a.withGodotUnsafeRawPointer { __ptr_a in
        dirA.withGodotUnsafeRawPointer { __ptr_dirA in
        b.withGodotUnsafeRawPointer { __ptr_b in
        dirB.withGodotUnsafeRawPointer { __ptr_dirB in
        withUnsafeArgumentPackPointer(__ptr_a, __ptr_dirA, __ptr_b, __ptr_dirB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_line_intersects_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_get_closest_points_between_segments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_points_between_segments").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3344690961)!
        }
        }
    }()

    public func closestPointsBetweenSegments(
        p1: Godot.Vector2,
        q1: Godot.Vector2,
        p2: Godot.Vector2,
        q2: Godot.Vector2
    ) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        p1.withGodotUnsafeRawPointer { __ptr_p1 in
        q1.withGodotUnsafeRawPointer { __ptr_q1 in
        p2.withGodotUnsafeRawPointer { __ptr_p2 in
        q2.withGodotUnsafeRawPointer { __ptr_q2 in
        withUnsafeArgumentPackPointer(__ptr_p1, __ptr_q1, __ptr_p2, __ptr_q2) { __accessPtr in
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
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4172901909)!
        }
        }
    }()

    public func closestPointToSegment(
        point: Godot.Vector2,
        s1: Godot.Vector2,
        s2: Godot.Vector2
    ) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
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
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4172901909)!
        }
        }
    }()

    public func closestPointToSegmentUncapped(
        point: Godot.Vector2,
        s1: Godot.Vector2,
        s2: Godot.Vector2
    ) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
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

    internal static var __method_binding_point_is_inside_triangle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "point_is_inside_triangle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025948137)!
        }
        }
    }()

    public func pointIsInsideTriangle(
        point: Godot.Vector2,
        a: Godot.Vector2,
        b: Godot.Vector2,
        c: Godot.Vector2
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        a.withGodotUnsafeRawPointer { __ptr_a in
        b.withGodotUnsafeRawPointer { __ptr_b in
        c.withGodotUnsafeRawPointer { __ptr_c in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_a, __ptr_b, __ptr_c) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_point_is_inside_triangle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_is_polygon_clockwise: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_polygon_clockwise").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1361156557)!
        }
        }
    }()

    public func isPolygonClockwise(
        polygon: Godot.PackedVector2Array
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_polygon_clockwise,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_is_point_in_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_point_in_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 738277916)!
        }
        }
    }()

    public func isPointInPolygon(
        point: Godot.Vector2,
        polygon: Godot.PackedVector2Array
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_point_in_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_triangulate_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "triangulate_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1389921771)!
        }
        }
    }()

    public func triangulatePolygon(
        _ polygon: Godot.PackedVector2Array
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_triangulate_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_triangulate_delaunay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "triangulate_delaunay").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1389921771)!
        }
        }
    }()

    public func triangulateDelaunay(
        points: Godot.PackedVector2Array
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        points.withGodotUnsafeRawPointer { __ptr_points in
        withUnsafeArgumentPackPointer(__ptr_points) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_triangulate_delaunay,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_convex_hull: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convex_hull").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2004331998)!
        }
        }
    }()

    public func convexHull(
        points: Godot.PackedVector2Array
    ) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        points.withGodotUnsafeRawPointer { __ptr_points in
        withUnsafeArgumentPackPointer(__ptr_points) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_convex_hull,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_decompose_polygon_in_convex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decompose_polygon_in_convex").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3982393695)!
        }
        }
    }()

    public func decomposePolygonInConvex(
        polygon: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_decompose_polygon_in_convex,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_merge_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "merge_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func mergePolygons(
        polygonA: Godot.PackedVector2Array,
        polygonB: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygonA.withGodotUnsafeRawPointer { __ptr_polygonA in
        polygonB.withGodotUnsafeRawPointer { __ptr_polygonB in
        withUnsafeArgumentPackPointer(__ptr_polygonA, __ptr_polygonB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_merge_polygons,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_clip_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clip_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func clipPolygons(
        polygonA: Godot.PackedVector2Array,
        polygonB: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygonA.withGodotUnsafeRawPointer { __ptr_polygonA in
        polygonB.withGodotUnsafeRawPointer { __ptr_polygonB in
        withUnsafeArgumentPackPointer(__ptr_polygonA, __ptr_polygonB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clip_polygons,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_intersect_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "intersect_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func intersectPolygons(
        polygonA: Godot.PackedVector2Array,
        polygonB: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygonA.withGodotUnsafeRawPointer { __ptr_polygonA in
        polygonB.withGodotUnsafeRawPointer { __ptr_polygonB in
        withUnsafeArgumentPackPointer(__ptr_polygonA, __ptr_polygonB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_intersect_polygons,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_exclude_polygons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "exclude_polygons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func excludePolygons(
        polygonA: Godot.PackedVector2Array,
        polygonB: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygonA.withGodotUnsafeRawPointer { __ptr_polygonA in
        polygonB.withGodotUnsafeRawPointer { __ptr_polygonB in
        withUnsafeArgumentPackPointer(__ptr_polygonA, __ptr_polygonB) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_exclude_polygons,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_clip_polyline_with_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clip_polyline_with_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func clipPolylineWithPolygon(
        polyline: Godot.PackedVector2Array,
        polygon: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polyline.withGodotUnsafeRawPointer { __ptr_polyline in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polyline, __ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clip_polyline_with_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_intersect_polyline_with_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "intersect_polyline_with_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3637387053)!
        }
        }
    }()

    public func intersectPolylineWithPolygon(
        polyline: Godot.PackedVector2Array,
        polygon: Godot.PackedVector2Array
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polyline.withGodotUnsafeRawPointer { __ptr_polyline in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_polyline, __ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_intersect_polyline_with_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_offset_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "offset_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1275354010)!
        }
        }
    }()

    public func offsetPolygon(
        _ polygon: Godot.PackedVector2Array,
        delta: Double,
        joinType: Godot.Geometry2D.PolyJoinType = Geometry2D.PolyJoinType(rawValue: 0)!
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        delta.withGodotUnsafeRawPointer { __ptr_delta in
        joinType.withGodotUnsafeRawPointer { __ptr_joinType in
        withUnsafeArgumentPackPointer(__ptr_polygon, __ptr_delta, __ptr_joinType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_offset_polygon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_offset_polyline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "offset_polyline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328231778)!
        }
        }
    }()

    public func offsetPolyline(
        _ polyline: Godot.PackedVector2Array,
        delta: Double,
        joinType: Godot.Geometry2D.PolyJoinType = Geometry2D.PolyJoinType(rawValue: 0)!,
        endType: Godot.Geometry2D.PolyEndType = Geometry2D.PolyEndType(rawValue: 3)!
    ) -> Godot.GodotArray<Godot.PackedVector2Array> {
        Godot.GodotArray<Godot.PackedVector2Array>.fromMutatingGodotUnsafePointer { __temporary in
        polyline.withGodotUnsafeRawPointer { __ptr_polyline in
        delta.withGodotUnsafeRawPointer { __ptr_delta in
        joinType.withGodotUnsafeRawPointer { __ptr_joinType in
        endType.withGodotUnsafeRawPointer { __ptr_endType in
        withUnsafeArgumentPackPointer(__ptr_polyline, __ptr_delta, __ptr_joinType, __ptr_endType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_offset_polyline,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_make_atlas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_atlas").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1337682371)!
        }
        }
    }()

    public func makeAtlas(
        sizes: Godot.PackedVector2Array
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        sizes.withGodotUnsafeRawPointer { __ptr_sizes in
        withUnsafeArgumentPackPointer(__ptr_sizes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_make_atlas,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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