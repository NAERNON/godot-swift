//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFState: Resource {
    private static var __method_binding_add_used_extension: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_used_extension").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()
    public func addUsedExtension(extensionName: Godot.GodotString, required: Bool) {
        extensionName.withUnsafeRawPointer { (__ptr_extensionName) in
            withUnsafePointer(to: required) { (__ptr_required) in
                withUnsafeArgumentPackPointer(__ptr_extensionName, __ptr_required) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_used_extension,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_json: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_json").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()
    private func __getJson() -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_json,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_json: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_json").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setJson<Value1: VariantStorable, Value2: VariantStorable>(_ json: Godot.GodotDictionary<Value1, Value2>) {
        json.withUnsafeRawPointer { (__ptr_json) in
            withUnsafeArgumentPackPointer(__ptr_json) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_json,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_major_version: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_major_version").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    private func __getMajorVersion() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_major_version,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_major_version: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_major_version").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMajorVersion(_ majorVersion: Int32) {
        withUnsafePointer(to: majorVersion) { (__ptr_majorVersion) in
            withUnsafeArgumentPackPointer(__ptr_majorVersion) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_major_version,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_minor_version: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minor_version").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    private func __getMinorVersion() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_minor_version,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_minor_version: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minor_version").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMinorVersion(_ minorVersion: Int32) {
        withUnsafePointer(to: minorVersion) { (__ptr_minorVersion) in
            withUnsafeArgumentPackPointer(__ptr_minorVersion) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_minor_version,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_glb_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glb_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2115431945)!
        }
        }
    }()
    private func __getGlbData() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_glb_data,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_glb_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glb_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2971499966)!
        }
        }
    }()
    private func __setGlbData(_ glbData: Godot.PackedByteArray) {
        glbData.withUnsafeRawPointer { (__ptr_glbData) in
            withUnsafeArgumentPackPointer(__ptr_glbData) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_glb_data,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_use_named_skin_binds: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_named_skin_binds").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __getUseNamedSkinBinds() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_use_named_skin_binds,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_use_named_skin_binds: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_named_skin_binds").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseNamedSkinBinds(_ useNamedSkinBinds: Bool) {
        withUnsafePointer(to: useNamedSkinBinds) { (__ptr_useNamedSkinBinds) in
            withUnsafeArgumentPackPointer(__ptr_useNamedSkinBinds) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_use_named_skin_binds,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getNodes() -> Godot.GodotArray<Godot.GLTFNode?> {
        let __temporary = Godot.GodotArray<Godot.GLTFNode?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_nodes,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setNodes(_ nodes: Godot.GodotArray<Godot.GLTFNode?>) {
        nodes.withUnsafeRawPointer { (__ptr_nodes) in
            withUnsafeArgumentPackPointer(__ptr_nodes) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_nodes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_buffers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getBuffers() -> Godot.GodotArray<Godot.PackedByteArray> {
        let __temporary = Godot.GodotArray<Godot.PackedByteArray>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_buffers,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_buffers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_buffers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setBuffers(_ buffers: Godot.GodotArray<Godot.PackedByteArray>) {
        buffers.withUnsafeRawPointer { (__ptr_buffers) in
            withUnsafeArgumentPackPointer(__ptr_buffers) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_buffers,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_buffer_views: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffer_views").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getBufferViews() -> Godot.GodotArray<Godot.GLTFBufferView?> {
        let __temporary = Godot.GodotArray<Godot.GLTFBufferView?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_buffer_views,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_buffer_views: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_buffer_views").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setBufferViews(_ bufferViews: Godot.GodotArray<Godot.GLTFBufferView?>) {
        bufferViews.withUnsafeRawPointer { (__ptr_bufferViews) in
            withUnsafeArgumentPackPointer(__ptr_bufferViews) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_buffer_views,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_accessors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accessors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getAccessors() -> Godot.GodotArray<Godot.GLTFAccessor?> {
        let __temporary = Godot.GodotArray<Godot.GLTFAccessor?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_accessors,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_accessors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_accessors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setAccessors(_ accessors: Godot.GodotArray<Godot.GLTFAccessor?>) {
        accessors.withUnsafeRawPointer { (__ptr_accessors) in
            withUnsafeArgumentPackPointer(__ptr_accessors) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_accessors,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_meshes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_meshes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getMeshes() -> Godot.GodotArray<Godot.GLTFMesh?> {
        let __temporary = Godot.GodotArray<Godot.GLTFMesh?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_meshes,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_meshes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_meshes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setMeshes(_ meshes: Godot.GodotArray<Godot.GLTFMesh?>) {
        meshes.withUnsafeRawPointer { (__ptr_meshes) in
            withUnsafeArgumentPackPointer(__ptr_meshes) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_meshes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_animation_players_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_players_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()
    public func animationPlayersCount(idx: Int32) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: idx) { (__ptr_idx) in
            withUnsafeArgumentPackPointer(__ptr_idx) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_animation_players_count,
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

    private static var __method_binding_get_animation_player: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_player").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 925043400)!
        }
        }
    }()
    public func animationPlayer(idx: Int32) -> Godot.AnimationPlayer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: idx) { (__ptr_idx) in
            withUnsafeArgumentPackPointer(__ptr_idx) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_animation_player,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.AnimationPlayer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_materials: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_materials").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getMaterials() -> Godot.GodotArray<Godot.Material?> {
        let __temporary = Godot.GodotArray<Godot.Material?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_materials,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_materials: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_materials").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setMaterials(_ materials: Godot.GodotArray<Godot.Material?>) {
        materials.withUnsafeRawPointer { (__ptr_materials) in
            withUnsafeArgumentPackPointer(__ptr_materials) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_materials,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_scene_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    private func __getSceneName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_scene_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_scene_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scene_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setSceneName(_ sceneName: Godot.GodotString) {
        sceneName.withUnsafeRawPointer { (__ptr_sceneName) in
            withUnsafeArgumentPackPointer(__ptr_sceneName) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_scene_name,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_base_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_base_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    private func __getBasePath() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_base_path,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_base_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_base_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setBasePath(_ basePath: Godot.GodotString) {
        basePath.withUnsafeRawPointer { (__ptr_basePath) in
            withUnsafeArgumentPackPointer(__ptr_basePath) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_base_path,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_root_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getRootNodes() -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_root_nodes,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_root_nodes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_nodes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setRootNodes(_ rootNodes: Godot.PackedInt32Array) {
        rootNodes.withUnsafeRawPointer { (__ptr_rootNodes) in
            withUnsafeArgumentPackPointer(__ptr_rootNodes) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_root_nodes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_textures: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_textures").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getTextures() -> Godot.GodotArray<Godot.GLTFTexture?> {
        let __temporary = Godot.GodotArray<Godot.GLTFTexture?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_textures,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_textures: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_textures").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setTextures(_ textures: Godot.GodotArray<Godot.GLTFTexture?>) {
        textures.withUnsafeRawPointer { (__ptr_textures) in
            withUnsafeArgumentPackPointer(__ptr_textures) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_textures,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_samplers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_samplers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getTextureSamplers() -> Godot.GodotArray<Godot.GLTFTextureSampler?> {
        let __temporary = Godot.GodotArray<Godot.GLTFTextureSampler?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_samplers,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_texture_samplers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_samplers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setTextureSamplers(_ textureSamplers: Godot.GodotArray<Godot.GLTFTextureSampler?>) {
        textureSamplers.withUnsafeRawPointer { (__ptr_textureSamplers) in
            withUnsafeArgumentPackPointer(__ptr_textureSamplers) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_samplers,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_images: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_images").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getImages() -> Godot.GodotArray<Godot.Texture2D?> {
        let __temporary = Godot.GodotArray<Godot.Texture2D?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_images,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_images: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_images").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setImages(_ images: Godot.GodotArray<Godot.Texture2D?>) {
        images.withUnsafeRawPointer { (__ptr_images) in
            withUnsafeArgumentPackPointer(__ptr_images) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_images,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_skins: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skins").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getSkins() -> Godot.GodotArray<Godot.GLTFSkin?> {
        let __temporary = Godot.GodotArray<Godot.GLTFSkin?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_skins,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_skins: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skins").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setSkins(_ skins: Godot.GodotArray<Godot.GLTFSkin?>) {
        skins.withUnsafeRawPointer { (__ptr_skins) in
            withUnsafeArgumentPackPointer(__ptr_skins) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_skins,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_cameras: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cameras").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getCameras() -> Godot.GodotArray<Godot.GLTFCamera?> {
        let __temporary = Godot.GodotArray<Godot.GLTFCamera?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_cameras,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_cameras: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cameras").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setCameras(_ cameras: Godot.GodotArray<Godot.GLTFCamera?>) {
        cameras.withUnsafeRawPointer { (__ptr_cameras) in
            withUnsafeArgumentPackPointer(__ptr_cameras) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_cameras,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_lights: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lights").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getLights() -> Godot.GodotArray<Godot.GLTFLight?> {
        let __temporary = Godot.GodotArray<Godot.GLTFLight?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_lights,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_lights: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lights").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setLights(_ lights: Godot.GodotArray<Godot.GLTFLight?>) {
        lights.withUnsafeRawPointer { (__ptr_lights) in
            withUnsafeArgumentPackPointer(__ptr_lights) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_lights,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_unique_names: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_names").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getUniqueNames() -> Godot.GodotArray<Godot.GodotString> {
        let __temporary = Godot.GodotArray<Godot.GodotString>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_unique_names,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_unique_names: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_names").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setUniqueNames(_ uniqueNames: Godot.GodotArray<Godot.GodotString>) {
        uniqueNames.withUnsafeRawPointer { (__ptr_uniqueNames) in
            withUnsafeArgumentPackPointer(__ptr_uniqueNames) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_unique_names,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_unique_animation_names: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_animation_names").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getUniqueAnimationNames() -> Godot.GodotArray<Godot.GodotString> {
        let __temporary = Godot.GodotArray<Godot.GodotString>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_unique_animation_names,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_unique_animation_names: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_animation_names").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setUniqueAnimationNames(_ uniqueAnimationNames: Godot.GodotArray<Godot.GodotString>) {
        uniqueAnimationNames.withUnsafeRawPointer { (__ptr_uniqueAnimationNames) in
            withUnsafeArgumentPackPointer(__ptr_uniqueAnimationNames) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_unique_animation_names,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_skeletons: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeletons").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getSkeletons() -> Godot.GodotArray<Godot.GLTFSkeleton?> {
        let __temporary = Godot.GodotArray<Godot.GLTFSkeleton?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_skeletons,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_skeletons: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeletons").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setSkeletons(_ skeletons: Godot.GodotArray<Godot.GLTFSkeleton?>) {
        skeletons.withUnsafeRawPointer { (__ptr_skeletons) in
            withUnsafeArgumentPackPointer(__ptr_skeletons) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_skeletons,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_create_animations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_create_animations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __getCreateAnimations() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_create_animations,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_create_animations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_create_animations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCreateAnimations(_ createAnimations: Bool) {
        withUnsafePointer(to: createAnimations) { (__ptr_createAnimations) in
            withUnsafeArgumentPackPointer(__ptr_createAnimations) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_create_animations,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_animations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getAnimations() -> Godot.GodotArray<Godot.GLTFAnimation?> {
        let __temporary = Godot.GodotArray<Godot.GLTFAnimation?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_animations,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_animations: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animations").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setAnimations(_ animations: Godot.GodotArray<Godot.GLTFAnimation?>) {
        animations.withUnsafeRawPointer { (__ptr_animations) in
            withUnsafeArgumentPackPointer(__ptr_animations) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_animations,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_scene_node: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_node").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4253421667)!
        }
        }
    }()
    public func sceneNode(idx: Int32) -> Godot.Node? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: idx) { (__ptr_idx) in
            withUnsafeArgumentPackPointer(__ptr_idx) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_scene_node,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Node.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_node_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1205807060)!
        }
        }
    }()
    public func nodeIndex(sceneNode: Godot.Node?) -> Int32 {
        var __temporary = Int32()
        sceneNode.withUnsafeRawPointer { (__ptr_sceneNode) in
            withUnsafePointer(to: __ptr_sceneNode) { (_ptr___ptr_sceneNode) in
                withUnsafeArgumentPackPointer(_ptr___ptr_sceneNode) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_node_index,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_additional_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_additional_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2138907829)!
        }
        }
    }()
    public func additionalData(extensionName: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        extensionName.withUnsafeRawPointer { (__ptr_extensionName) in
            withUnsafeArgumentPackPointer(__ptr_extensionName) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_additional_data,
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

    private static var __method_binding_set_additional_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_additional_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func setAdditionalData<Value: VariantStorableIn>(extensionName: Godot.GodotStringName, additionalData: Value) {
        extensionName.withUnsafeRawPointer { (__ptr_extensionName) in
            Godot.Variant.withStorageUnsafeRawPointer(to: additionalData) { (__ptr_additionalData) in
                withUnsafeArgumentPackPointer(__ptr_extensionName, __ptr_additionalData) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_additional_data,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_handle_binary_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_handle_binary_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    private func __getHandleBinaryImage() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_handle_binary_image,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_handle_binary_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_handle_binary_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setHandleBinaryImage(method: Int32) {
        withUnsafePointer(to: method) { (__ptr_method) in
            withUnsafeArgumentPackPointer(__ptr_method) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_handle_binary_image,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    public var json: Godot.GodotDictionary<Variant, Variant> {
        get {
            __getJson()
        }
        set {
            __setJson(
                newValue
            )
        }
    }

    public var majorVersion: Int32 {
        get {
            __getMajorVersion()
        }
        set {
            __setMajorVersion(
                newValue
            )
        }
    }

    public var minorVersion: Int32 {
        get {
            __getMinorVersion()
        }
        set {
            __setMinorVersion(
                newValue
            )
        }
    }

    public var glbData: Godot.PackedByteArray {
        get {
            __getGlbData()
        }
        set {
            __setGlbData(
                newValue
            )
        }
    }

    public var useNamedSkinBinds: Bool {
        get {
            __getUseNamedSkinBinds()
        }
        set {
            __setUseNamedSkinBinds(
                newValue
            )
        }
    }

    public var nodes: Godot.GodotArray<Godot.GLTFNode?> {
        get {
            __getNodes()
        }
        set {
            __setNodes(
                newValue
            )
        }
    }

    public var buffers: Godot.GodotArray<Godot.PackedByteArray> {
        get {
            __getBuffers()
        }
        set {
            __setBuffers(
                newValue
            )
        }
    }

    public var bufferViews: Godot.GodotArray<Godot.GLTFBufferView?> {
        get {
            __getBufferViews()
        }
        set {
            __setBufferViews(
                newValue
            )
        }
    }

    public var accessors: Godot.GodotArray<Godot.GLTFAccessor?> {
        get {
            __getAccessors()
        }
        set {
            __setAccessors(
                newValue
            )
        }
    }

    public var meshes: Godot.GodotArray<Godot.GLTFMesh?> {
        get {
            __getMeshes()
        }
        set {
            __setMeshes(
                newValue
            )
        }
    }

    public var materials: Godot.GodotArray<Godot.Material?> {
        get {
            __getMaterials()
        }
        set {
            __setMaterials(
                newValue
            )
        }
    }

    public var sceneName: Godot.GodotString {
        get {
            __getSceneName()
        }
        set {
            __setSceneName(
                newValue
            )
        }
    }

    public var basePath: Godot.GodotString {
        get {
            __getBasePath()
        }
        set {
            __setBasePath(
                newValue
            )
        }
    }

    public var rootNodes: Godot.PackedInt32Array {
        get {
            __getRootNodes()
        }
        set {
            __setRootNodes(
                newValue
            )
        }
    }

    public var textures: Godot.GodotArray<Godot.GLTFTexture?> {
        get {
            __getTextures()
        }
        set {
            __setTextures(
                newValue
            )
        }
    }

    public var textureSamplers: Godot.GodotArray<Godot.GLTFTextureSampler?> {
        get {
            __getTextureSamplers()
        }
        set {
            __setTextureSamplers(
                newValue
            )
        }
    }

    public var images: Godot.GodotArray<Godot.Texture2D?> {
        get {
            __getImages()
        }
        set {
            __setImages(
                newValue
            )
        }
    }

    public var skins: Godot.GodotArray<Godot.GLTFSkin?> {
        get {
            __getSkins()
        }
        set {
            __setSkins(
                newValue
            )
        }
    }

    public var cameras: Godot.GodotArray<Godot.GLTFCamera?> {
        get {
            __getCameras()
        }
        set {
            __setCameras(
                newValue
            )
        }
    }

    public var lights: Godot.GodotArray<Godot.GLTFLight?> {
        get {
            __getLights()
        }
        set {
            __setLights(
                newValue
            )
        }
    }

    public var uniqueNames: Godot.GodotArray<Godot.GodotString> {
        get {
            __getUniqueNames()
        }
        set {
            __setUniqueNames(
                newValue
            )
        }
    }

    public var uniqueAnimationNames: Godot.GodotArray<Godot.GodotString> {
        get {
            __getUniqueAnimationNames()
        }
        set {
            __setUniqueAnimationNames(
                newValue
            )
        }
    }

    public var skeletons: Godot.GodotArray<Godot.GLTFSkeleton?> {
        get {
            __getSkeletons()
        }
        set {
            __setSkeletons(
                newValue
            )
        }
    }

    public var createAnimations: Bool {
        get {
            __getCreateAnimations()
        }
        set {
            __setCreateAnimations(
                newValue
            )
        }
    }

    public var animations: Godot.GodotArray<Godot.GLTFAnimation?> {
        get {
            __getAnimations()
        }
        set {
            __setAnimations(
                newValue
            )
        }
    }

    public var handleBinaryImage: Int32 {
        get {
            __getHandleBinaryImage()
        }
        set {
            __setHandleBinaryImage(
                method: newValue
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