//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorNode3DGizmoPlugin: Resource {
    open func _hasGizmo(
        forNode3D node3D: Godot.Node3D?
    ) -> Bool {
        Bool()
    }

    open func _createGizmo(
        forNode3D node3D: Godot.Node3D?
    ) -> Godot.EditorNode3DGizmo? {
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

    open func _redraw(
        gizmo: Godot.EditorNode3DGizmo?
    ) {
    }

    open func _getHandleName(
        gizmo: Godot.EditorNode3DGizmo?,
        handleID: Int32,
        secondary: Bool
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isHandleHighlighted(
        gizmo: Godot.EditorNode3DGizmo?,
        handleID: Int32,
        secondary: Bool
    ) -> Bool {
        Bool()
    }

    open func _getHandleValue(
        gizmo: Godot.EditorNode3DGizmo?,
        handleID: Int32,
        secondary: Bool
    ) -> Godot.Variant {
        Variant()
    }

    open func _setHandle(
        gizmo: Godot.EditorNode3DGizmo?,
        handleID: Int32,
        secondary: Bool,
        camera: Godot.Camera3D?,
        screenPos: Godot.Vector2
    ) {
    }

    open func _commitHandle(
        gizmo: Godot.EditorNode3DGizmo?,
        handleID: Int32,
        secondary: Bool,
        restore: Godot.Variant,
        cancel: Bool
    ) {
    }

    open func _subgizmosIntersectRay(
        gizmo: Godot.EditorNode3DGizmo?,
        camera: Godot.Camera3D?,
        screenPos: Godot.Vector2
    ) -> Int32 {
        Int32()
    }

    open func _subgizmosIntersectFrustum(
        gizmo: Godot.EditorNode3DGizmo?,
        camera: Godot.Camera3D?,
        frustumPlanes: Godot.GodotArray<Godot.Plane>
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _getSubgizmoTransform(
        gizmo: Godot.EditorNode3DGizmo?,
        subgizmoID: Int32
    ) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _setSubgizmoTransform(
        gizmo: Godot.EditorNode3DGizmo?,
        subgizmoID: Int32,
        transform: Godot.Transform3D
    ) {
    }

    open func _commitSubgizmos(
        gizmo: Godot.EditorNode3DGizmo?,
        ids: Godot.PackedInt32Array,
        restores: Godot.GodotArray<Godot.Transform3D>,
        cancel: Bool
    ) {
    }

    internal static var __method_binding_create_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3486012546)!
        }
        }
    }()

    public func createMaterial(
        name: Godot.GodotString,
        color: Godot.Color,
        billboard: Bool = false,
        onTop: Bool = false,
        useVertexColor: Bool = false
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        color.withGodotUnsafeRawPointer { __ptr_color in
        billboard.withGodotUnsafeRawPointer { __ptr_billboard in
        onTop.withGodotUnsafeRawPointer { __ptr_onTop in
        useVertexColor.withGodotUnsafeRawPointer { __ptr_useVertexColor in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_color, __ptr_billboard, __ptr_onTop, __ptr_useVertexColor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_create_icon_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_icon_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3804976916)!
        }
        }
    }()

    public func createIconMaterial(
        name: Godot.GodotString,
        texture: Godot.Texture2D?,
        onTop: Bool = false,
        color: Godot.Color = .white
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        onTop.withGodotUnsafeRawPointer { __ptr_onTop in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_texture, __ptr_onTop, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_icon_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_create_handle_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_handle_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2486475223)!
        }
        }
    }()

    public func createHandleMaterial(
        name: Godot.GodotString,
        billboard: Bool = false,
        texture: Godot.Texture2D? = nil
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        billboard.withGodotUnsafeRawPointer { __ptr_billboard in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_billboard, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_handle_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_add_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1374068695)!
        }
        }
    }()

    public func addMaterial(
        name: Godot.GodotString,
        material: Godot.StandardMaterial3D?
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 974464017)!
        }
        }
    }()

    public func material(
        name: Godot.GodotString,
        gizmo: Godot.EditorNode3DGizmo? = nil
    ) -> Godot.StandardMaterial3D? {
        Godot.StandardMaterial3D?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        gizmo.withGodotUnsafeRawPointer { __ptr_gizmo in
        withUnsafePointer(to: __ptr_gizmo) { _ptr___ptr_gizmo in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_gizmo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_material,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
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
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._hasGizmo(
            forNode3D: Godot.Node3D?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_gizmo_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createGizmo(
            forNode3D: Godot.Node3D?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_gizmo_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getGizmoName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_priority_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getPriority()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _can_be_hidden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._canBeHidden()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_selectable_when_hidden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isSelectableWhenHidden()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _redraw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._redraw(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_handle_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHandleName(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            handleID: Int32.fromGodotUnsafePointer(args[1]!),
            secondary: Bool.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_handle_highlighted_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isHandleHighlighted(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            handleID: Int32.fromGodotUnsafePointer(args[1]!),
            secondary: Bool.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_handle_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHandleValue(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            handleID: Int32.fromGodotUnsafePointer(args[1]!),
            secondary: Bool.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setHandle(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            handleID: Int32.fromGodotUnsafePointer(args[1]!),
            secondary: Bool.fromGodotUnsafePointer(args[2]!),
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[3]!),
            screenPos: Godot.Vector2.fromGodotUnsafePointer(args[4]!)
        )}
        let _commit_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._commitHandle(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            handleID: Int32.fromGodotUnsafePointer(args[1]!),
            secondary: Bool.fromGodotUnsafePointer(args[2]!),
            restore: Godot.Variant.fromGodotUnsafePointer(args[3]!),
            cancel: Bool.fromGodotUnsafePointer(args[4]!)
        )}
        let _subgizmos_intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._subgizmosIntersectRay(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[1]!),
            screenPos: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _subgizmos_intersect_frustum_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._subgizmosIntersectFrustum(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[1]!),
            frustumPlanes: Godot.GodotArray<Godot.Plane>.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSubgizmoTransform(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            subgizmoID: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSubgizmoTransform(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            subgizmoID: Int32.fromGodotUnsafePointer(args[1]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[2]!)
        )}
        let _commit_subgizmos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmoPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._commitSubgizmos(
            gizmo: Godot.EditorNode3DGizmo?.fromGodotUnsafePointer(args[0]!),
            ids: Godot.PackedInt32Array.fromGodotUnsafePointer(args[1]!),
            restores: Godot.GodotArray<Godot.Transform3D>.fromGodotUnsafePointer(args[2]!),
            cancel: Bool.fromGodotUnsafePointer(args[3]!)
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