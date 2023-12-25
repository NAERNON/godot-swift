//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class RigidBody3D: PhysicsBody3D {
    public enum FreezeMode: UInt32, GodotEnum {
        case `static` = 0
        case kinematic = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Static", 0),
            ("Kinematic", 1),]
        }
    }
    public enum CenterOfMassMode: UInt32, GodotEnum {
        case auto = 0
        case custom = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Auto", 0),
            ("Custom", 1),]
        }
    }
    public enum DampMode: UInt32, GodotEnum {
        case combine = 0
        case replace = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Combine", 0),
            ("Replace", 1),]
        }
    }

    public func bodyShapeEntered(bodyRid: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
        bodyShapeEnteredConnector.emit(bodyRid, body, bodyShapeIndex, localShapeIndex)
    }

    public private (set) lazy var bodyShapeEnteredConnector: Godot.SignalConnector<Godot.RID, Godot.Node?, Int, Int> = {
        .init(self, "body_shape_entered")
    }()

    public func bodyShapeExited(bodyRid: Godot.RID, body: Godot.Node?, bodyShapeIndex: Int, localShapeIndex: Int) {
        bodyShapeExitedConnector.emit(bodyRid, body, bodyShapeIndex, localShapeIndex)
    }

    public private (set) lazy var bodyShapeExitedConnector: Godot.SignalConnector<Godot.RID, Godot.Node?, Int, Int> = {
        .init(self, "body_shape_exited")
    }()

    public func bodyEntered(body: Godot.Node?) {
        bodyEnteredConnector.emit(body)
    }

    public private (set) lazy var bodyEnteredConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "body_entered")
    }()

    public func bodyExited(body: Godot.Node?) {
        bodyExitedConnector.emit(body)
    }

    public private (set) lazy var bodyExitedConnector: Godot.SignalConnector<Godot.Node?> = {
        .init(self, "body_exited")
    }()

    public func sleepingStateChanged() {
        sleepingStateChangedConnector.emit()
    }

    public private (set) lazy var sleepingStateChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "sleeping_state_changed")
    }()


    open func _integrateForces(state: Godot.PhysicsDirectBodyState3D?) {
    }

    private static var __method_binding_set_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMass(_ mass: Double) {
        mass.withGodotUnsafeRawPointer { __ptr_mass in
        withUnsafeArgumentPackPointer(__ptr_mass) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_mass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMass() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_inertia").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setInertia(_ inertia: Godot.Vector3) {
        inertia.withGodotUnsafeRawPointer { __ptr_inertia in
        withUnsafeArgumentPackPointer(__ptr_inertia) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_inertia,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_inertia: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inertia").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getInertia() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_inertia,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_center_of_mass_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_center_of_mass_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3625866032)!
        }
        }
    }()
    private func __setCenterOfMassMode(_ mode: Godot.RigidBody3D.CenterOfMassMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_center_of_mass_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_center_of_mass_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_center_of_mass_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 237405040)!
        }
        }
    }()
    private func __getCenterOfMassMode() -> Godot.RigidBody3D.CenterOfMassMode {
        Godot.RigidBody3D.CenterOfMassMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_center_of_mass_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_center_of_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setCenterOfMass(_ centerOfMass: Godot.Vector3) {
        centerOfMass.withGodotUnsafeRawPointer { __ptr_centerOfMass in
        withUnsafeArgumentPackPointer(__ptr_centerOfMass) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_center_of_mass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_center_of_mass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_center_of_mass").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getCenterOfMass() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_center_of_mass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_physics_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_material_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1784508650)!
        }
        }
    }()
    private func __setPhysicsMaterialOverride(_ physicsMaterialOverride: Godot.PhysicsMaterial?) {
        physicsMaterialOverride.withGodotUnsafeRawPointer { __ptr_physicsMaterialOverride in
        withUnsafePointer(to: __ptr_physicsMaterialOverride) { _ptr___ptr_physicsMaterialOverride in
        withUnsafeArgumentPackPointer(_ptr___ptr_physicsMaterialOverride) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_physics_material_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_physics_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_material_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2521850424)!
        }
        }
    }()
    private func __getPhysicsMaterialOverride() -> Godot.PhysicsMaterial? {
        Godot.PhysicsMaterial?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_physics_material_override,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setLinearVelocity(_ linearVelocity: Godot.Vector3) {
        linearVelocity.withGodotUnsafeRawPointer { __ptr_linearVelocity in
        withUnsafeArgumentPackPointer(__ptr_linearVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_linear_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getLinearVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_linear_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setAngularVelocity(_ angularVelocity: Godot.Vector3) {
        angularVelocity.withGodotUnsafeRawPointer { __ptr_angularVelocity in
        withUnsafeArgumentPackPointer(__ptr_angularVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_angular_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getAngularVelocity() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_angular_velocity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_inverse_inertia_tensor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inverse_inertia_tensor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    public func inverseInertiaTensor() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_inverse_inertia_tensor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_gravity_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gravity_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setGravityScale(_ gravityScale: Double) {
        gravityScale.withGodotUnsafeRawPointer { __ptr_gravityScale in
        withUnsafeArgumentPackPointer(__ptr_gravityScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_gravity_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_gravity_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gravity_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getGravityScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_gravity_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_damp_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1802035050)!
        }
        }
    }()
    private func __setLinearDampMode(_ linearDampMode: Godot.RigidBody3D.DampMode) {
        linearDampMode.withGodotUnsafeRawPointer { __ptr_linearDampMode in
        withUnsafeArgumentPackPointer(__ptr_linearDampMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_linear_damp_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_damp_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1366206940)!
        }
        }
    }()
    private func __getLinearDampMode() -> Godot.RigidBody3D.DampMode {
        Godot.RigidBody3D.DampMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_linear_damp_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_damp_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1802035050)!
        }
        }
    }()
    private func __setAngularDampMode(_ angularDampMode: Godot.RigidBody3D.DampMode) {
        angularDampMode.withGodotUnsafeRawPointer { __ptr_angularDampMode in
        withUnsafeArgumentPackPointer(__ptr_angularDampMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_angular_damp_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_damp_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_damp_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1366206940)!
        }
        }
    }()
    private func __getAngularDampMode() -> Godot.RigidBody3D.DampMode {
        Godot.RigidBody3D.DampMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_angular_damp_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_linear_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLinearDamp(_ linearDamp: Double) {
        linearDamp.withGodotUnsafeRawPointer { __ptr_linearDamp in
        withUnsafeArgumentPackPointer(__ptr_linearDamp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_linear_damp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_linear_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_linear_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLinearDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_linear_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_angular_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAngularDamp(_ angularDamp: Double) {
        angularDamp.withGodotUnsafeRawPointer { __ptr_angularDamp in
        withUnsafeArgumentPackPointer(__ptr_angularDamp) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_angular_damp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_angular_damp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_angular_damp").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAngularDamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_angular_damp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_contacts_reported").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMaxContactsReported(amount: Int32) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_max_contacts_reported,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_max_contacts_reported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_contacts_reported").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMaxContactsReported() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_max_contacts_reported,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_contact_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_contact_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func contactCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_contact_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_custom_integrator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_custom_integrator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseCustomIntegrator(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_use_custom_integrator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_custom_integrator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_custom_integrator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isUsingCustomIntegrator() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_using_custom_integrator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_contact_monitor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_contact_monitor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setContactMonitor(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_contact_monitor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_contact_monitor_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_contact_monitor_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isContactMonitorEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_contact_monitor_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_continuous_collision_detection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_continuous_collision_detection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseContinuousCollisionDetection(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_use_continuous_collision_detection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_continuous_collision_detection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_continuous_collision_detection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingContinuousCollisionDetection() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_using_continuous_collision_detection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_axis_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_axis_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setAxisVelocity(_ axisVelocity: Godot.Vector3) {
        axisVelocity.withGodotUnsafeRawPointer { __ptr_axisVelocity in
        withUnsafeArgumentPackPointer(__ptr_axisVelocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_axis_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_central_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_central_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyCentralImpulse(_ impulse: Godot.Vector3) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_central_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func applyImpulse(_ impulse: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_impulse, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_apply_torque_impulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_torque_impulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyTorqueImpulse(_ impulse: Godot.Vector3) {
        impulse.withGodotUnsafeRawPointer { __ptr_impulse in
        withUnsafeArgumentPackPointer(__ptr_impulse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_torque_impulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyCentralForce(_ force: Godot.Vector3) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_apply_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func applyForce(_ force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_apply_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "apply_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func applyTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_apply_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_constant_central_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_central_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func addConstantCentralForce(_ force: Godot.Vector3) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_constant_central_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2754756483)!
        }
        }
    }()
    public func addConstantForce(_ force: Godot.Vector3, position: Godot.Vector3 = Vector3(x: 0, y: 0, z: 0)) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_force, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func addConstantTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setConstantForce(_ force: Godot.Vector3) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_constant_force,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_constant_force: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_force").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getConstantForce() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_constant_force,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setConstantTorque(_ torque: Godot.Vector3) {
        torque.withGodotUnsafeRawPointer { __ptr_torque in
        withUnsafeArgumentPackPointer(__ptr_torque) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_constant_torque,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_constant_torque: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_torque").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getConstantTorque() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_constant_torque,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sleeping").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSleeping(_ sleeping: Bool) {
        sleeping.withGodotUnsafeRawPointer { __ptr_sleeping in
        withUnsafeArgumentPackPointer(__ptr_sleeping) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_sleeping,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_sleeping: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_sleeping").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSleeping() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_sleeping,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_can_sleep: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_can_sleep").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCanSleep(ableToSleep: Bool) {
        ableToSleep.withGodotUnsafeRawPointer { __ptr_ableToSleep in
        withUnsafeArgumentPackPointer(__ptr_ableToSleep) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_can_sleep,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_able_to_sleep: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_able_to_sleep").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAbleToSleep() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_able_to_sleep,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lock_rotation_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setLockRotationEnabled(lockRotation: Bool) {
        lockRotation.withGodotUnsafeRawPointer { __ptr_lockRotation in
        withUnsafeArgumentPackPointer(__ptr_lockRotation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_lock_rotation_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_lock_rotation_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_lock_rotation_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isLockRotationEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_lock_rotation_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_freeze_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_freeze_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFreezeEnabled(freezeMode: Bool) {
        freezeMode.withGodotUnsafeRawPointer { __ptr_freezeMode in
        withUnsafeArgumentPackPointer(__ptr_freezeMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_freeze_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_freeze_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_freeze_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFreezeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_freeze_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_freeze_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_freeze_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1319914653)!
        }
        }
    }()
    private func __setFreezeMode(_ freezeMode: Godot.RigidBody3D.FreezeMode) {
        freezeMode.withGodotUnsafeRawPointer { __ptr_freezeMode in
        withUnsafeArgumentPackPointer(__ptr_freezeMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_freeze_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_freeze_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_freeze_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2008423905)!
        }
        }
    }()
    private func __getFreezeMode() -> Godot.RigidBody3D.FreezeMode {
        Godot.RigidBody3D.FreezeMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_freeze_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_colliding_bodies: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_colliding_bodies").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func collidingBodies() -> Godot.GodotArray<Godot.Node3D?> {
        Godot.GodotArray<Godot.Node3D?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_colliding_bodies,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var mass: Double {
        get {
            __getMass()
        }
        set {
            __setMass(
                newValue
            )
        }
    }

    public var physicsMaterialOverride: Godot.PhysicsMaterial? {
        get {
            __getPhysicsMaterialOverride()
        }
        set {
            __setPhysicsMaterialOverride(
                newValue
            )
        }
    }

    public var gravityScale: Double {
        get {
            __getGravityScale()
        }
        set {
            __setGravityScale(
                newValue
            )
        }
    }

    public var centerOfMassMode: Godot.RigidBody3D.CenterOfMassMode {
        get {
            __getCenterOfMassMode()
        }
        set {
            __setCenterOfMassMode(
                newValue
            )
        }
    }

    public var centerOfMass: Godot.Vector3 {
        get {
            __getCenterOfMass()
        }
        set {
            __setCenterOfMass(
                newValue
            )
        }
    }

    public var inertia: Godot.Vector3 {
        get {
            __getInertia()
        }
        set {
            __setInertia(
                newValue
            )
        }
    }

    public var isSleeping: Bool {
        get {
            __isSleeping()
        }
        set {
            __setSleeping(
                newValue
            )
        }
    }

    public var isAbleToSleep: Bool {
        get {
            __isAbleToSleep()
        }
        set {
            __setCanSleep(
                ableToSleep: newValue
            )
        }
    }

    public var isLockRotationEnabled: Bool {
        get {
            __isLockRotationEnabled()
        }
        set {
            __setLockRotationEnabled(
                lockRotation: newValue
            )
        }
    }

    public var isFreezeEnabled: Bool {
        get {
            __isFreezeEnabled()
        }
        set {
            __setFreezeEnabled(
                freezeMode: newValue
            )
        }
    }

    public var freezeMode: Godot.RigidBody3D.FreezeMode {
        get {
            __getFreezeMode()
        }
        set {
            __setFreezeMode(
                newValue
            )
        }
    }

    public var isUsingCustomIntegrator: Bool {
        get {
            __isUsingCustomIntegrator()
        }
        set {
            __setUseCustomIntegrator(
                enable: newValue
            )
        }
    }

    public var isUsingContinuousCollisionDetection: Bool {
        get {
            __isUsingContinuousCollisionDetection()
        }
        set {
            __setUseContinuousCollisionDetection(
                enable: newValue
            )
        }
    }

    public var maxContactsReported: Int32 {
        get {
            __getMaxContactsReported()
        }
        set {
            __setMaxContactsReported(
                amount: newValue
            )
        }
    }

    public var isContactMonitorEnabled: Bool {
        get {
            __isContactMonitorEnabled()
        }
        set {
            __setContactMonitor(
                enabled: newValue
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

    public var linearDampMode: Godot.RigidBody3D.DampMode {
        get {
            __getLinearDampMode()
        }
        set {
            __setLinearDampMode(
                newValue
            )
        }
    }

    public var linearDamp: Double {
        get {
            __getLinearDamp()
        }
        set {
            __setLinearDamp(
                newValue
            )
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

    public var angularDampMode: Godot.RigidBody3D.DampMode {
        get {
            __getAngularDampMode()
        }
        set {
            __setAngularDampMode(
                newValue
            )
        }
    }

    public var angularDamp: Double {
        get {
            __getAngularDamp()
        }
        set {
            __setAngularDamp(
                newValue
            )
        }
    }

    public var constantForce: Godot.Vector3 {
        get {
            __getConstantForce()
        }
        set {
            __setConstantForce(
                newValue
            )
        }
    }

    public var constantTorque: Godot.Vector3 {
        get {
            __getConstantTorque()
        }
        set {
            __setConstantTorque(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _integrate_forces_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<RigidBody3D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._integrateForces(
            state: Godot.PhysicsDirectBodyState3D?.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_integrateForces" : ("_integrate_forces", _integrate_forces_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }