//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CollisionObject2D: Node2D {
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
        public let viewport: Godot.Node?
        public let event: Godot.InputEvent?
        public let shapeIdx: Int
        fileprivate init(viewport: Godot.Node?, event: Godot.InputEvent?, shapeIdx: Int) {
            self.viewport = viewport
            self.event = event
            self.shapeIdx = shapeIdx
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.viewport), Variant(input.event), Variant(input.shapeIdx)]
        }
    }
    public func inputEvent(viewport: Godot.Node?, event: Godot.InputEvent?, shapeIdx: Int) {
        _ = inputEventSignal.emit(.init(viewport: viewport,
                event: event,
                shapeIdx: shapeIdx))
    }
    public lazy var inputEventSignal: Godot.SignalEmitter<InputEventSignalInput> = {
        .init(object: self, signalName: "input_event") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputEventSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(viewport: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    event: Godot.InputEvent?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    shapeIdx: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputEventSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputEventSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseEntered() {
        _ = mouseEnteredSignal.emit()
    }
    public lazy var mouseEnteredSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func mouseExited() {
        _ = mouseExitedSignal.emit()
    }
    public lazy var mouseExitedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "mouse_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct MouseShapeEnteredSignalInput: Godot.SignalInput {
        public let shapeIdx: Int
        fileprivate init(shapeIdx: Int) {
            self.shapeIdx = shapeIdx
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.shapeIdx)]
        }
    }
    public func mouseShapeEntered(shapeIdx: Int) {
        _ = mouseShapeEnteredSignal.emit(.init(shapeIdx: shapeIdx))
    }
    public lazy var mouseShapeEnteredSignal: Godot.SignalEmitter<MouseShapeEnteredSignalInput> = {
        .init(object: self, signalName: "mouse_shape_entered") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<MouseShapeEnteredSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(shapeIdx: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<MouseShapeEnteredSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<MouseShapeEnteredSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct MouseShapeExitedSignalInput: Godot.SignalInput {
        public let shapeIdx: Int
        fileprivate init(shapeIdx: Int) {
            self.shapeIdx = shapeIdx
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.shapeIdx)]
        }
    }
    public func mouseShapeExited(shapeIdx: Int) {
        _ = mouseShapeExitedSignal.emit(.init(shapeIdx: shapeIdx))
    }
    public lazy var mouseShapeExitedSignal: Godot.SignalEmitter<MouseShapeExitedSignalInput> = {
        .init(object: self, signalName: "mouse_shape_exited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<MouseShapeExitedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(shapeIdx: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<MouseShapeExitedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<MouseShapeExitedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _inputEvent(viewport: Godot.Viewport?, event: Godot.InputEvent?, shapeIdx: Int32) {
    }

    open func _mouseEnter() {
    }

    open func _mouseExit() {
    }

    open func _mouseShapeEnter(shapeIdx: Int32) {
    }

    open func _mouseShapeExit(shapeIdx: Int32) {
    }

    internal static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_collision_layer: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_collision_layer: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_collision_mask: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_collision_mask: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_collision_layer_value: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_collision_layer_value: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_collision_mask_value: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_collision_mask_value: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_collision_priority: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_collision_priority: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_set_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1919204045)!
        }
        }
    }()
    private func __setDisableMode(_ mode: Godot.CollisionObject2D.DisableMode) {
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

    internal static var __method_binding_get_disable_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_disable_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3172846349)!
        }
        }
    }()
    private func __getDisableMode() -> Godot.CollisionObject2D.DisableMode {
        Godot.CollisionObject2D.DisableMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_disable_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPickable(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_pickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_pickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPickable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_pickable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_shape_owner: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_remove_shape_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_shape_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeShapeOwner(ownerID: UInt32) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_shape_owner,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_shape_owners: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_shape_owner_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 30160968)!
        }
        }
    }()
    public func shapeOwnerSetTransform(ownerID: UInt32, transform: Godot.Transform2D) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shape_owner_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3836996910)!
        }
        }
    }()
    public func shapeOwnerGetTransform(ownerID: UInt32) -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_get_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3332903315)!
        }
        }
    }()
    public func shapeOwnerGetOwner(ownerID: UInt32) -> Godot.Object? {
        Godot.Object?.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_owner,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_set_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func shapeOwnerSetDisabled(ownerID: UInt32, disabled: Bool) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        disabled.withGodotUnsafeRawPointer { __ptr_disabled in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_disabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_shape_owner_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_shape_owner_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isShapeOwnerDisabled(ownerID: UInt32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_shape_owner_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_set_one_way_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_one_way_collision").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func shapeOwnerSetOneWayCollision(ownerID: UInt32, enable: Bool) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_one_way_collision,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_shape_owner_one_way_collision_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_shape_owner_one_way_collision_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isShapeOwnerOneWayCollisionEnabled(ownerID: UInt32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_shape_owner_one_way_collision_enabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_set_one_way_collision_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_set_one_way_collision_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func shapeOwnerSetOneWayCollisionMargin(ownerID: UInt32, margin: Double) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_set_one_way_collision_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_shape_owner_one_way_collision_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shape_owner_one_way_collision_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func shapeOwnerOneWayCollisionMargin(ownerID: UInt32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_shape_owner_one_way_collision_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_add_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_add_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2077425081)!
        }
        }
    }()
    public func shapeOwnerAddShape(ownerID: UInt32, shape: Godot.Shape2D?) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafePointer(to: __ptr_shape) { _ptr___ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_ownerID, _ptr___ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_add_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_shape_owner_get_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func shapeOwnerGetShapeCount(ownerID: UInt32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shape_owner_get_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3106725749)!
        }
        }
    }()
    public func shapeOwnerGetShape(ownerID: UInt32, shapeID: Int32) -> Godot.Shape2D? {
        Godot.Shape2D?.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        shapeID.withGodotUnsafeRawPointer { __ptr_shapeID in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shape_owner_get_shape_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_get_shape_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()
    public func shapeOwnerGetShapeIndex(ownerID: UInt32, shapeID: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        shapeID.withGodotUnsafeRawPointer { __ptr_shapeID in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_get_shape_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shape_owner_remove_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_remove_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func shapeOwnerRemoveShape(ownerID: UInt32, shapeID: Int32) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        shapeID.withGodotUnsafeRawPointer { __ptr_shapeID in
        withUnsafeArgumentPackPointer(__ptr_ownerID, __ptr_shapeID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_remove_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shape_owner_clear_shapes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shape_owner_clear_shapes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func shapeOwnerClearShapes(ownerID: UInt32) {
        ownerID.withGodotUnsafeRawPointer { __ptr_ownerID in
        withUnsafeArgumentPackPointer(__ptr_ownerID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shape_owner_clear_shapes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_shape_find_owner: GDExtensionMethodBindPtr = {
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

    public var disableMode: Godot.CollisionObject2D.DisableMode {
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

    public var isPickable: Bool {
        get {
            __isPickable()
        }
        set {
            __setPickable(
                enabled: newValue
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
            Unmanaged<CollisionObject2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._inputEvent(
            viewport: Godot.Viewport?.fromGodotUnsafePointer(args[0]!),
            event: Godot.InputEvent?.fromGodotUnsafePointer(args[1]!),
            shapeIdx: Int32.fromGodotUnsafePointer(args[2]!)
        )}
        let _mouse_enter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseEnter()}
        let _mouse_exit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<CollisionObject2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseExit()}
        let _mouse_shape_enter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CollisionObject2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseShapeEnter(
            shapeIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _mouse_shape_exit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CollisionObject2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._mouseShapeExit(
            shapeIdx: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_inputEvent" : ("_input_event", _input_event_call),
            "_mouseEnter" : ("_mouse_enter", _mouse_enter_call),
            "_mouseExit" : ("_mouse_exit", _mouse_exit_call),
            "_mouseShapeEnter" : ("_mouse_shape_enter", _mouse_shape_enter_call),
            "_mouseShapeExit" : ("_mouse_shape_exit", _mouse_shape_exit_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }