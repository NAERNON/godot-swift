//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectBodyState3D: Object {
    private static var __method_binding_get_total_gravity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_gravity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getTotalGravity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_gravity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_total_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_linear_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTotalLinearDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_linear_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_total_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_angular_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTotalAngularDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_angular_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_center_of_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getCenterOfMass() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_center_of_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_center_of_mass_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_center_of_mass_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getCenterOfMassLocal() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_center_of_mass_local,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_principal_inertia_axes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_principal_inertia_axes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    private func __getPrincipalInertiaAxes() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_principal_inertia_axes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_inverse_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inverse_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getInverseMass() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inverse_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_inverse_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inverse_inertia").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getInverseInertia() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inverse_inertia,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_inverse_inertia_tensor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inverse_inertia_tensor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    private func __getInverseInertiaTensor() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inverse_inertia_tensor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setLinearVelocity(_ velocity: Godot.Vector3) {
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_linear_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getLinearVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_linear_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setAngularVelocity(_ velocity: Godot.Vector3) {
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_angular_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getAngularVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_angular_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setTransform(_ transform: Godot.Transform3D) {
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    private func __getTransform() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_velocity_at_local_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_velocity_at_local_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 192990374)!
        }
        }
    }()
    public func velocityAtLocalPosition(_ localPosition: Godot.Vector3) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        localPosition.withGodotUnsafeRawPointer { __ptr_localPosition in
        withUnsafeArgumentPackPointer(__ptr_localPosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_velocity_at_local_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_central_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
        }
        }
    }()
    public func applyCentralImpulse(_ impulse: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_central_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func applyImpulse(_ impulse: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_impulse, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_torque_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyTorqueImpulse(_ impulse: Godot.Vector3) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_torque_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
        }
        }
    }()
    public func applyCentralForce(_ force: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func applyForce(_ force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_apply_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_apply_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2007698547)!
        }
        }
    }()
    public func addConstantCentralForce(_ force: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_constant_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func addConstantForce(_ force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func addConstantTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setConstantForce(_ force: Godot.Vector3) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func constantForce() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_force,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setConstantTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    public func constantTorque() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_torque,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_sleep_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sleep_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSleepState(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sleep_state,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_sleeping").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSleeping() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_sleeping,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_contact_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func contactCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_contact_local_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_local_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactLocalPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_local_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_local_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_local_normal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactLocalNormal(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_local_normal,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactImpulse(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_impulse,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_local_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_local_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func contactLocalShape(contactIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_local_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_local_velocity_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_local_velocity_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactLocalVelocityAtPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_local_velocity_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 495598643)!
        }
        }
    }()
    public func contactCollider(contactIdx: Int32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactColliderPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func contactColliderId(contactIdx: Int32) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3332903315)!
        }
        }
    }()
    public func contactColliderObject(contactIdx: Int32) -> Godot.Object? {
        Godot.Object?.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider_object,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func contactColliderShape(contactIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_contact_collider_velocity_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_collider_velocity_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 711720468)!
        }
        }
    }()
    public func contactColliderVelocityAtPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        contactIdx.withGodotUnsafeRawPointer { __ptr_contactIdx in
        withUnsafeArgumentPackPointer(__ptr_contactIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_contact_collider_velocity_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getStep() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_step,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_integrate_forces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "integrate_forces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func integrateForces() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_integrate_forces,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_space_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_space_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2069328350)!
        }
        }
    }()
    public func spaceState() -> Godot.PhysicsDirectSpaceState3D? {
        Godot.PhysicsDirectSpaceState3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_space_state,
            __ptr_self,
            nil,
            __temporary
        )}}
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
        set {
            __setAngularVelocity(
                newValue
            )
        }
    }

    public var linearVelocity: Godot.Vector3 {
        get {
            __getLinearVelocity()
        }
        set {
            __setLinearVelocity(
                newValue
            )
        }
    }

    public var isSleeping: Bool {
        get {
            __isSleeping()
        }
        set {
            __setSleepState(
                enabled: newValue
            )
        }
    }

    public var transform: Godot.Transform3D {
        get {
            __getTransform()
        }
        set {
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }