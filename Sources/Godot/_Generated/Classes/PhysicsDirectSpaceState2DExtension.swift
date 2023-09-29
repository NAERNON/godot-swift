//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectSpaceState2DExtension: PhysicsDirectSpaceState2D {
    open func _intersectRay(from: Godot.Vector2, to: Godot.Vector2, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, hitFromInside: Bool, result: UnsafeMutablePointer<PhysicsServer2DExtensionRayResult>) -> Bool {
        Bool()
    }

    open func _intersectPoint(position: Godot.Vector2, canvasInstanceId: UInt64, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, results: UnsafeMutablePointer<PhysicsServer2DExtensionShapeResult>, maxResults: Int32) -> Int32 {
        Int32()
    }

    open func _intersectShape(shapeRid: Godot.RID, transform: Godot.Transform2D, motion: Godot.Vector2, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, result: UnsafeMutablePointer<PhysicsServer2DExtensionShapeResult>, maxResults: Int32) -> Int32 {
        Int32()
    }

    open func _castMotion(shapeRid: Godot.RID, transform: Godot.Transform2D, motion: Godot.Vector2, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, closestSafe: UnsafeMutablePointer<Double>, closestUnsafe: UnsafeMutablePointer<Double>) -> Bool {
        Bool()
    }

    open func _collideShape(shapeRid: Godot.RID, transform: Godot.Transform2D, motion: Godot.Vector2, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, results: UnsafeMutableRawPointer, maxResults: Int32, resultCount: UnsafeMutablePointer<Int32>) -> Bool {
        Bool()
    }

    open func _restInfo(shapeRid: Godot.RID, transform: Godot.Transform2D, motion: Godot.Vector2, margin: Double, collisionMask: UInt32, collideWithBodies: Bool, collideWithAreas: Bool, restInfo: UnsafeMutablePointer<PhysicsServer2DExtensionShapeRestInfo>) -> Bool {
        Bool()
    }

    private static var __method_binding_is_body_excluded_from_query: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_body_excluded_from_query").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func isBodyExcludedFromQuery(body: Godot.RID) -> Bool {
        var __temporary = Bool()
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafeArgumentPackPointer(__ptr_body) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_body_excluded_from_query,
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

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._intersectRay(
            from: args[0]!.load(as: Godot.Vector2.self),
            to: args[1]!.load(as: Godot.Vector2.self),
            collisionMask: args[2]!.load(as: UInt32.self),
            collideWithBodies: args[3]!.load(as: Bool.self),
            collideWithAreas: args[4]!.load(as: Bool.self),
            hitFromInside: args[5]!.load(as: Bool.self),
            result: args[6]!.load(as: UnsafeMutablePointer<PhysicsServer2DExtensionRayResult> .self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _intersect_point_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._intersectPoint(
            position: args[0]!.load(as: Godot.Vector2.self),
            canvasInstanceId: args[1]!.load(as: UInt64.self),
            collisionMask: args[2]!.load(as: UInt32.self),
            collideWithBodies: args[3]!.load(as: Bool.self),
            collideWithAreas: args[4]!.load(as: Bool.self),
            results: args[5]!.load(as: UnsafeMutablePointer<PhysicsServer2DExtensionShapeResult> .self),
            maxResults: args[6]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _intersect_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._intersectShape(
            shapeRid: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform2D.self),
            motion: args[2]!.load(as: Godot.Vector2.self),
            margin: args[3]!.load(as: Double.self),
            collisionMask: args[4]!.load(as: UInt32.self),
            collideWithBodies: args[5]!.load(as: Bool.self),
            collideWithAreas: args[6]!.load(as: Bool.self),
            result: args[7]!.load(as: UnsafeMutablePointer<PhysicsServer2DExtensionShapeResult> .self),
            maxResults: args[8]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _cast_motion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._castMotion(
            shapeRid: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform2D.self),
            motion: args[2]!.load(as: Godot.Vector2.self),
            margin: args[3]!.load(as: Double.self),
            collisionMask: args[4]!.load(as: UInt32.self),
            collideWithBodies: args[5]!.load(as: Bool.self),
            collideWithAreas: args[6]!.load(as: Bool.self),
            closestSafe: args[7]!.load(as: UnsafeMutablePointer<Double> .self),
            closestUnsafe: args[8]!.load(as: UnsafeMutablePointer<Double> .self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _collide_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._collideShape(
            shapeRid: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform2D.self),
            motion: args[2]!.load(as: Godot.Vector2.self),
            margin: args[3]!.load(as: Double.self),
            collisionMask: args[4]!.load(as: UInt32.self),
            collideWithBodies: args[5]!.load(as: Bool.self),
            collideWithAreas: args[6]!.load(as: Bool.self),
            results: args[7]!.load(as: UnsafeMutableRawPointer.self),
            maxResults: args[8]!.load(as: Int32.self),
            resultCount: args[9]!.load(as: UnsafeMutablePointer<Int32> .self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _rest_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectSpaceState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._restInfo(
            shapeRid: Godot.RID(godotExtensionPointer: args[0]!),
            transform: args[1]!.load(as: Godot.Transform2D.self),
            motion: args[2]!.load(as: Godot.Vector2.self),
            margin: args[3]!.load(as: Double.self),
            collisionMask: args[4]!.load(as: UInt32.self),
            collideWithBodies: args[5]!.load(as: Bool.self),
            collideWithAreas: args[6]!.load(as: Bool.self),
            restInfo: args[7]!.load(as: UnsafeMutablePointer<PhysicsServer2DExtensionShapeRestInfo> .self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        _virtualFunctions = [
            "_intersectRay" : ("_intersect_ray", _intersect_ray_call),
            "_intersectPoint" : ("_intersect_point", _intersect_point_call),
            "_intersectShape" : ("_intersect_shape", _intersect_shape_call),
            "_castMotion" : ("_cast_motion", _cast_motion_call),
            "_collideShape" : ("_collide_shape", _collide_shape_call),
            "_restInfo" : ("_rest_info", _rest_info_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }