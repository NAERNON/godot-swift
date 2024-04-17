//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class PhysicsBody2D: CollisionObject2D {
    internal static var __method_binding_move_and_collide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_and_collide").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3681923724)!
        }
        }
    }()

    public func moveAndCollide(
        motion: Godot.Vector2,
        testOnly: Bool = false,
        safeMargin: Double = 0.08,
        recoveryAsCollision: Bool = false
    ) -> Godot.KinematicCollision2D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: motion) { __ptr_motion in
                withTransferrableUnsafeRawPointer(to: testOnly) { __ptr_testOnly in
                    withTransferrableUnsafeRawPointer(to: safeMargin) { __ptr_safeMargin in
                        withTransferrableUnsafeRawPointer(to: recoveryAsCollision) { __ptr_recoveryAsCollision in
                            withUnsafeArgumentPackPointer(__ptr_motion, __ptr_testOnly, __ptr_safeMargin, __ptr_recoveryAsCollision) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_move_and_collide,
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

    internal static var __method_binding_test_move: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "test_move").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3324464701)!
        }
        }
    }()

    public func testMove(
        from: Godot.Transform2D,
        motion: Godot.Vector2,
        collision: Godot.KinematicCollision2D? = nil,
        safeMargin: Double = 0.08,
        recoveryAsCollision: Bool = false
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: motion) { __ptr_motion in
                    withTransferrableUnsafeRawPointer(to: collision) { __ptr_collision in
                        withUnsafePointer(to: __ptr_collision) { _ptr___ptr_collision in
                            withTransferrableUnsafeRawPointer(to: safeMargin) { __ptr_safeMargin in
                                withTransferrableUnsafeRawPointer(to: recoveryAsCollision) { __ptr_recoveryAsCollision in
                                    withUnsafeArgumentPackPointer(__ptr_from, __ptr_motion, _ptr___ptr_collision, __ptr_safeMargin, __ptr_recoveryAsCollision) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_test_move,
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
    }

    internal static var __method_binding_get_collision_exceptions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_exceptions").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    public func collisionExceptions() -> Godot.GodotArray<Godot.PhysicsBody2D?> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_exceptions,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_add_collision_exception_with: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_exception_with").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    public func addCollisionExceptionWith(
        body: Godot.Node?
    ) {
        withTransferrableUnsafeRawPointer(to: body) { __ptr_body in
            withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
                withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_remove_collision_exception_with: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_collision_exception_with").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    public func removeCollisionExceptionWith(
        body: Godot.Node?
    ) {
        withTransferrableUnsafeRawPointer(to: body) { __ptr_body in
            withUnsafePointer(to: __ptr_body) { _ptr___ptr_body in
                withUnsafeArgumentPackPointer(_ptr___ptr_body) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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