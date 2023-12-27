//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PolygonPathFinder: Resource {
    private static var __method_binding_setup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "setup").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3251786936)!
        }
        }
    }()
    public func setup(points: Godot.PackedVector2Array, connections: Godot.PackedInt32Array) {
        points.withGodotUnsafeRawPointer { __ptr_points in
        connections.withGodotUnsafeRawPointer { __ptr_connections in
        withUnsafeArgumentPackPointer(__ptr_points, __ptr_connections) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_setup,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_find_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1562168077)!
        }
        }
    }()
    public func findPath(from: Godot.Vector2, to: Godot.Vector2) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_intersections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_intersections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3932192302)!
        }
        }
    }()
    public func intersections(from: Godot.Vector2, to: Godot.Vector2) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_intersections,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_closest_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_closest_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2656412154)!
        }
        }
    }()
    public func closestPoint(_ point: Godot.Vector2) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_closest_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_point_inside: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_point_inside").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 556197845)!
        }
        }
    }()
    public func isPointInside(point: Godot.Vector2) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_point_inside,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_point_penalty: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_penalty").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setPointPenalty(idx: Int32, penalty: Double) {
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        penalty.withGodotUnsafeRawPointer { __ptr_penalty in
        withUnsafeArgumentPackPointer(__ptr_idx, __ptr_penalty) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_point_penalty,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_point_penalty: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_penalty").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func pointPenalty(idx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_point_penalty,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_bounds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bounds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func bounds() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_bounds,
            __ptr_self,
            nil,
            __temporary
        )}}
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