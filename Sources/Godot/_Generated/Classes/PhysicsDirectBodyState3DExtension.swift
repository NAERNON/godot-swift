//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectBodyState3DExtension: PhysicsDirectBodyState3D {
    open func _getTotalGravity() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getTotalLinearDamp() -> Double {
        Double()
    }

    open func _getTotalAngularDamp() -> Double {
        Double()
    }

    open func _getCenterOfMass() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getCenterOfMassLocal() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getPrincipalInertiaAxes() -> Godot.Basis {
        Godot.Basis()
    }

    open func _getInverseMass() -> Double {
        Double()
    }

    open func _getInverseInertia() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getInverseInertiaTensor() -> Godot.Basis {
        Godot.Basis()
    }

    open func _setLinearVelocity(_ velocity: Godot.Vector3) {
    }

    open func _getLinearVelocity() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _setAngularVelocity(_ velocity: Godot.Vector3) {
    }

    open func _getAngularVelocity() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _setTransform(_ transform: Godot.Transform3D) {
    }

    open func _getTransform() -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _getVelocityAtLocalPosition(_ localPosition: Godot.Vector3) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _applyCentralImpulse(_ impulse: Godot.Vector3) {
    }

    open func _applyImpulse(_ impulse: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _applyTorqueImpulse(_ impulse: Godot.Vector3) {
    }

    open func _applyCentralForce(_ force: Godot.Vector3) {
    }

    open func _applyForce(_ force: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _applyTorque(_ torque: Godot.Vector3) {
    }

    open func _addConstantCentralForce(_ force: Godot.Vector3) {
    }

    open func _addConstantForce(_ force: Godot.Vector3, position: Godot.Vector3) {
    }

    open func _addConstantTorque(_ torque: Godot.Vector3) {
    }

    open func _setConstantForce(_ force: Godot.Vector3) {
    }

    open func _getConstantForce() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _setConstantTorque(_ torque: Godot.Vector3) {
    }

    open func _getConstantTorque() -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _setSleepState(enabled: Bool) {
    }

    open func _isSleeping() -> Bool {
        Bool()
    }

    open func _getContactCount() -> Int32 {
        Int32()
    }

    open func _getContactLocalPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getContactLocalNormal(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getContactImpulse(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getContactLocalShape(contactIdx: Int32) -> Int32 {
        Int32()
    }

    open func _getContactLocalVelocityAtPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getContactCollider(contactIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _getContactColliderPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getContactColliderId(contactIdx: Int32) -> UInt64 {
        UInt64()
    }

    open func _getContactColliderObject(contactIdx: Int32) -> Godot.Object? {
        nil
    }

    open func _getContactColliderShape(contactIdx: Int32) -> Int32 {
        Int32()
    }

    open func _getContactColliderVelocityAtPosition(contactIdx: Int32) -> Godot.Vector3 {
        Godot.Vector3()
    }

    open func _getStep() -> Double {
        Double()
    }

    open func _integrateForces() {
    }

    open func _getSpaceState() -> Godot.PhysicsDirectSpaceState3D? {
        nil
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_total_gravity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTotalGravity()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_total_linear_damp_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTotalLinearDamp()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_total_angular_damp_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTotalAngularDamp()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_center_of_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCenterOfMass()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_center_of_mass_local_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCenterOfMassLocal()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_principal_inertia_axes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPrincipalInertiaAxes()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_inverse_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getInverseMass()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_inverse_inertia_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getInverseInertia()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_inverse_inertia_tensor_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getInverseInertiaTensor()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_linear_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setLinearVelocity(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_linear_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getLinearVelocity()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_angular_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setAngularVelocity(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_angular_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAngularVelocity()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setTransform(
            Godot.Transform3D.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getTransform()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_velocity_at_local_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getVelocityAtLocalPosition(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _apply_central_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyCentralImpulse(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _apply_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyImpulse(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!),
            position: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )}
        let _apply_torque_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyTorqueImpulse(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _apply_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyCentralForce(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _apply_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyForce(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!),
            position: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )}
        let _apply_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._applyTorque(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _add_constant_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._addConstantCentralForce(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _add_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._addConstantForce(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!),
            position: Godot.Vector3.fromGodotUnsafePointer(args[1]!)
        )}
        let _add_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._addConstantTorque(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _set_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setConstantForce(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConstantForce()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setConstantTorque(
            Godot.Vector3.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConstantTorque()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_sleep_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSleepState(
            enabled: Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _is_sleeping_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isSleeping()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_local_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactLocalPosition(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_local_normal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactLocalNormal(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactImpulse(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_local_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactLocalShape(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_local_velocity_at_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactLocalVelocityAtPosition(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactCollider(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactColliderPosition(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactColliderId(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_object_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactColliderObject(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactColliderShape(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_contact_collider_velocity_at_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getContactColliderVelocityAtPosition(
            contactIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_step_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getStep()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _integrate_forces_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._integrateForces()}
        let _get_space_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<PhysicsDirectBodyState3DExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSpaceState()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getTotalGravity" : ("_get_total_gravity", _get_total_gravity_call),
            "_getTotalLinearDamp" : ("_get_total_linear_damp", _get_total_linear_damp_call),
            "_getTotalAngularDamp" : ("_get_total_angular_damp", _get_total_angular_damp_call),
            "_getCenterOfMass" : ("_get_center_of_mass", _get_center_of_mass_call),
            "_getCenterOfMassLocal" : ("_get_center_of_mass_local", _get_center_of_mass_local_call),
            "_getPrincipalInertiaAxes" : ("_get_principal_inertia_axes", _get_principal_inertia_axes_call),
            "_getInverseMass" : ("_get_inverse_mass", _get_inverse_mass_call),
            "_getInverseInertia" : ("_get_inverse_inertia", _get_inverse_inertia_call),
            "_getInverseInertiaTensor" : ("_get_inverse_inertia_tensor", _get_inverse_inertia_tensor_call),
            "_setLinearVelocity" : ("_set_linear_velocity", _set_linear_velocity_call),
            "_getLinearVelocity" : ("_get_linear_velocity", _get_linear_velocity_call),
            "_setAngularVelocity" : ("_set_angular_velocity", _set_angular_velocity_call),
            "_getAngularVelocity" : ("_get_angular_velocity", _get_angular_velocity_call),
            "_setTransform" : ("_set_transform", _set_transform_call),
            "_getTransform" : ("_get_transform", _get_transform_call),
            "_getVelocityAtLocalPosition" : ("_get_velocity_at_local_position", _get_velocity_at_local_position_call),
            "_applyCentralImpulse" : ("_apply_central_impulse", _apply_central_impulse_call),
            "_applyImpulse" : ("_apply_impulse", _apply_impulse_call),
            "_applyTorqueImpulse" : ("_apply_torque_impulse", _apply_torque_impulse_call),
            "_applyCentralForce" : ("_apply_central_force", _apply_central_force_call),
            "_applyForce" : ("_apply_force", _apply_force_call),
            "_applyTorque" : ("_apply_torque", _apply_torque_call),
            "_addConstantCentralForce" : ("_add_constant_central_force", _add_constant_central_force_call),
            "_addConstantForce" : ("_add_constant_force", _add_constant_force_call),
            "_addConstantTorque" : ("_add_constant_torque", _add_constant_torque_call),
            "_setConstantForce" : ("_set_constant_force", _set_constant_force_call),
            "_getConstantForce" : ("_get_constant_force", _get_constant_force_call),
            "_setConstantTorque" : ("_set_constant_torque", _set_constant_torque_call),
            "_getConstantTorque" : ("_get_constant_torque", _get_constant_torque_call),
            "_setSleepState" : ("_set_sleep_state", _set_sleep_state_call),
            "_isSleeping" : ("_is_sleeping", _is_sleeping_call),
            "_getContactCount" : ("_get_contact_count", _get_contact_count_call),
            "_getContactLocalPosition" : ("_get_contact_local_position", _get_contact_local_position_call),
            "_getContactLocalNormal" : ("_get_contact_local_normal", _get_contact_local_normal_call),
            "_getContactImpulse" : ("_get_contact_impulse", _get_contact_impulse_call),
            "_getContactLocalShape" : ("_get_contact_local_shape", _get_contact_local_shape_call),
            "_getContactLocalVelocityAtPosition" : ("_get_contact_local_velocity_at_position", _get_contact_local_velocity_at_position_call),
            "_getContactCollider" : ("_get_contact_collider", _get_contact_collider_call),
            "_getContactColliderPosition" : ("_get_contact_collider_position", _get_contact_collider_position_call),
            "_getContactColliderId" : ("_get_contact_collider_id", _get_contact_collider_id_call),
            "_getContactColliderObject" : ("_get_contact_collider_object", _get_contact_collider_object_call),
            "_getContactColliderShape" : ("_get_contact_collider_shape", _get_contact_collider_shape_call),
            "_getContactColliderVelocityAtPosition" : ("_get_contact_collider_velocity_at_position", _get_contact_collider_velocity_at_position_call),
            "_getStep" : ("_get_step", _get_step_call),
            "_integrateForces" : ("_integrate_forces", _integrate_forces_call),
            "_getSpaceState" : ("_get_space_state", _get_space_state_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }