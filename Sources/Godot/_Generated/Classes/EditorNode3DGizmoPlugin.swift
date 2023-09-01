//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorNode3DGizmoPlugin: Resource {
    open func _hasGizmo(forNode3D node3D: Godot.Node3D?) -> Bool {
        Bool()
    }

    open func _createGizmo(forNode3D node3D: Godot.Node3D?) -> Godot.EditorNode3DGizmo? {
        nil
    }

    open func _getGizmoName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getPriority() -> Int32 {
        Int32()
    }

    open func _canBeHidden() -> Bool {
        Bool()
    }

    open func _isSelectableWhenHidden() -> Bool {
        Bool()
    }

    open func _redraw(gizmo: Godot.EditorNode3DGizmo?) {
    }

    open func _getHandleName(gizmo: Godot.EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isHandleHighlighted(gizmo: Godot.EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Bool {
        Bool()
    }

    open func _getHandleValue(gizmo: Godot.EditorNode3DGizmo?, handleId: Int32, secondary: Bool) -> Godot.Variant {
        nil
    }

    open func _setHandle(gizmo: Godot.EditorNode3DGizmo?, handleId: Int32, secondary: Bool, camera: Godot.Camera3D?, screenPos: Godot.Vector2) {
    }

    open func _commitHandle(gizmo: Godot.EditorNode3DGizmo?, handleId: Int32, secondary: Bool, restore: Godot.Variant, cancel: Bool) {
    }

    open func _subgizmosIntersectRay(gizmo: Godot.EditorNode3DGizmo?, camera: Godot.Camera3D?, screenPos: Godot.Vector2) -> Int32 {
        Int32()
    }

    open func _subgizmosIntersectFrustum(gizmo: Godot.EditorNode3DGizmo?, camera: Godot.Camera3D?, frustumPlanes: Godot.GodotTypedArray<Godot.Plane>) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _getSubgizmoTransform(gizmo: Godot.EditorNode3DGizmo?, subgizmoId: Int32) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _setSubgizmoTransform(gizmo: Godot.EditorNode3DGizmo?, subgizmoId: Int32, transform: Godot.Transform3D) {
    }

    open func _commitSubgizmos(gizmo: Godot.EditorNode3DGizmo?, ids: Godot.PackedInt32Array, restores: Godot.GodotTypedArray<Godot.Transform3D>, cancel: Bool) {
    }

    private static var __method_binding_create_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3486012546)!
        }
        }
    }()
    public func createMaterial(name: Godot.GodotString, color: Godot.Color, billboard: Bool = false, onTop: Bool = false, useVertexColor: Bool = false) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafePointer(to: billboard) { (__ptr_billboard) in
                    withUnsafePointer(to: onTop) { (__ptr_onTop) in
                        withUnsafePointer(to: useVertexColor) { (__ptr_useVertexColor) in
                            withUnsafeArgumentPackPointer(__ptr_name, __ptr_color, __ptr_billboard, __ptr_onTop, __ptr_useVertexColor) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_material,
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
        }
    }

    private static var __method_binding_create_icon_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_icon_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2976007329)!
        }
        }
    }()
    public func createIconMaterial(name: Godot.GodotString, texture: Godot.Texture2D?, onTop: Bool = false, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        name.withUnsafeRawPointer { (__ptr_name) in
            texture.withUnsafeRawPointer { (__ptr_texture) in
                withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                    withUnsafePointer(to: onTop) { (__ptr_onTop) in
                        withUnsafePointer(to: color) { (__ptr_color) in
                            withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_texture, __ptr_onTop, __ptr_color) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_icon_material,
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
        }
    }

    private static var __method_binding_create_handle_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_handle_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2486475223)!
        }
        }
    }()
    public func createHandleMaterial(name: Godot.GodotString, billboard: Bool = false, texture: Godot.Texture2D? = nil) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: billboard) { (__ptr_billboard) in
                texture.withUnsafeRawPointer { (__ptr_texture) in
                    withUnsafePointer(to: __ptr_texture) { (_ptr___ptr_texture) in
                        withUnsafeArgumentPackPointer(__ptr_name, __ptr_billboard, _ptr___ptr_texture) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_create_handle_material,
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
    }

    private static var __method_binding_add_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1374068695)!
        }
        }
    }()
    public func addMaterial(name: Godot.GodotString, material: Godot.StandardMaterial3D?) {
        name.withUnsafeRawPointer { (__ptr_name) in
            material.withUnsafeRawPointer { (__ptr_material) in
                withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_material) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_material,
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

    private static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3501703615)!
        }
        }
    }()
    public func material(name: Godot.GodotString, gizmo: Godot.EditorNode3DGizmo? = nil) -> Godot.StandardMaterial3D? {
        var __temporary: GDExtensionObjectPtr!
        name.withUnsafeRawPointer { (__ptr_name) in
            gizmo.withUnsafeRawPointer { (__ptr_gizmo) in
                withUnsafePointer(to: __ptr_gizmo) { (_ptr___ptr_gizmo) in
                    withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_gizmo) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_material,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.StandardMaterial3D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _has_gizmo_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasGizmo(
            forNode3D: Godot.Node3D.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _create_gizmo_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._createGizmo(
            forNode3D: Godot.Node3D.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_gizmo_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getGizmoName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPriority()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _can_be_hidden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canBeHidden()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _is_selectable_when_hidden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isSelectableWhenHidden()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _redraw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._redraw(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _get_handle_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getHandleName(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            handleId: args[1]!.load(as: Int32.self),
            secondary: args[2]!.load(as: Bool.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_handle_highlighted_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isHandleHighlighted(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            handleId: args[1]!.load(as: Int32.self),
            secondary: args[2]!.load(as: Bool.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_handle_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getHandleValue(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            handleId: args[1]!.load(as: Int32.self),
            secondary: args[2]!.load(as: Bool.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setHandle(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            handleId: args[1]!.load(as: Int32.self),
            secondary: args[2]!.load(as: Bool.self),
            camera: Godot.Camera3D.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[3]!)),
            screenPos: args[4]!.load(as: Godot.Vector2.self)
        )}
        let _commit_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._commitHandle(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            handleId: args[1]!.load(as: Int32.self),
            secondary: args[2]!.load(as: Bool.self),
            restore: Godot.Variant(godotExtensionPointer: args[3]!),
            cancel: args[4]!.load(as: Bool.self)
        )}
        let _subgizmos_intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._subgizmosIntersectRay(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            camera: Godot.Camera3D.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            screenPos: args[2]!.load(as: Godot.Vector2.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _subgizmos_intersect_frustum_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._subgizmosIntersectFrustum(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            camera: Godot.Camera3D.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            frustumPlanes: Godot.GodotTypedArray<Godot.Plane>(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getSubgizmoTransform(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            subgizmoId: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _set_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setSubgizmoTransform(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            subgizmoId: args[1]!.load(as: Int32.self),
            transform: args[2]!.load(as: Godot.Transform3D.self)
        )}
        let _commit_subgizmos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmoPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._commitSubgizmos(
            gizmo: Godot.EditorNode3DGizmo.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            ids: Godot.PackedInt32Array(godotExtensionPointer: args[1]!),
            restores: Godot.GodotTypedArray<Godot.Transform3D>(godotExtensionPointer: args[2]!),
            cancel: args[3]!.load(as: Bool.self)
        )}
        _virtualFunctions = [
            "_hasGizmo" : ("_has_gizmo", _has_gizmo_call),
            "_createGizmo" : ("_create_gizmo", _create_gizmo_call),
            "_getGizmoName" : ("_get_gizmo_name", _get_gizmo_name_call),
            "_getPriority" : ("_get_priority", _get_priority_call),
            "_canBeHidden" : ("_can_be_hidden", _can_be_hidden_call),
            "_isSelectableWhenHidden" : ("_is_selectable_when_hidden", _is_selectable_when_hidden_call),
            "_redraw" : ("_redraw", _redraw_call),
            "_getHandleName" : ("_get_handle_name", _get_handle_name_call),
            "_isHandleHighlighted" : ("_is_handle_highlighted", _is_handle_highlighted_call),
            "_getHandleValue" : ("_get_handle_value", _get_handle_value_call),
            "_setHandle" : ("_set_handle", _set_handle_call),
            "_commitHandle" : ("_commit_handle", _commit_handle_call),
            "_subgizmosIntersectRay" : ("_subgizmos_intersect_ray", _subgizmos_intersect_ray_call),
            "_subgizmosIntersectFrustum" : ("_subgizmos_intersect_frustum", _subgizmos_intersect_frustum_call),
            "_getSubgizmoTransform" : ("_get_subgizmo_transform", _get_subgizmo_transform_call),
            "_setSubgizmoTransform" : ("_set_subgizmo_transform", _set_subgizmo_transform_call),
            "_commitSubgizmos" : ("_commit_subgizmos", _commit_subgizmos_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }