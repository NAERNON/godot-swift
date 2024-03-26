//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorNode3DGizmo: Node3DGizmo {
    open func _redraw() {
    }

    open func _getHandleName(
        id: Int32,
        secondary: Bool
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isHandleHighlighted(
        id: Int32,
        secondary: Bool
    ) -> Bool {
        Bool()
    }

    open func _getHandleValue(
        id: Int32,
        secondary: Bool
    ) -> Godot.Variant {
        Variant()
    }

    open func _setHandle(
        id: Int32,
        secondary: Bool,
        camera: Godot.Camera3D?,
        point: Godot.Vector2
    ) {
    }

    open func _commitHandle(
        id: Int32,
        secondary: Bool,
        restore: Godot.Variant,
        cancel: Bool
    ) {
    }

    open func _subgizmosIntersectRay(
        camera: Godot.Camera3D?,
        point: Godot.Vector2
    ) -> Int32 {
        Int32()
    }

    open func _subgizmosIntersectFrustum(
        camera: Godot.Camera3D?,
        frustum: Godot.GodotArray<Godot.Plane>
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _setSubgizmoTransform(
        id: Int32,
        transform: Godot.Transform3D
    ) {
    }

    open func _getSubgizmoTransform(
        id: Int32
    ) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _commitSubgizmos(
        ids: Godot.PackedInt32Array,
        restores: Godot.GodotArray<Godot.Transform3D>,
        cancel: Bool
    ) {
    }

    internal static var __method_binding_add_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2910971437)!
        }
        }
    }()

    public func addLines(
        _ lines: Godot.PackedVector3Array,
        material: Godot.Material?,
        billboard: Bool = false,
        modulate: Godot.Color = .white
    ) {
        lines.withGodotUnsafeRawPointer { __ptr_lines in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        billboard.withGodotUnsafeRawPointer { __ptr_billboard in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_lines, _ptr___ptr_material, __ptr_billboard, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_lines,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_add_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1579955111)!
        }
        }
    }()

    public func addMesh(
        _ mesh: Godot.Mesh?,
        material: Godot.Material? = nil,
        transform: Godot.Transform3D = .identity,
        skeleton: Godot.SkinReference? = nil
    ) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafePointer(to: __ptr_mesh) { _ptr___ptr_mesh in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        withUnsafePointer(to: __ptr_skeleton) { _ptr___ptr_skeleton in
        withUnsafeArgumentPackPointer(_ptr___ptr_mesh, _ptr___ptr_material, __ptr_transform, _ptr___ptr_skeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_add_collision_segments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_segments").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 334873810)!
        }
        }
    }()

    public func addCollisionSegments(
        _ segments: Godot.PackedVector3Array
    ) {
        segments.withGodotUnsafeRawPointer { __ptr_segments in
        withUnsafeArgumentPackPointer(__ptr_segments) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_collision_segments,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_add_collision_triangles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_triangles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 54901064)!
        }
        }
    }()

    public func addCollisionTriangles(
        _ triangles: Godot.TriangleMesh?
    ) {
        triangles.withGodotUnsafeRawPointer { __ptr_triangles in
        withUnsafePointer(to: __ptr_triangles) { _ptr___ptr_triangles in
        withUnsafeArgumentPackPointer(_ptr___ptr_triangles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_collision_triangles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_add_unscaled_billboard: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_unscaled_billboard").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 520007164)!
        }
        }
    }()

    public func addUnscaledBillboard(
        material: Godot.Material?,
        defaultScale: Double = 1,
        modulate: Godot.Color = .white
    ) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        defaultScale.withGodotUnsafeRawPointer { __ptr_defaultScale in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(_ptr___ptr_material, __ptr_defaultScale, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_unscaled_billboard,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_add_handles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_handles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2254560097)!
        }
        }
    }()

    public func addHandles(
        _ handles: Godot.PackedVector3Array,
        material: Godot.Material?,
        ids: Godot.PackedInt32Array,
        billboard: Bool = false,
        secondary: Bool = false
    ) {
        handles.withGodotUnsafeRawPointer { __ptr_handles in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        ids.withGodotUnsafeRawPointer { __ptr_ids in
        billboard.withGodotUnsafeRawPointer { __ptr_billboard in
        secondary.withGodotUnsafeRawPointer { __ptr_secondary in
        withUnsafeArgumentPackPointer(__ptr_handles, _ptr___ptr_material, __ptr_ids, __ptr_billboard, __ptr_secondary) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_handles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_set_node_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()

    public func setNode3D(
        node: Godot.Node?
    ) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_node_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_node_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 151077316)!
        }
        }
    }()

    public func node3D() -> Godot.Node3D? {
        Godot.Node3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4250544552)!
        }
        }
    }()

    public func plugin() -> Godot.EditorNode3DGizmoPlugin? {
        Godot.EditorNode3DGizmoPlugin?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_plugin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func setHidden(
        _ hidden: Bool
    ) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_hidden,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_subgizmo_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_subgizmo_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isSubgizmoSelected(
        id: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_subgizmo_selected,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_subgizmo_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subgizmo_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()

    public func subgizmoSelection() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_subgizmo_selection,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _redraw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._redraw()}
        let _get_handle_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHandleName(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            secondary: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_handle_highlighted_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isHandleHighlighted(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            secondary: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_handle_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHandleValue(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            secondary: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setHandle(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            secondary: Bool.fromGodotUnsafePointer(args[1]!),
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[2]!),
            point: Godot.Vector2.fromGodotUnsafePointer(args[3]!)
        )}
        let _commit_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._commitHandle(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            secondary: Bool.fromGodotUnsafePointer(args[1]!),
            restore: Godot.Variant.fromGodotUnsafePointer(args[2]!),
            cancel: Bool.fromGodotUnsafePointer(args[3]!)
        )}
        let _subgizmos_intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._subgizmosIntersectRay(
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[0]!),
            point: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _subgizmos_intersect_frustum_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._subgizmosIntersectFrustum(
            camera: Godot.Camera3D?.fromGodotUnsafePointer(args[0]!),
            frustum: Godot.GodotArray<Godot.Plane>.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setSubgizmoTransform(
            id: Int32.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform3D.fromGodotUnsafePointer(args[1]!)
        )}
        let _get_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSubgizmoTransform(
            id: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _commit_subgizmos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorNode3DGizmo>.fromOpaque(instancePtr).takeUnretainedValue()
        ._commitSubgizmos(
            ids: Godot.PackedInt32Array.fromGodotUnsafePointer(args[0]!),
            restores: Godot.GodotArray<Godot.Transform3D>.fromGodotUnsafePointer(args[1]!),
            cancel: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        _virtualFunctions = [
            "_redraw" : ("_redraw", _redraw_call),
            "_getHandleName" : ("_get_handle_name", _get_handle_name_call),
            "_isHandleHighlighted" : ("_is_handle_highlighted", _is_handle_highlighted_call),
            "_getHandleValue" : ("_get_handle_value", _get_handle_value_call),
            "_setHandle" : ("_set_handle", _set_handle_call),
            "_commitHandle" : ("_commit_handle", _commit_handle_call),
            "_subgizmosIntersectRay" : ("_subgizmos_intersect_ray", _subgizmos_intersect_ray_call),
            "_subgizmosIntersectFrustum" : ("_subgizmos_intersect_frustum", _subgizmos_intersect_frustum_call),
            "_setSubgizmoTransform" : ("_set_subgizmo_transform", _set_subgizmo_transform_call),
            "_getSubgizmoTransform" : ("_get_subgizmo_transform", _get_subgizmo_transform_call),
            "_commitSubgizmos" : ("_commit_subgizmos", _commit_subgizmos_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}