//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class PhysicsDirectBodyState2DExtension: PhysicsDirectBodyState2D {
    open func _getTotalGravity() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getTotalLinearDamp() -> Double {
        Double()
    }

    open func _getTotalAngularDamp() -> Double {
        Double()
    }

    open func _getCenterOfMass() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getCenterOfMassLocal() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getInverseMass() -> Double {
        Double()
    }

    open func _getInverseInertia() -> Double {
        Double()
    }

    open func _setLinearVelocity(_ velocity: Godot.Vector2) {
    }

    open func _getLinearVelocity() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _setAngularVelocity(_ velocity: Double) {
    }

    open func _getAngularVelocity() -> Double {
        Double()
    }

    open func _setTransform(_ transform: Godot.Transform2D) {
    }

    open func _getTransform() -> Godot.Transform2D {
        Godot.Transform2D()
    }

    open func _getVelocityAtLocalPosition(_ localPosition: Godot.Vector2) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _applyCentralImpulse(_ impulse: Godot.Vector2) {
    }

    open func _applyImpulse(_ impulse: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _applyTorqueImpulse(_ impulse: Double) {
    }

    open func _applyCentralForce(_ force: Godot.Vector2) {
    }

    open func _applyForce(_ force: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _applyTorque(_ torque: Double) {
    }

    open func _addConstantCentralForce(_ force: Godot.Vector2) {
    }

    open func _addConstantForce(_ force: Godot.Vector2, position: Godot.Vector2) {
    }

    open func _addConstantTorque(_ torque: Double) {
    }

    open func _setConstantForce(_ force: Godot.Vector2) {
    }

    open func _getConstantForce() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _setConstantTorque(_ torque: Double) {
    }

    open func _getConstantTorque() -> Double {
        Double()
    }

    open func _setSleepState(enabled: Bool) {
    }

    open func _isSleeping() -> Bool {
        Bool()
    }

    open func _getContactCount() -> Int32 {
        Int32()
    }

    open func _getContactLocalPosition(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getContactLocalNormal(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getContactLocalShape(contactIdx: Int32) -> Int32 {
        Int32()
    }

    open func _getContactLocalVelocityAtPosition(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getContactCollider(contactIdx: Int32) -> Godot.RID {
        Godot.RID()
    }

    open func _getContactColliderPosition(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
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

    open func _getContactColliderVelocityAtPosition(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getContactImpulse(contactIdx: Int32) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _getStep() -> Double {
        Double()
    }

    open func _integrateForces() {
    }

    open func _getSpaceState() -> Godot.PhysicsDirectSpaceState2D? {
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
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTotalGravity()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_total_linear_damp_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTotalLinearDamp()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_total_angular_damp_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTotalAngularDamp()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_center_of_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCenterOfMass()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_center_of_mass_local_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCenterOfMassLocal()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_inverse_mass_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInverseMass()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _get_inverse_inertia_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInverseInertia()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _set_linear_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setLinearVelocity(
            args[0]!.load(as: Godot.Vector2.self)
        )}
        let _get_linear_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLinearVelocity()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _set_angular_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setAngularVelocity(
            args[0]!.load(as: Double.self)
        )}
        let _get_angular_velocity_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getAngularVelocity()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setTransform(
            args[0]!.load(as: Godot.Transform2D.self)
        )}
        let _get_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getTransform()
        returnPtr!.assumingMemoryBound(to: Godot.Transform2D.self).pointee = returnValue}
        let _get_velocity_at_local_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getVelocityAtLocalPosition(
            args[0]!.load(as: Godot.Vector2.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _apply_central_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyCentralImpulse(
            args[0]!.load(as: Godot.Vector2.self)
        )}
        let _apply_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyImpulse(
            args[0]!.load(as: Godot.Vector2.self),
            position: args[1]!.load(as: Godot.Vector2.self)
        )}
        let _apply_torque_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyTorqueImpulse(
            args[0]!.load(as: Double.self)
        )}
        let _apply_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyCentralForce(
            args[0]!.load(as: Godot.Vector2.self)
        )}
        let _apply_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyForce(
            args[0]!.load(as: Godot.Vector2.self),
            position: args[1]!.load(as: Godot.Vector2.self)
        )}
        let _apply_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._applyTorque(
            args[0]!.load(as: Double.self)
        )}
        let _add_constant_central_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._addConstantCentralForce(
            args[0]!.load(as: Godot.Vector2.self)
        )}
        let _add_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._addConstantForce(
            args[0]!.load(as: Godot.Vector2.self),
            position: args[1]!.load(as: Godot.Vector2.self)
        )}
        let _add_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._addConstantTorque(
            args[0]!.load(as: Double.self)
        )}
        let _set_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setConstantForce(
            args[0]!.load(as: Godot.Vector2.self)
        )}
        let _get_constant_force_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getConstantForce()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _set_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setConstantTorque(
            args[0]!.load(as: Double.self)
        )}
        let _get_constant_torque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getConstantTorque()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _set_sleep_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setSleepState(
            enabled: args[0]!.load(as: Bool.self)
        )}
        let _is_sleeping_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isSleeping()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_contact_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_contact_local_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactLocalPosition(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_contact_local_normal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactLocalNormal(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_contact_local_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactLocalShape(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_contact_local_velocity_at_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactLocalVelocityAtPosition(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_contact_collider_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getContactCollider(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_contact_collider_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactColliderPosition(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_contact_collider_id_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactColliderId(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: UInt64.self).pointee = returnValue}
        let _get_contact_collider_object_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactColliderObject(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_contact_collider_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactColliderShape(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_contact_collider_velocity_at_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactColliderVelocityAtPosition(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_contact_impulse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getContactImpulse(
            contactIdx: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _get_step_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getStep()
        returnPtr!.assumingMemoryBound(to: Double.self).pointee = returnValue}
        let _integrate_forces_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._integrateForces()}
        let _get_space_state_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<PhysicsDirectBodyState2DExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getSpaceState()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getTotalGravity" : ("_get_total_gravity", _get_total_gravity_call),
            "_getTotalLinearDamp" : ("_get_total_linear_damp", _get_total_linear_damp_call),
            "_getTotalAngularDamp" : ("_get_total_angular_damp", _get_total_angular_damp_call),
            "_getCenterOfMass" : ("_get_center_of_mass", _get_center_of_mass_call),
            "_getCenterOfMassLocal" : ("_get_center_of_mass_local", _get_center_of_mass_local_call),
            "_getInverseMass" : ("_get_inverse_mass", _get_inverse_mass_call),
            "_getInverseInertia" : ("_get_inverse_inertia", _get_inverse_inertia_call),
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
            "_getContactLocalShape" : ("_get_contact_local_shape", _get_contact_local_shape_call),
            "_getContactLocalVelocityAtPosition" : ("_get_contact_local_velocity_at_position", _get_contact_local_velocity_at_position_call),
            "_getContactCollider" : ("_get_contact_collider", _get_contact_collider_call),
            "_getContactColliderPosition" : ("_get_contact_collider_position", _get_contact_collider_position_call),
            "_getContactColliderId" : ("_get_contact_collider_id", _get_contact_collider_id_call),
            "_getContactColliderObject" : ("_get_contact_collider_object", _get_contact_collider_object_call),
            "_getContactColliderShape" : ("_get_contact_collider_shape", _get_contact_collider_shape_call),
            "_getContactColliderVelocityAtPosition" : ("_get_contact_collider_velocity_at_position", _get_contact_collider_velocity_at_position_call),
            "_getContactImpulse" : ("_get_contact_impulse", _get_contact_impulse_call),
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