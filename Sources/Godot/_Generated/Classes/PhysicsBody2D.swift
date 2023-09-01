//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsBody2D: CollisionObject2D {
    private static var __method_binding_move_and_collide: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "move_and_collide").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1529961754)!
        }
        }
    }()
    public func moveAndCollide(motion: Godot.Vector2, testOnly: Bool = false, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> Godot.KinematicCollision2D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: motion) { (__ptr_motion) in
            withUnsafePointer(to: testOnly) { (__ptr_testOnly) in
                withUnsafePointer(to: safeMargin) { (__ptr_safeMargin) in
                    withUnsafePointer(to: recoveryAsCollision) { (__ptr_recoveryAsCollision) in
                        withUnsafeArgumentPackPointer(__ptr_motion, __ptr_testOnly, __ptr_safeMargin, __ptr_recoveryAsCollision) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_move_and_collide,
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
        return Godot.KinematicCollision2D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_test_move: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "test_move").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1369208982)!
        }
        }
    }()
    public func testMove(from: Godot.Transform2D, motion: Godot.Vector2, collision: Godot.KinematicCollision2D? = nil, safeMargin: Double = 0.08, recoveryAsCollision: Bool = false) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: motion) { (__ptr_motion) in
                collision.withUnsafeRawPointer { (__ptr_collision) in
                    withUnsafePointer(to: __ptr_collision) { (_ptr___ptr_collision) in
                        withUnsafePointer(to: safeMargin) { (__ptr_safeMargin) in
                            withUnsafePointer(to: recoveryAsCollision) { (__ptr_recoveryAsCollision) in
                                withUnsafeArgumentPackPointer(__ptr_from, __ptr_motion, _ptr___ptr_collision, __ptr_safeMargin, __ptr_recoveryAsCollision) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_test_move,
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
        }
        return __temporary
    }

    private static var __method_binding_get_collision_exceptions: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_collision_exceptions").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func collisionExceptions() -> Godot.GodotTypedArray<Godot.PhysicsBody2D?> {
        let __temporary = Godot.GodotTypedArray<Godot.PhysicsBody2D?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_collision_exceptions,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_collision_exception_with: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_collision_exception_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func addCollisionExceptionWith(body: Godot.Node?) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: __ptr_body) { (_ptr___ptr_body) in
                withUnsafeArgumentPackPointer(_ptr___ptr_body) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_collision_exception_with,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_collision_exception_with: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_collision_exception_with").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func removeCollisionExceptionWith(body: Godot.Node?) {
        body.withUnsafeRawPointer { (__ptr_body) in
            withUnsafePointer(to: __ptr_body) { (_ptr___ptr_body) in
                withUnsafeArgumentPackPointer(_ptr___ptr_body) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_collision_exception_with,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
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