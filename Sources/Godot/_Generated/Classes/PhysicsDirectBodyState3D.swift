//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class PhysicsDirectBodyState3D: Object {
    internal static var __method_binding_get_total_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_total_gravity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getTotalGravity() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_total_gravity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_total_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_total_linear_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getTotalLinearDamp() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_total_linear_damp,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_total_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_total_angular_damp").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getTotalAngularDamp() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_total_angular_damp,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_center_of_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getCenterOfMass() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_center_of_mass,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_center_of_mass_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_center_of_mass_local").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getCenterOfMassLocal() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_center_of_mass_local,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_principal_inertia_axes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_principal_inertia_axes").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
            }
        }
    }()
    
    private func __getPrincipalInertiaAxes() -> Godot.Basis {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_principal_inertia_axes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_inverse_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_inverse_mass").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getInverseMass() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_inverse_mass,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_inverse_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_inverse_inertia").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getInverseInertia() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_inverse_inertia,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_inverse_inertia_tensor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_inverse_inertia_tensor").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
            }
        }
    }()
    
    private func __getInverseInertiaTensor() -> Godot.Basis {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_inverse_inertia_tensor,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    private func __setLinearVelocity(
        _ velocity: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: velocity) { __ptr_velocity in
            withUnsafeArgumentPackPointer(__ptr_velocity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_linear_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_linear_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getLinearVelocity() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_linear_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    private func __setAngularVelocity(
        _ velocity: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: velocity) { __ptr_velocity in
            withUnsafeArgumentPackPointer(__ptr_velocity) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_angular_velocity,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_angular_velocity").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    private func __getAngularVelocity() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_angular_velocity,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_transform").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2952846383)!
            }
        }
    }()
    
    private func __setTransform(
        _ transform: Godot.Transform3D
    ) {
        withTransferrableUnsafeRawPointer(to: transform) { __ptr_transform in
            withUnsafeArgumentPackPointer(__ptr_transform) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_transform,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_transform").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
            }
        }
    }()
    
    private func __getTransform() -> Godot.Transform3D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_transform,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_velocity_at_local_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_velocity_at_local_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 192990374)!
            }
        }
    }()
    
    public func velocityAtLocalPosition(
        _ localPosition: Godot.Vector3
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: localPosition) { __ptr_localPosition in
                withUnsafeArgumentPackPointer(__ptr_localPosition) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_velocity_at_local_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_central_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
            }
        }
    }()
    
    public func applyCentralImpulse(
        _ impulse: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: impulse) { __ptr_impulse in
            withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_central_impulse,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
            }
        }
    }()
    
    public func applyImpulse(
        _ impulse: Godot.Vector3,
        position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: impulse) { __ptr_impulse in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_impulse, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_apply_impulse,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_torque_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    public func applyTorqueImpulse(
        _ impulse: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: impulse) { __ptr_impulse in
            withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_torque_impulse,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_central_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
            }
        }
    }()
    
    public func applyCentralForce(
        _ force: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_central_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_apply_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
            }
        }
    }()
    
    public func applyForce(
        _ force: Godot.Vector3,
        position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_apply_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_apply_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "apply_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    public func applyTorque(
        _ torque: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_apply_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_central_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
            }
        }
    }()
    
    public func addConstantCentralForce(
        _ force: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_add_constant_central_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
            }
        }
    }()
    
    public func addConstantForce(
        _ force: Godot.Vector3,
        position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_constant_force,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_add_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    public func addConstantTorque(
        _ torque: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_add_constant_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_set_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    public func setConstantForce(
        _ force: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_force,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_force").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    public func constantForce() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_force,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
            }
        }
    }()
    
    public func setConstantTorque(
        _ torque: Godot.Vector3
    ) {
        withTransferrableUnsafeRawPointer(to: torque) { __ptr_torque in
            withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_constant_torque,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_constant_torque").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
            }
        }
    }()
    
    public func constantTorque() -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_constant_torque,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_sleep_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_sleep_state").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setSleepState(
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_sleep_state,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_sleeping").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isSleeping() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_sleeping,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_contact_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_count").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func contactCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_contact_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_contact_local_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_local_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactLocalPosition(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_local_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_local_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_local_normal").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactLocalNormal(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_local_normal,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_impulse").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactImpulse(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_impulse,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_local_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_local_shape").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func contactLocalShape(
        contactIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_local_shape,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_local_velocity_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_local_velocity_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactLocalVelocityAtPosition(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_local_velocity_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
            }
        }
    }()
    
    public func contactCollider(
        contactIdx: Int32
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactColliderPosition(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func contactColliderID(
        contactIdx: Int32
    ) -> UInt64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider_id,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider_object").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3332903315)!
            }
        }
    }()
    
    public func contactColliderObject(
        contactIdx: Int32
    ) -> Godot.Object? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider_object,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider_shape").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func contactColliderShape(
        contactIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider_shape,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_contact_collider_velocity_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_contact_collider_velocity_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
            }
        }
    }()
    
    public func contactColliderVelocityAtPosition(
        contactIdx: Int32
    ) -> Godot.Vector3 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: contactIdx) { __ptr_contactIdx in
                withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_contact_collider_velocity_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_step").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getStep() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_step,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_integrate_forces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "integrate_forces").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func integrateForces() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_integrate_forces,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_get_space_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_space_state").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2069328350)!
            }
        }
    }()
    
    public func spaceState() -> Godot.PhysicsDirectSpaceState3D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_space_state,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var step: Double {
        get {
            __getStep()
        }
    }
    
    public var inverseMass: Double {
        get {
            __getInverseMass()
        }
    }
    
    public var totalAngularDamp: Double {
        get {
            __getTotalAngularDamp()
        }
    }
    
    public var totalLinearDamp: Double {
        get {
            __getTotalLinearDamp()
        }
    }
    
    public var inverseInertia: Godot.Vector3 {
        get {
            __getInverseInertia()
        }
    }
    
    public var inverseInertiaTensor: Godot.Basis {
        get {
            __getInverseInertiaTensor()
        }
    }
    
    public var totalGravity: Godot.Vector3 {
        get {
            __getTotalGravity()
        }
    }
    
    public var centerOfMass: Godot.Vector3 {
        get {
            __getCenterOfMass()
        }
    }
    
    public var centerOfMassLocal: Godot.Vector3 {
        get {
            __getCenterOfMassLocal()
        }
    }
    
    public var principalInertiaAxes: Godot.Basis {
        get {
            __getPrincipalInertiaAxes()
        }
    }
    
    public var angularVelocity: Godot.Vector3 {
        get {
            __getAngularVelocity()
        }
        set(newValue) {
            __setAngularVelocity(
                newValue
            )
        }
    }
    
    public var linearVelocity: Godot.Vector3 {
        get {
            __getLinearVelocity()
        }
        set(newValue) {
            __setLinearVelocity(
                newValue
            )
        }
    }
    
    public var isSleeping: Bool {
        get {
            __isSleeping()
        }
        set(newValue) {
            __setSleepState(
                enabled: newValue
            )
        }
    }
    
    public var transform: Godot.Transform3D {
        get {
            __getTransform()
        }
        set(newValue) {
            __setTransform(
                newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}