//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CollisionObject3D: Node3D {
    public enum DisableMode: UInt32, GodotEnum {
        case remove = 0
        case makeStatic = 1
        case keepActive = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Remove", 0),
            ("Make Static", 1),
            ("Keep Active", 2),]
        }
    }

    public func inputEvent(camera: Godot.Node?, event: Godot.InputEvent?, position: Godot.Vector3, normal: Godot.Vector3, shapeIdx: Int) {
        inputEventConnector.emit(camera, event, position, normal, shapeIdx)
    }

    public private (set) lazy var inputEventConnector: Godot.SignalConnector<Godot.Node?, Godot.InputEvent?, Godot.Vector3, Godot.Vector3, Int> = {
        .init(self, "input_event")
    }()

    public func mouseEntered() {
        mouseEnteredConnector.emit()
    }

    public private (set) lazy var mouseEnteredConnector: Godot.SignalConnector
    <> = {
        .init(self, "mouse_entered")
    }()


    public func mouseExited() {
        mouseExitedConnector.emit()
    }

    public private (set) lazy var mouseExitedConnector: Godot.SignalConnector
    <> = {
        .init(self, "mouse_exited")
    }()


    open func _inputEvent(camera: Godot.Camera3D?, event: Godot.InputEvent?, position: Godot.Vector3, normal: Godot.Vector3, shapeIdx: Int32) {
    }

    open func _mouseEnter() {
    }

    open func _mouseExit() {
    }

    private static var __method_binding_set_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setCollisionLayer(_ layer: UInt32) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getCollisionLayer() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_layer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setCollisionMask(_ mask: UInt32) {
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getCollisionMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_collision_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_layer_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setCollisionLayerValue(layerNumber: Int32, value: Bool) {
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_layer_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_collision_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_layer_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func collisionLayerValue(layerNumber: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_layer_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setCollisionMaskValue(layerNumber: Int32, value: Bool) {
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_mask_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func collisionMaskValue(layerNumber: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layerNumber.withGodotUnsafeRawPointer { __ptr_layerNumber in
        withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_mask_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setCollisionPriority(_ priority: Double) {
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_collision_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getCollisionPriority() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_collision_priority,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1623620376)!
        }
        }
    }()
    private func __setDisableMode(_ mode: Godot.CollisionObject3D.DisableMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_disable_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410164780)!
        }
        }
    }()
    private func __getDisableMode() -> Godot.CollisionObject3D.DisableMode {
        Godot.CollisionObject3D.DisableMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_disable_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ray_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setRayPickable(_ rayPickable: Bool) {
        rayPickable.withGodotUnsafeRawPointer { __ptr_rayPickable in
        withUnsafeArgumentPackPointer(__ptr_rayPickable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ray_pickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_ray_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRayPickable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_ray_pickable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_capture_input_on_drag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_capture_input_on_drag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCaptureInputOnDrag(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_capture_input_on_drag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_capture_input_on_drag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_capture_input_on_drag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getCaptureInputOnDrag() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_capture_input_on_drag,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func rid() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_create_shape_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_shape_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3429307534)!
        }
        }
    }()
    public func createShapeOwner(_ owner: Godot.Object?) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        owner.withGodotUnsafeRawPointer { __ptr_owner in
        withUnsafePointer(to: __ptr_owner) { _ptr___ptr_owner in
        withUnsafeArgumentPackPointer(_ptr___ptr_owner) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_shape_owner,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_remove_shape_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_shape_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeShapeOwner(ownerId: UInt32) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_shape_owner,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_shape_owners: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shape_owners").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    public func shapeOwners() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_shape_owners,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_shape_owner_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()
    public func shapeOwnerSetTransform(ownerId: UInt32, transform: Godot.Transform3D) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_ownerId, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_shape_owner_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()
    public func shapeOwnerGetTransform(ownerId: UInt32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shape_owner_get_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3332903315)!
        }
        }
    }()
    public func shapeOwnerGetOwner(ownerId: UInt32) -> Godot.Object? {
        Godot.Object?.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_owner,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shape_owner_set_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func shapeOwnerSetDisabled(ownerId: UInt32, disabled: Bool) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_ownerId, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_shape_owner_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_shape_owner_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isShapeOwnerDisabled(ownerId: UInt32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_shape_owner_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shape_owner_add_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_add_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2566676345)!
        }
        }
    }()
    public func shapeOwnerAddShape(ownerId: UInt32, shape: Godot.Shape3D?) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafePointer(to: __ptr_shape) { _ptr___ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_ownerId, _ptr___ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_add_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_shape_owner_get_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func shapeOwnerGetShapeCount(ownerId: UInt32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shape_owner_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4015519174)!
        }
        }
    }()
    public func shapeOwnerGetShape(ownerId: UInt32, shapeId: Int32) -> Godot.Shape3D? {
        Godot.Shape3D?.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        shapeId.withGodotUnsafeRawPointer { __ptr_shapeId in
        withUnsafeArgumentPackPointer(__ptr_ownerId, __ptr_shapeId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_shape_owner_get_shape_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()
    public func shapeOwnerGetShapeIndex(ownerId: UInt32, shapeId: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        shapeId.withGodotUnsafeRawPointer { __ptr_shapeId in
        withUnsafeArgumentPackPointer(__ptr_ownerId, __ptr_shapeId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_shape_owner_remove_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_remove_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func shapeOwnerRemoveShape(ownerId: UInt32, shapeId: Int32) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        shapeId.withGodotUnsafeRawPointer { __ptr_shapeId in
        withUnsafeArgumentPackPointer(__ptr_ownerId, __ptr_shapeId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_remove_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_shape_owner_clear_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_clear_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func shapeOwnerClearShapes(ownerId: UInt32) {
        ownerId.withGodotUnsafeRawPointer { __ptr_ownerId in
        withUnsafeArgumentPackPointer(__ptr_ownerId) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_clear_shapes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_shape_find_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_find_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func shapeFindOwner(shapeIndex: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        shapeIndex.withGodotUnsafeRawPointer { __ptr_shapeIndex in
        withUnsafeArgumentPackPointer(__ptr_shapeIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_find_owner,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var disableMode: Godot.CollisionObject3D.DisableMode {
        get {
            __getDisableMode()
        }
        set {
            __setDisableMode(
                newValue
            )
        }
    }

    public var collisionLayer: UInt32 {
        get {
            __getCollisionLayer()
        }
        set {
            __setCollisionLayer(
                newValue
            )
        }
    }

    public var collisionMask: UInt32 {
        get {
            __getCollisionMask()
        }
        set {
            __setCollisionMask(
                newValue
            )
        }
    }

    public var collisionPriority: Double {
        get {
            __getCollisionPriority()
        }
        set {
            __setCollisionPriority(
                newValue
            )
        }
    }

    public var isRayPickable: Bool {
        get {
            __isRayPickable()
        }
        set {
            __setRayPickable(
                newValue
            )
        }
    }

    public var captureInputOnDrag: Bool {
        get {
            __getCaptureInputOnDrag()
        }
        set {
            __setCaptureInputOnDrag(
                enable: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _input_event_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CollisionObject3D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._inputEvent(
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[0]!),
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[1]!),
            position: Godot.Vector3.fromGodotUnsafePointer(args[2]!),
            normal: Godot.Vector3.fromGodotUnsafePointer(args[3]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[4]!)
        )}
        let _mouse_enter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject3D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseEnter()}
        let _mouse_exit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject3D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseExit()}
        _virtualFunctions = [
            "_inputEvent" : ("_input_event", _input_event_call),
            "_mouseEnter" : ("_mouse_enter", _mouse_enter_call),
            "_mouseExit" : ("_mouse_exit", _mouse_exit_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }