//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectSpaceState3D: Object {
    private static var __method_binding_intersect_point: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "intersect_point").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 975173756)!
        }
        }
    }()
    public func intersectPoint(parameters: Godot.PhysicsPointQueryParameters3D?, maxResults: Int32 = 32) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        maxResults.withGodotUnsafeRawPointer { __ptr_maxResults in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters, __ptr_maxResults) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_intersect_point,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_intersect_ray: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "intersect_ray").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3957970750)!
        }
        }
    }()
    public func intersectRay(parameters: Godot.PhysicsRayQueryParameters3D?) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_intersect_ray,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_intersect_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "intersect_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3762137681)!
        }
        }
    }()
    public func intersectShape(parameters: Godot.PhysicsShapeQueryParameters3D?, maxResults: Int32 = 32) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        maxResults.withGodotUnsafeRawPointer { __ptr_maxResults in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters, __ptr_maxResults) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_intersect_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_cast_motion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cast_motion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1778757334)!
        }
        }
    }()
    public func castMotion(parameters: Godot.PhysicsShapeQueryParameters3D?) -> Godot.PackedFloat32Array {
        Godot.PackedFloat32Array.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cast_motion,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_collide_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "collide_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3762137681)!
        }
        }
    }()
    public func collideShape(parameters: Godot.PhysicsShapeQueryParameters3D?, maxResults: Int32 = 32) -> Godot.GodotArray<Godot.Vector3> {
        Godot.GodotArray<Godot.Vector3>.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        maxResults.withGodotUnsafeRawPointer { __ptr_maxResults in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters, __ptr_maxResults) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_collide_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_rest_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rest_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1376751592)!
        }
        }
    }()
    public func restInfo(parameters: Godot.PhysicsShapeQueryParameters3D?) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        parameters.withGodotUnsafeRawPointer { __ptr_parameters in
        withUnsafePointer(to: __ptr_parameters) { _ptr___ptr_parameters in
        withUnsafeArgumentPackPointer(_ptr___ptr_parameters) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rest_info,
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