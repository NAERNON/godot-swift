//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsBody2D: CollisionObject2D {
    private static var __method_binding_move_and_collide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_and_collide").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1529961754)!
        }
        }
    }()
    public func moveAndCollide(motion: Godot.Vector2, testOnly: Bool = false, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> Godot.KinematicCollision2D? {
        Godot.KinematicCollision2D?.fromMutatingGodotUnsafePointer { __temporary in
        motion.withGodotUnsafeRawPointer { __ptr_motion in
        testOnly.withGodotUnsafeRawPointer { __ptr_testOnly in
        safeMargin.withGodotUnsafeRawPointer { __ptr_safeMargin in
        recoveryAsCollision.withGodotUnsafeRawPointer { __ptr_recoveryAsCollision in
        withUnsafeArgumentPackPointer(__ptr_motion, __ptr_testOnly, __ptr_safeMargin, __ptr_recoveryAsCollision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_move_and_collide,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_test_move: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "test_move").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1369208982)!
        }
        }
    }()
    public func testMove(from: Godot.Transform2D, motion: Godot.Vector2, collision: Godot.KinematicCollision2D? = nil, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        motion.withGodotUnsafeRawPointer { __ptr_motion in
        collision.withGodotUnsafeRawPointer { __ptr_collision in
        withUnsafePointer(to: __ptr_collision) { _ptr___ptr_collision in
        safeMargin.withGodotUnsafeRawPointer { __ptr_safeMargin in
        recoveryAsCollision.withGodotUnsafeRawPointer { __ptr_recoveryAsCollision in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_motion, _ptr___ptr_collision, __ptr_safeMargin, __ptr_recoveryAsCollision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_test_move,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_get_collision_exceptions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_exceptions").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func collisionExceptions() -> Godot.GodotArray<Godot.PhysicsBody2D?> {
        Godot.GodotArray<Godot.PhysicsBody2D?> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_collision_exceptions,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_collision_exception_with: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_exception_with").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func addCollisionExceptionWith(body: Godot.Node?) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
        withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_collision_exception_with,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_collision_exception_with: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_collision_exception_with").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func removeCollisionExceptionWith(body: Godot.Node?) {
        body.withGodotUnsafeRawPointer { __ptr_body in
        withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
        withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_collision_exception_with,
            __ptr_self,
            __accessPtr,
            nil
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