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

    public struct InputEventSignalInput: Godot.SignalInput {
        public let camera: Godot.Node?

        public let event: Godot.InputEvent?

        public let position: Godot.Vector3

        public let normal: Godot.Vector3

        public let shapeIdx: Int

        fileprivate init(
            camera: Godot.Node?,
            event: Godot.InputEvent?,
            position: Godot.Vector3,
            normal: Godot.Vector3,
            shapeIdx: Int
        ) {
            self.camera = camera
            self.event = event
            self.position = position
            self.normal = normal
            self.shapeIdx = shapeIdx
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.camera), Variant(input.event), Variant(input.position), Variant(input.normal), Variant(input.shapeIdx)]
        }
    }

    public func inputEvent(
        camera: Godot.Node?,
        event: Godot.InputEvent?,
        position: Godot.Vector3,
        normal: Godot.Vector3,
        shapeIdx: Int
    ) {
        _ = inputEventSignal.emit(.init(camera: camera,
                event: event,
                position: position,
                normal: normal,
                shapeIdx: shapeIdx))
    }

    public lazy var inputEventSignal: Godot.SignalEmitter<InputEventSignalInput> = {
        .init(object: self, signalName: "input_event") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputEventSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(camera: Godot.Node?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    event: Godot.InputEvent?.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    position: Godot.Vector3.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    normal: Godot.Vector3.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!),
                    shapeIdx: Int.convertFromStorage(unsafePointer: args!.advanced(by: 4).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputEventSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputEventSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseEntered() {
        _ = mouseEnteredSignal.emit()
    }

    public lazy var mouseEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseExited() {
        _ = mouseExitedSignal.emit()
    }

    public lazy var mouseExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _inputEvent(
        camera: Godot.Camera3D?,
        event: Godot.InputEvent?,
        position: Godot.Vector3,
        normal: Godot.Vector3,
        shapeIdx: Int32
    ) {
    }

    open func _mouseEnter() {
    }

    open func _mouseExit() {
    }

    internal static var __method_binding_set_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_layer").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setCollisionLayer(
        _ layer: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
            withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_layer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_collision_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_layer").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getCollisionLayer() -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_layer,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setCollisionMask(
        _ mask: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: mask) { __ptr_mask in
            withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_mask,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_collision_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getCollisionMask() -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_mask,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_collision_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_layer_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCollisionLayerValue(
        layerNumber: Int32,
        value: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_collision_layer_value,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_collision_layer_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_layer_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func collisionLayerValue(
        layerNumber: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
                withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_collision_layer_value,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_mask_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCollisionMaskValue(
        layerNumber: Int32,
        value: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_layerNumber, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_collision_mask_value,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_collision_mask_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_mask_value").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func collisionMaskValue(
        layerNumber: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layerNumber) { __ptr_layerNumber in
                withUnsafeArgumentPackPointer(__ptr_layerNumber) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_collision_mask_value,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_collision_priority").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setCollisionPriority(
        _ priority: Double
    ) {
        withTransferrableUnsafeRawPointer(to: priority) { __ptr_priority in
            withUnsafeArgumentPackPointer(__ptr_priority) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_collision_priority,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_collision_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_collision_priority").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getCollisionPriority() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_collision_priority,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1623620376)!
        }
        }
    }()

    private func __setDisableMode(
        _ mode: Godot.CollisionObject3D.DisableMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_disable_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_disable_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410164780)!
        }
        }
    }()

    private func __getDisableMode() -> Godot.CollisionObject3D.DisableMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_disable_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ray_pickable").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setRayPickable(
        _ rayPickable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: rayPickable) { __ptr_rayPickable in
            withUnsafeArgumentPackPointer(__ptr_rayPickable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ray_pickable,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_ray_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_ray_pickable").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isRayPickable() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_ray_pickable,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_capture_input_on_drag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_capture_input_on_drag").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCaptureInputOnDrag(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_capture_input_on_drag,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_capture_input_on_drag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_capture_input_on_drag").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getCaptureInputOnDrag() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_capture_input_on_drag,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()

    public func rid() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rid,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_create_shape_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_shape_owner").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3429307534)!
        }
        }
    }()

    public func createShapeOwner(
        _ owner: Godot.Object?
    ) -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: owner) { __ptr_owner in
                withUnsafePointer(to: __ptr_owner) { _ptr___ptr_owner in
                    withUnsafeArgumentPackPointer(_ptr___ptr_owner) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_create_shape_owner,
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

    internal static var __method_binding_remove_shape_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_shape_owner").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeShapeOwner(
        ownerID: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_shape_owner,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_shape_owners: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shape_owners").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()

    public func shapeOwners() -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_shape_owners,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_shape_owner_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3616898986)!
        }
        }
    }()

    public func shapeOwnerSetTransform(
        ownerID: UInt32,
        transform: Godot.Transform3D
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withTransferrableUnsafeRawPointer(to: transform) { __ptr_transform in
                withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_transform) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_set_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965739696)!
        }
        }
    }()

    public func shapeOwnerGetTransform(
        ownerID: UInt32
    ) -> Godot.Transform3D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_get_transform,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_get_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_owner").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3332903315)!
        }
        }
    }()

    public func shapeOwnerGetOwner(
        ownerID: UInt32
    ) -> Godot.Object? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_get_owner,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_set_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_disabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func shapeOwnerSetDisabled(
        ownerID: UInt32,
        disabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withTransferrableUnsafeRawPointer(to: disabled) { __ptr_disabled in
                withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_disabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_set_disabled,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_shape_owner_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_shape_owner_disabled").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isShapeOwnerDisabled(
        ownerID: UInt32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_shape_owner_disabled,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_add_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_add_shape").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2566676345)!
        }
        }
    }()

    public func shapeOwnerAddShape(
        ownerID: UInt32,
        shape: Godot.Shape3D?
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withTransferrableUnsafeRawPointer(to: shape) { __ptr_shape in
                withUnsafePointer(to: __ptr_shape) { _ptr___ptr_shape in
                    withUnsafeArgumentPackPointer(__ptr_ownerID, _ptr___ptr_shape) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shape_owner_add_shape,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_get_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func shapeOwnerGetShapeCount(
        ownerID: UInt32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_get_shape_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4015519174)!
        }
        }
    }()

    public func shapeOwnerGetShape(
        ownerID: UInt32,
        shapeID: Int32
    ) -> Godot.Shape3D? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withTransferrableUnsafeRawPointer(to: shapeID) { __ptr_shapeID in
                    withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shape_owner_get_shape,
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

    internal static var __method_binding_shape_owner_get_shape_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()

    public func shapeOwnerGetShapeIndex(
        ownerID: UInt32,
        shapeID: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
                withTransferrableUnsafeRawPointer(to: shapeID) { __ptr_shapeID in
                    withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shape_owner_get_shape_index,
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

    internal static var __method_binding_shape_owner_remove_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_remove_shape").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func shapeOwnerRemoveShape(
        ownerID: UInt32,
        shapeID: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withTransferrableUnsafeRawPointer(to: shapeID) { __ptr_shapeID in
                withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_owner_remove_shape,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shape_owner_clear_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_clear_shapes").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func shapeOwnerClearShapes(
        ownerID: UInt32
    ) {
        withTransferrableUnsafeRawPointer(to: ownerID) { __ptr_ownerID in
            withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_shape_owner_clear_shapes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_shape_find_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_find_owner").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func shapeFindOwner(
        shapeIndex: Int32
    ) -> UInt32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shapeIndex) { __ptr_shapeIndex in
                withUnsafeArgumentPackPointer(__ptr_shapeIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shape_find_owner,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
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
            Unmanaged<CollisionObject3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._inputEvent(
            camera: Godot.Camera3D?.transferFromGodot(unsafePointer: args[0]!),
            event: Godot.InputEvent?.transferFromGodot(unsafePointer: args[1]!),
            position: Godot.Vector3.transferFromGodot(unsafePointer: args[2]!),
            normal: Godot.Vector3.transferFromGodot(unsafePointer: args[3]!),
            shapeIdx: Int32.transferFromGodot(unsafePointer: args[4]!)
        )}
        let _mouse_enter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject3D> .fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseEnter()}
        let _mouse_exit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject3D> .fromOpaque(instancePtr).takeUnretainedValue()
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