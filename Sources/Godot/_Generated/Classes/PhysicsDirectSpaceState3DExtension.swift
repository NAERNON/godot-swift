//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectSpaceState3DExtension: PhysicsDirectSpaceState3D {
    open func _intersectRay(from: Godot.Vector3, to: Godot.Vector3, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, hitFromInside: Bool, hitBackFaces: Bool, pickRay: Bool, result: UnsafeMutablePointer<PhysicsServer3DExtensionRayResult>) -> Bool {
        Bool()
    }

    open func _intersectPoint(position: Godot.Vector3, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, results: UnsafeMutablePointer<PhysicsServer3DExtensionShapeResult>, maxResults: Int32) -> Int32 {
        Int32()
    }

    open func _intersectShape(shapeRid: Godot.RID, transform: Godot.Transform3D, motion: Godot.Vector3, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, resultCount: UnsafeMutablePointer<PhysicsServer3DExtensionShapeResult>, maxResults: Int32) -> Int32 {
        Int32()
    }

    open func _castMotion(shapeRid: Godot.RID, transform: Godot.Transform3D, motion: Godot.Vector3, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, closestSafe: UnsafeMutablePointer<Double>, closestUnsafe: UnsafeMutablePointer<Double>, info: UnsafeMutablePointer<PhysicsServer3DExtensionShapeRestInfo>) -> Bool {
        Bool()
    }

    open func _collideShape(shapeRid: Godot.RID, transform: Godot.Transform3D, motion: Godot.Vector3, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, results: UnsafeMutableRawPointer, maxResults: Int32, resultCount: UnsafeMutablePointer<Int32>) -> Bool {
        Bool()
    }

    open func _restInfo(shapeRid: Godot.RID, transform: Godot.Transform3D, motion: Godot.Vector3, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, restInfo: UnsafeMutablePointer<PhysicsServer3DExtensionShapeRestInfo>) -> Bool {
        Bool()
    }

    open func _getClosestPointToObjectVolume(object: Godot.RID, point: Godot.Vector3) -> Godot.Vector3 {
        Godot.Vector3()
    }

    private static var __method_binding_is_body_excluded_from_query: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_body_excluded_from_query").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func isBodyExcludedFromQuery(body: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafeArgumentPackPointer(__ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_body_excluded_from_query,
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
        let _intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._intersectRay(
            from: Godot.Vector3.fromGodotUnsafePointer(args[0]!),
            to: Godot.Vector3.fromGodotUnsafePointer(args[1]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[2]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[3]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[4]!),
            hitFromInside: Bool.fromGodotUnsafePointer(args[5]!),
            hitBackFaces: Bool.fromGodotUnsafePointer(args[6]!),
            pickRay: Bool.fromGodotUnsafePointer(args[7]!),
            result: UnsafeMutablePointer<PhysicsServer3DExtensionRayResult>.fromGodotUnsafePointer(args[8]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _intersect_point_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._intersectPoint(
            position: Godot.Vector3.fromGodotUnsafePointer(args[0]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[1]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[2]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[3]!),
            results: UnsafeMutablePointer<PhysicsServer3DExtensionShapeResult>.fromGodotUnsafePointer(args[4]!),
            maxResults: Int32.fromGodotUnsafePointer(args[5]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _intersect_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._intersectShape(
            shapeRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!),
            motion: Godot.Vector3.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[4]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[5]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[6]!),
            resultCount: UnsafeMutablePointer<PhysicsServer3DExtensionShapeResult>.fromGodotUnsafePointer(args[7]!),
            maxResults: Int32.fromGodotUnsafePointer(args[8]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _cast_motion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._castMotion(
            shapeRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!),
            motion: Godot.Vector3.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[4]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[5]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[6]!),
            closestSafe: UnsafeMutablePointer<Double>.fromGodotUnsafePointer(args[7]!),
            closestUnsafe: UnsafeMutablePointer<Double>.fromGodotUnsafePointer(args[8]!),
            info: UnsafeMutablePointer<PhysicsServer3DExtensionShapeRestInfo>.fromGodotUnsafePointer(args[9]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _collide_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._collideShape(
            shapeRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!),
            motion: Godot.Vector3.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[4]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[5]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[6]!),
            results: UnsafeMutableRawPointer.fromGodotUnsafePointer(args[7]!),
            maxResults: Int32.fromGodotUnsafePointer(args[8]!),
            resultCount: UnsafeMutablePointer<Int32>.fromGodotUnsafePointer(args[9]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _rest_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._restInfo(
            shapeRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!),
            motion: Godot.Vector3.fromGodotUnsafePointer(args[2]!),
            margin: Double.fromGodotUnsafePointer(args[3]!),
            collisionMask: UInt32.fromGodotUnsafePointer(args[4]!),
            collideWithBodies: Bool.fromGodotUnsafePointer(args[5]!),
            collideWithAreas: Bool.fromGodotUnsafePointer(args[6]!),
            restInfo: UnsafeMutablePointer<PhysicsServer3DExtensionShapeRestInfo>.fromGodotUnsafePointer(args[7]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_closest_point_to_object_volume_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectSpaceState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getClosestPointToObjectVolume(
            object: Godot.RID.fromGodotUnsafePointer(args[0]!),
            point: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_intersectRay" : ("_intersect_ray", _intersect_ray_call),
            "_intersectPoint" : ("_intersect_point", _intersect_point_call),
            "_intersectShape" : ("_intersect_shape", _intersect_shape_call),
            "_castMotion" : ("_cast_motion", _cast_motion_call),
            "_collideShape" : ("_collide_shape", _collide_shape_call),
            "_restInfo" : ("_rest_info", _rest_info_call),
            "_getClosestPointToObjectVolume" : ("_get_closest_point_to_object_volume", _get_closest_point_to_object_volume_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }