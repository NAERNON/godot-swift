//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorNode3DGizmo: Node3DGizmo {
    open func _redraw() {
    }

    open func _getHandleName(id: Int32, secondary: Bool) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isHandleHighlighted(id: Int32, secondary: Bool) -> Bool {
        Bool()
    }

    open func _getHandleValue(id: Int32, secondary: Bool) -> Godot.Variant {
        nil
    }

    open func _setHandle(id: Int32, secondary: Bool, camera: Godot.Camera3D?, point: Godot.Vector2) {
    }

    open func _commitHandle(id: Int32, secondary: Bool, restore: Godot.Variant, cancel: Bool) {
    }

    open func _subgizmosIntersectRay(camera: Godot.Camera3D?, point: Godot.Vector2) -> Int32 {
        Int32()
    }

    open func _subgizmosIntersectFrustum(camera: Godot.Camera3D?, frustum: Godot.GodotTypedArray<Godot.Plane>) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _setSubgizmoTransform(id: Int32, transform: Godot.Transform3D) {
    }

    open func _getSubgizmoTransform(id: Int32) -> Godot.Transform3D {
        Godot.Transform3D()
    }

    open func _commitSubgizmos(ids: Godot.PackedInt32Array, restores: Godot.GodotTypedArray<Godot.Transform3D>, cancel: Bool) {
    }

    private static var __method_binding_add_lines: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_lines").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 302451090)!
        }
        }
    }()
    public func addLines(_ lines: Godot.PackedVector3Array, material: Godot.Material?, billboard: Bool = false, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        lines.withUnsafeRawPointer { (__ptr_lines) in
            material.withUnsafeRawPointer { (__ptr_material) in
                withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                    withUnsafePointer(to: billboard) { (__ptr_billboard) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafeArgumentPackPointer(__ptr_lines, _ptr___ptr_material, __ptr_billboard, __ptr_modulate) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_add_lines,
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

    private static var __method_binding_add_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1868867708)!
        }
        }
    }()
    public func addMesh(_ mesh: Godot.Mesh?, material: Godot.Material? = nil, transform: Godot.Transform3D = Transform3D(xAxisX: 1, xAxisY: 0, xAxisZ: 0, yAxisX: 0, yAxisY: 1, yAxisZ: 0, zAxisX: 0, zAxisY: 0, zAxisZ: 1, originX: 0, originY: 0, originZ: 0), skeleton: Godot.SkinReference? = nil) {
        mesh.withUnsafeRawPointer { (__ptr_mesh) in
            withUnsafePointer(to: __ptr_mesh) { (_ptr___ptr_mesh) in
                material.withUnsafeRawPointer { (__ptr_material) in
                    withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                        withUnsafePointer(to: transform) { (__ptr_transform) in
                            skeleton.withUnsafeRawPointer { (__ptr_skeleton) in
                                withUnsafePointer(to: __ptr_skeleton) { (_ptr___ptr_skeleton) in
                                    withUnsafeArgumentPackPointer(_ptr___ptr_mesh, _ptr___ptr_material, __ptr_transform, _ptr___ptr_skeleton) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_add_mesh,
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
        }
    }

    private static var __method_binding_add_collision_segments: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_segments").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 334873810)!
        }
        }
    }()
    public func addCollisionSegments(_ segments: Godot.PackedVector3Array) {
        segments.withUnsafeRawPointer { (__ptr_segments) in
            withUnsafeArgumentPackPointer(__ptr_segments) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_collision_segments,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_collision_triangles: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_collision_triangles").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 54901064)!
        }
        }
    }()
    public func addCollisionTriangles(_ triangles: Godot.TriangleMesh?) {
        triangles.withUnsafeRawPointer { (__ptr_triangles) in
            withUnsafePointer(to: __ptr_triangles) { (_ptr___ptr_triangles) in
                withUnsafeArgumentPackPointer(_ptr___ptr_triangles) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_collision_triangles,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_unscaled_billboard: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_unscaled_billboard").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3719733075)!
        }
        }
    }()
    public func addUnscaledBillboard(material: Godot.Material?, defaultScale: Double = 1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        material.withUnsafeRawPointer { (__ptr_material) in
            withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                withUnsafePointer(to: defaultScale) { (__ptr_defaultScale) in
                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_material, __ptr_defaultScale, __ptr_modulate) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_unscaled_billboard,
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

    private static var __method_binding_add_handles: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_handles").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2254560097)!
        }
        }
    }()
    public func addHandles(_ handles: Godot.PackedVector3Array, material: Godot.Material?, ids: Godot.PackedInt32Array, billboard: Bool = false, secondary: Bool = false) {
        handles.withUnsafeRawPointer { (__ptr_handles) in
            material.withUnsafeRawPointer { (__ptr_material) in
                withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                    ids.withUnsafeRawPointer { (__ptr_ids) in
                        withUnsafePointer(to: billboard) { (__ptr_billboard) in
                            withUnsafePointer(to: secondary) { (__ptr_secondary) in
                                withUnsafeArgumentPackPointer(__ptr_handles, _ptr___ptr_material, __ptr_ids, __ptr_billboard, __ptr_secondary) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_add_handles,
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
    }

    private static var __method_binding_set_node_3d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_node_3d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func setNode3D(node: Godot.Node?) {
        node.withUnsafeRawPointer { (__ptr_node) in
            withUnsafePointer(to: __ptr_node) { (_ptr___ptr_node) in
                withUnsafeArgumentPackPointer(_ptr___ptr_node) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_node_3d,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_node_3d: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_3d").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 151077316)!
        }
        }
    }()
    public func node3D() -> Godot.Node3D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_node_3d,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Node3D.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4250544552)!
        }
        }
    }()
    public func plugin() -> Godot.EditorNode3DGizmoPlugin? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_plugin,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.EditorNode3DGizmoPlugin.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_hidden: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hidden").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setHidden(_ hidden: Bool) {
        withUnsafePointer(to: hidden) { (__ptr_hidden) in
            withUnsafeArgumentPackPointer(__ptr_hidden) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_hidden,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_subgizmo_selected: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_subgizmo_selected").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isSubgizmoSelected(id: Int32) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_subgizmo_selected,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_subgizmo_selection: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subgizmo_selection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func subgizmoSelection() -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_subgizmo_selection,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
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
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._redraw()}
        let _get_handle_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getHandleName(
            id: args[0]!.load(as: Int32.self),
            secondary: args[1]!.load(as: Bool.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_handle_highlighted_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isHandleHighlighted(
            id: args[0]!.load(as: Int32.self),
            secondary: args[1]!.load(as: Bool.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_handle_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getHandleValue(
            id: args[0]!.load(as: Int32.self),
            secondary: args[1]!.load(as: Bool.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setHandle(
            id: args[0]!.load(as: Int32.self),
            secondary: args[1]!.load(as: Bool.self),
            camera: Godot.Camera3D.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!)),
            point: args[3]!.load(as: Godot.Vector2.self)
        )}
        let _commit_handle_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._commitHandle(
            id: args[0]!.load(as: Int32.self),
            secondary: args[1]!.load(as: Bool.self),
            restore: Godot.Variant(godotExtensionPointer: args[2]!),
            cancel: args[3]!.load(as: Bool.self)
        )}
        let _subgizmos_intersect_ray_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._subgizmosIntersectRay(
            camera: Godot.Camera3D.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            point: args[1]!.load(as: Godot.Vector2.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _subgizmos_intersect_frustum_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._subgizmosIntersectFrustum(
            camera: Godot.Camera3D.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            frustum: Godot.GodotTypedArray<Godot.Plane>(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setSubgizmoTransform(
            id: args[0]!.load(as: Int32.self),
            transform: args[1]!.load(as: Godot.Transform3D.self)
        )}
        let _get_subgizmo_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getSubgizmoTransform(
            id: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Transform3D.self).pointee = returnValue}
        let _commit_subgizmos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorNode3DGizmo> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._commitSubgizmos(
            ids: Godot.PackedInt32Array(godotExtensionPointer: args[0]!),
            restores: Godot.GodotTypedArray<Godot.Transform3D>(godotExtensionPointer: args[1]!),
            cancel: args[2]!.load(as: Bool.self)
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