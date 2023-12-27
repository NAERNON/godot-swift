//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Node3D: Node {
    public enum RotationEditMode: UInt32, GodotEnum {
        case euler = 0
        case quaternion = 1
        case basis = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Euler", 0),
            ("Quaternion", 1),
            ("Basis", 2),]
        }
    }

    public func visibilityChanged() {
        visibilityChangedConnector.emit()
    }

    public private (set) lazy var visibilityChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "visibility_changed")
    }()


    private static var __method_binding_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setTransform(local: Godot.Transform3D) {
        local.withGodotUnsafeRawPointer { __ptr_local in
        withUnsafeArgumentPackPointer(__ptr_local) { __accessPtr in
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

    private static var __method_binding_set_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setPosition(_ position: Godot.Vector3) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getPosition() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setRotation(eulerRadians: Godot.Vector3) {
        eulerRadians.withGodotUnsafeRawPointer { __ptr_eulerRadians in
        withUnsafeArgumentPackPointer(__ptr_eulerRadians) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getRotation() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setRotationDegrees(eulerDegrees: Godot.Vector3) {
        eulerDegrees.withGodotUnsafeRawPointer { __ptr_eulerDegrees in
        withUnsafeArgumentPackPointer(__ptr_eulerDegrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation_degrees,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getRotationDegrees() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation_degrees,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rotation_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1820889989)!
        }
        }
    }()
    private func __setRotationOrder(_ order: Godot.EulerOrder) {
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_order) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation_order,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rotation_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 916939469)!
        }
        }
    }()
    private func __getRotationOrder() -> Godot.EulerOrder {
        Godot.EulerOrder.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation_order,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rotation_edit_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rotation_edit_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 141483330)!
        }
        }
    }()
    private func __setRotationEditMode(_ editMode: Godot.Node3D.RotationEditMode) {
        editMode.withGodotUnsafeRawPointer { __ptr_editMode in
        withUnsafeArgumentPackPointer(__ptr_editMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_rotation_edit_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rotation_edit_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rotation_edit_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1572188370)!
        }
        }
    }()
    private func __getRotationEditMode() -> Godot.Node3D.RotationEditMode {
        Godot.Node3D.RotationEditMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rotation_edit_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setScale(_ scale: Godot.Vector3) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getScale() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_quaternion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_quaternion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1727505552)!
        }
        }
    }()
    private func __setQuaternion(_ quaternion: Godot.Quaternion) {
        quaternion.withGodotUnsafeRawPointer { __ptr_quaternion in
        withUnsafeArgumentPackPointer(__ptr_quaternion) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_quaternion,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_quaternion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_quaternion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1222331677)!
        }
        }
    }()
    private func __getQuaternion() -> Godot.Quaternion {
        Godot.Quaternion.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_quaternion,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_basis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_basis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1055510324)!
        }
        }
    }()
    private func __setBasis(_ basis: Godot.Basis) {
        basis.withGodotUnsafeRawPointer { __ptr_basis in
        withUnsafeArgumentPackPointer(__ptr_basis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_basis,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_basis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_basis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    private func __getBasis() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_basis,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2952846383)!
        }
        }
    }()
    private func __setGlobalTransform(global: Godot.Transform3D) {
        global.withGodotUnsafeRawPointer { __ptr_global in
        withUnsafeArgumentPackPointer(__ptr_global) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229777777)!
        }
        }
    }()
    private func __getGlobalTransform() -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setGlobalPosition(_ position: Godot.Vector3) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getGlobalPosition() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_basis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_basis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1055510324)!
        }
        }
    }()
    private func __setGlobalBasis(_ basis: Godot.Basis) {
        basis.withGodotUnsafeRawPointer { __ptr_basis in
        withUnsafeArgumentPackPointer(__ptr_basis) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_basis,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_basis: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_basis").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2716978435)!
        }
        }
    }()
    private func __getGlobalBasis() -> Godot.Basis {
        Godot.Basis.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_basis,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setGlobalRotation(eulerRadians: Godot.Vector3) {
        eulerRadians.withGodotUnsafeRawPointer { __ptr_eulerRadians in
        withUnsafeArgumentPackPointer(__ptr_eulerRadians) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_rotation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_rotation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getGlobalRotation() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_rotation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setGlobalRotationDegrees(eulerDegrees: Godot.Vector3) {
        eulerDegrees.withGodotUnsafeRawPointer { __ptr_eulerDegrees in
        withUnsafeArgumentPackPointer(__ptr_eulerDegrees) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_rotation_degrees,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_rotation_degrees: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_rotation_degrees").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getGlobalRotationDegrees() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_rotation_degrees,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_parent_node_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_parent_node_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 151077316)!
        }
        }
    }()
    public func parentNode3D() -> Godot.Node3D? {
        Godot.Node3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_parent_node_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_ignore_transform_notification: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ignore_transform_notification").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setIgnoreTransformNotification(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ignore_transform_notification,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_as_top_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_as_top_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAsTopLevel(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_as_top_level,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_set_as_top_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_set_as_top_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSetAsTopLevel() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_set_as_top_level,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_disable_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setDisableScale(disable: Bool) {
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_scale_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_scale_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isScaleDisabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_scale_disabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 317588385)!
        }
        }
    }()
    public func world3D() -> Godot.World3D? {
        Godot.World3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_force_update_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_update_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceUpdateTransform() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_update_transform,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_visibility_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visibility_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()
    private func __setVisibilityParent(path: Godot.NodePath) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visibility_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_visibility_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visibility_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()
    private func __getVisibilityParent() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visibility_parent,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_update_gizmos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_gizmos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateGizmos() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_gizmos,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_add_gizmo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_gizmo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1544533845)!
        }
        }
    }()
    public func addGizmo(_ gizmo: Godot.Node3DGizmo?) {
        gizmo.withGodotUnsafeRawPointer { __ptr_gizmo in
        withUnsafePointer(to: __ptr_gizmo) { _ptr___ptr_gizmo in
        withUnsafeArgumentPackPointer(_ptr___ptr_gizmo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_gizmo,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_gizmos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gizmos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func gizmos() -> Godot.GodotArray<Godot.Node3DGizmo?> {
        Godot.GodotArray<Godot.Node3DGizmo?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gizmos,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear_gizmos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_gizmos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearGizmos() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_gizmos,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_subgizmo_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subgizmo_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3317607635)!
        }
        }
    }()
    public func setSubgizmoSelection(gizmo: Godot.Node3DGizmo?, id: Int32, transform: Godot.Transform3D) {
        gizmo.withGodotUnsafeRawPointer { __ptr_gizmo in
        withUnsafePointer(to: __ptr_gizmo) { _ptr___ptr_gizmo in
        id.withGodotUnsafeRawPointer { __ptr_id in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(_ptr___ptr_gizmo, __ptr_id, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_subgizmo_selection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_clear_subgizmo_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_subgizmo_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearSubgizmoSelection() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_subgizmo_selection,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setVisible(_ visible: Bool) {
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isVisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_visible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_visible_in_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_visible_in_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isVisibleInTree() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_visible_in_tree,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_show: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "show").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func show() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_show,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_hide: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hide").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func hide() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_hide,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_notify_local_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_local_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyLocalTransform(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_notify_local_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_local_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_local_transform_notification_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isLocalTransformNotificationEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_local_transform_notification_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_notify_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_notify_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setNotifyTransform(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_notify_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_transform_notification_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_transform_notification_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isTransformNotificationEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_transform_notification_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_rotate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3436291937)!
        }
        }
    }()
    public func rotate(axis: Godot.Vector3, angle: Double) {
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_global_rotate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_rotate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3436291937)!
        }
        }
    }()
    public func globalRotate(axis: Godot.Vector3, angle: Double) {
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_rotate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_global_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func globalScale(_ scale: Godot.Vector3) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_global_translate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_translate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func globalTranslate(offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_global_translate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_rotate_object_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_object_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3436291937)!
        }
        }
    }()
    public func rotateObjectLocal(axis: Godot.Vector3, angle: Double) {
        axis.withGodotUnsafeRawPointer { __ptr_axis in
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_axis, __ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_object_local,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_scale_object_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scale_object_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func scaleObjectLocal(scale: Godot.Vector3) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_scale_object_local,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_translate_object_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "translate_object_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func translateObjectLocal(offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_translate_object_local,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_rotate_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func rotateX(angle: Double) {
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_x,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_rotate_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func rotateY(angle: Double) {
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_y,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_rotate_z: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_z").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func rotateZ(angle: Double) {
        angle.withGodotUnsafeRawPointer { __ptr_angle in
        withUnsafeArgumentPackPointer(__ptr_angle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_z,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_translate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "translate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func translate(offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_translate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_orthonormalize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "orthonormalize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func orthonormalize() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_orthonormalize,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_identity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_identity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setIdentity() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_identity,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_look_at: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "look_at").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2882425029)!
        }
        }
    }()
    public func lookAt(target: Godot.Vector3, up: Godot.Vector3 = Vector3(x: 0, y: 1, z: 0), useModelFront: Bool = false) {
        target.withGodotUnsafeRawPointer { __ptr_target in
        up.withGodotUnsafeRawPointer { __ptr_up in
        useModelFront.withGodotUnsafeRawPointer { __ptr_useModelFront in
        withUnsafeArgumentPackPointer(__ptr_target, __ptr_up, __ptr_useModelFront) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_look_at,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_look_at_from_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "look_at_from_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2086826090)!
        }
        }
    }()
    public func lookAtFromPosition(_ position: Godot.Vector3, target: Godot.Vector3, up: Godot.Vector3 = Vector3(x: 0, y: 1, z: 0), useModelFront: Bool = false) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        target.withGodotUnsafeRawPointer { __ptr_target in
        up.withGodotUnsafeRawPointer { __ptr_up in
        useModelFront.withGodotUnsafeRawPointer { __ptr_useModelFront in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_target, __ptr_up, __ptr_useModelFront) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_look_at_from_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_to_local: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_local").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 192990374)!
        }
        }
    }()
    public func toLocal(globalPoint: Godot.Vector3) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        globalPoint.withGodotUnsafeRawPointer { __ptr_globalPoint in
        withUnsafeArgumentPackPointer(__ptr_globalPoint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_local,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_to_global: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_global").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 192990374)!
        }
        }
    }()
    public func toGlobal(localPoint: Godot.Vector3) -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        localPoint.withGodotUnsafeRawPointer { __ptr_localPoint in
        withUnsafeArgumentPackPointer(__ptr_localPoint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_global,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var transform: Godot.Transform3D {
        get {
            __getTransform()
        }
        set {
            __setTransform(
                local: newValue
            )
        }
    }

    public var globalTransform: Godot.Transform3D {
        get {
            __getGlobalTransform()
        }
        set {
            __setGlobalTransform(
                global: newValue
            )
        }
    }

    public var position: Godot.Vector3 {
        get {
            __getPosition()
        }
        set {
            __setPosition(
                newValue
            )
        }
    }

    public var rotation: Godot.Vector3 {
        get {
            __getRotation()
        }
        set {
            __setRotation(
                eulerRadians: newValue
            )
        }
    }

    public var rotationDegrees: Godot.Vector3 {
        get {
            __getRotationDegrees()
        }
        set {
            __setRotationDegrees(
                eulerDegrees: newValue
            )
        }
    }

    public var quaternion: Godot.Quaternion {
        get {
            __getQuaternion()
        }
        set {
            __setQuaternion(
                newValue
            )
        }
    }

    public var basis: Godot.Basis {
        get {
            __getBasis()
        }
        set {
            __setBasis(
                newValue
            )
        }
    }

    public var scale: Godot.Vector3 {
        get {
            __getScale()
        }
        set {
            __setScale(
                newValue
            )
        }
    }

    public var rotationEditMode: Godot.Node3D.RotationEditMode {
        get {
            __getRotationEditMode()
        }
        set {
            __setRotationEditMode(
                newValue
            )
        }
    }

    public var rotationOrder: Godot.EulerOrder {
        get {
            __getRotationOrder()
        }
        set {
            __setRotationOrder(
                newValue
            )
        }
    }

    public var isSetAsTopLevel: Bool {
        get {
            __isSetAsTopLevel()
        }
        set {
            __setAsTopLevel(
                enable: newValue
            )
        }
    }

    public var globalPosition: Godot.Vector3 {
        get {
            __getGlobalPosition()
        }
        set {
            __setGlobalPosition(
                newValue
            )
        }
    }

    public var globalBasis: Godot.Basis {
        get {
            __getGlobalBasis()
        }
        set {
            __setGlobalBasis(
                newValue
            )
        }
    }

    public var globalRotation: Godot.Vector3 {
        get {
            __getGlobalRotation()
        }
        set {
            __setGlobalRotation(
                eulerRadians: newValue
            )
        }
    }

    public var globalRotationDegrees: Godot.Vector3 {
        get {
            __getGlobalRotationDegrees()
        }
        set {
            __setGlobalRotationDegrees(
                eulerDegrees: newValue
            )
        }
    }

    public var isVisible: Bool {
        get {
            __isVisible()
        }
        set {
            __setVisible(
                newValue
            )
        }
    }

    public var visibilityParent: Godot.NodePath {
        get {
            __getVisibilityParent()
        }
        set {
            __setVisibilityParent(
                path: newValue
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