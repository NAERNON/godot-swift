//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class PhysicsBody3D: CollisionObject3D {
    internal static var __method_binding_move_and_collide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "move_and_collide").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3208792678)!
        }
        }
    }()

    public func moveAndCollide(
        motion: Godot.Vector3,
        testOnly: Bool = false,
        safeMargin: Double = 0.001,
        recoveryAsCollision: Bool = false,
        maxCollisions: Int32 = 1
    ) -> Godot.KinematicCollision3D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: motion) { __ptr_motion in
                withTransferrableUnsafeRawPointer(to: testOnly) { __ptr_testOnly in
                    withTransferrableUnsafeRawPointer(to: safeMargin) { __ptr_safeMargin in
                        withTransferrableUnsafeRawPointer(to: recoveryAsCollision) { __ptr_recoveryAsCollision in
                            withTransferrableUnsafeRawPointer(to: maxCollisions) { __ptr_maxCollisions in
                                withUnsafeArgumentPackPointer(__ptr_motion, __ptr_testOnly, __ptr_safeMargin, __ptr_recoveryAsCollision, __ptr_maxCollisions) { __accessPtr in
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
    }

    internal static var __method_binding_test_move: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "test_move").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2481691619)!
        }
        }
    }()

    public func testMove(
        from: Godot.Transform3D,
        motion: Godot.Vector3,
        collision: Godot.KinematicCollision3D? = nil,
        safeMargin: Double = 0.001,
        recoveryAsCollision: Bool = false,
        maxCollisions: Int32 = 1
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: motion) { __ptr_motion in
                    withTransferrableUnsafeRawPointer(to: collision) { __ptr_collision in
                        withUnsafePointer(to: __ptr_collision) { _ptr___ptr_collision in
                            withTransferrableUnsafeRawPointer(to: safeMargin) { __ptr_safeMargin in
                                withTransferrableUnsafeRawPointer(to: recoveryAsCollision) { __ptr_recoveryAsCollision in
                                    withTransferrableUnsafeRawPointer(to: maxCollisions) { __ptr_maxCollisions in
                                        withUnsafeArgumentPackPointer(__ptr_from, __ptr_motion, _ptr___ptr_collision, __ptr_safeMargin, __ptr_recoveryAsCollision, __ptr_maxCollisions) { __accessPtr in
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
    }

    internal static var __method_binding_set_axis_lock: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_axis_lock").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1787895195)!
        }
        }
    }()

    public func setAxisLock(
        axis: Godot.PhysicsServer3D.BodyAxis,
        lock: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: axis) { __ptr_axis in
            withTransferrableUnsafeRawPointer(to: lock) { __ptr_lock in
                withUnsafeArgumentPackPointer(__ptr_axis, __ptr_lock) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_axis_lock,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_axis_lock: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_axis_lock").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2264617709)!
        }
        }
    }()

    private func __getAxisLock(
        axis: Godot.PhysicsServer3D.BodyAxis
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: axis) { __ptr_axis in
                withUnsafeArgumentPackPointer(__ptr_axis) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_axis_lock,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
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

    public func collisionExceptions() -> Godot.GodotArray<Godot.PhysicsBody3D?> {
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

    public var axisLockLinearX: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 1)!
            )
        }
    }

    public var axisLockLinearY: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 2)!
            )
        }
    }

    public var axisLockLinearZ: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 4)!
            )
        }
    }

    public var axisLockAngularX: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 8)!
            )
        }
    }

    public var axisLockAngularY: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 16)!
            )
        }
    }

    public var axisLockAngularZ: Bool {
        get {
            __getAxisLock(
                axis: .init(rawValue: 32)!
            )
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