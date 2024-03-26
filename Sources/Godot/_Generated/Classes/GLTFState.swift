//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class GLTFState: Resource {
    public static let handleBinaryDiscardTextures: Int = 0

    public static let handleBinaryExtractTextures: Int = 1

    public static let handleBinaryEmbedAsBasisu: Int = 2

    public static let handleBinaryEmbedAsUncompressed: Int = 3

    internal static var __method_binding_add_used_extension: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_used_extension").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()

    public func addUsedExtension(
        extensionName: Godot.GodotString,
        required: Bool
    ) {
        extensionName.withGodotUnsafeRawPointer { __ptr_extensionName in
        required.withGodotUnsafeRawPointer { __ptr_required in
        withUnsafeArgumentPackPointer(__ptr_extensionName, __ptr_required) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_used_extension,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_json: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_json").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()

    private func __getJson() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_json,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_json: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_json").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()

    private func __setJson<Value1: VariantStorable, Value2: VariantStorable>(
        _ json: Godot.GodotDictionary<Value1, Value2>
    ) {
        json.withGodotUnsafeRawPointer { __ptr_json in
        withUnsafeArgumentPackPointer(__ptr_json) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_json,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_major_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_major_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getMajorVersion() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_major_version,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_major_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_major_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMajorVersion(
        _ majorVersion: Int32
    ) {
        majorVersion.withGodotUnsafeRawPointer { __ptr_majorVersion in
        withUnsafeArgumentPackPointer(__ptr_majorVersion) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_major_version,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_minor_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minor_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getMinorVersion() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minor_version,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_minor_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minor_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMinorVersion(
        _ minorVersion: Int32
    ) {
        minorVersion.withGodotUnsafeRawPointer { __ptr_minorVersion in
        withUnsafeArgumentPackPointer(__ptr_minorVersion) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_minor_version,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_copyright: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_copyright").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getCopyright() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_copyright,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_copyright: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_copyright").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setCopyright(
        _ copyright: Godot.GodotString
    ) {
        copyright.withGodotUnsafeRawPointer { __ptr_copyright in
        withUnsafeArgumentPackPointer(__ptr_copyright) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_copyright,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_glb_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glb_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2115431945)!
        }
        }
    }()

    private func __getGlbData() -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glb_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_glb_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glb_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2971499966)!
        }
        }
    }()

    private func __setGlbData(
        _ glbData: Godot.PackedByteArray
    ) {
        glbData.withGodotUnsafeRawPointer { __ptr_glbData in
        withUnsafeArgumentPackPointer(__ptr_glbData) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glb_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_use_named_skin_binds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_named_skin_binds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    private func __getUseNamedSkinBinds() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_use_named_skin_binds,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_use_named_skin_binds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_named_skin_binds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseNamedSkinBinds(
        _ useNamedSkinBinds: Bool
    ) {
        useNamedSkinBinds.withGodotUnsafeRawPointer { __ptr_useNamedSkinBinds in
        withUnsafeArgumentPackPointer(__ptr_useNamedSkinBinds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_named_skin_binds,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getNodes() -> Godot.GodotArray<Godot.GLTFNode?> {
        Godot.GodotArray<Godot.GLTFNode?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_nodes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setNodes(
        _ nodes: Godot.GodotArray<Godot.GLTFNode?>
    ) {
        nodes.withGodotUnsafeRawPointer { __ptr_nodes in
        withUnsafeArgumentPackPointer(__ptr_nodes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_nodes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getBuffers() -> Godot.GodotArray<Godot.PackedByteArray> {
        Godot.GodotArray<Godot.PackedByteArray>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_buffers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_buffers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setBuffers(
        _ buffers: Godot.GodotArray<Godot.PackedByteArray>
    ) {
        buffers.withGodotUnsafeRawPointer { __ptr_buffers in
        withUnsafeArgumentPackPointer(__ptr_buffers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_buffers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_buffer_views: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffer_views").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getBufferViews() -> Godot.GodotArray<Godot.GLTFBufferView?> {
        Godot.GodotArray<Godot.GLTFBufferView?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_buffer_views,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_buffer_views: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_buffer_views").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setBufferViews(
        _ bufferViews: Godot.GodotArray<Godot.GLTFBufferView?>
    ) {
        bufferViews.withGodotUnsafeRawPointer { __ptr_bufferViews in
        withUnsafeArgumentPackPointer(__ptr_bufferViews) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_buffer_views,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_accessors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_accessors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getAccessors() -> Godot.GodotArray<Godot.GLTFAccessor?> {
        Godot.GodotArray<Godot.GLTFAccessor?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_accessors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_accessors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_accessors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setAccessors(
        _ accessors: Godot.GodotArray<Godot.GLTFAccessor?>
    ) {
        accessors.withGodotUnsafeRawPointer { __ptr_accessors in
        withUnsafeArgumentPackPointer(__ptr_accessors) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_accessors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_meshes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_meshes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getMeshes() -> Godot.GodotArray<Godot.GLTFMesh?> {
        Godot.GodotArray<Godot.GLTFMesh?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_meshes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_meshes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_meshes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setMeshes(
        _ meshes: Godot.GodotArray<Godot.GLTFMesh?>
    ) {
        meshes.withGodotUnsafeRawPointer { __ptr_meshes in
        withUnsafeArgumentPackPointer(__ptr_meshes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_meshes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_animation_players_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_players_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3744713108)!
        }
        }
    }()

    public func animationPlayersCount(
        idx: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animation_players_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_animation_player: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_player").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 925043400)!
        }
        }
    }()

    public func animationPlayer(
        idx: Int32
    ) -> Godot.AnimationPlayer? {
        Godot.AnimationPlayer?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animation_player,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_materials: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_materials").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getMaterials() -> Godot.GodotArray<Godot.Material?> {
        Godot.GodotArray<Godot.Material?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_materials,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_materials: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_materials").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setMaterials(
        _ materials: Godot.GodotArray<Godot.Material?>
    ) {
        materials.withGodotUnsafeRawPointer { __ptr_materials in
        withUnsafeArgumentPackPointer(__ptr_materials) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_materials,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_scene_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()

    private func __getSceneName() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scene_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_scene_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scene_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setSceneName(
        _ sceneName: Godot.GodotString
    ) {
        sceneName.withGodotUnsafeRawPointer { __ptr_sceneName in
        withUnsafeArgumentPackPointer(__ptr_sceneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scene_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_base_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_base_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()

    private func __getBasePath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_base_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_base_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_base_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setBasePath(
        _ basePath: Godot.GodotString
    ) {
        basePath.withGodotUnsafeRawPointer { __ptr_basePath in
        withUnsafeArgumentPackPointer(__ptr_basePath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_base_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_filename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filename").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getFilename() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_filename,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_filename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filename").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setFilename(
        _ filename: Godot.GodotString
    ) {
        filename.withGodotUnsafeRawPointer { __ptr_filename in
        withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_filename,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_root_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()

    private func __getRootNodes() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_root_nodes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_root_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()

    private func __setRootNodes(
        _ rootNodes: Godot.PackedInt32Array
    ) {
        rootNodes.withGodotUnsafeRawPointer { __ptr_rootNodes in
        withUnsafeArgumentPackPointer(__ptr_rootNodes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_root_nodes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_textures").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getTextures() -> Godot.GodotArray<Godot.GLTFTexture?> {
        Godot.GodotArray<Godot.GLTFTexture?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_textures,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_textures").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setTextures(
        _ textures: Godot.GodotArray<Godot.GLTFTexture?>
    ) {
        textures.withGodotUnsafeRawPointer { __ptr_textures in
        withUnsafeArgumentPackPointer(__ptr_textures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_textures,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_texture_samplers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_samplers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getTextureSamplers() -> Godot.GodotArray<Godot.GLTFTextureSampler?> {
        Godot.GodotArray<Godot.GLTFTextureSampler?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_samplers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_samplers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_samplers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setTextureSamplers(
        _ textureSamplers: Godot.GodotArray<Godot.GLTFTextureSampler?>
    ) {
        textureSamplers.withGodotUnsafeRawPointer { __ptr_textureSamplers in
        withUnsafeArgumentPackPointer(__ptr_textureSamplers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_samplers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_images: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_images").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getImages() -> Godot.GodotArray<Godot.Texture2D?> {
        Godot.GodotArray<Godot.Texture2D?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_images,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_images: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_images").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setImages(
        _ images: Godot.GodotArray<Godot.Texture2D?>
    ) {
        images.withGodotUnsafeRawPointer { __ptr_images in
        withUnsafeArgumentPackPointer(__ptr_images) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_images,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_skins: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skins").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getSkins() -> Godot.GodotArray<Godot.GLTFSkin?> {
        Godot.GodotArray<Godot.GLTFSkin?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skins,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skins: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skins").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setSkins(
        _ skins: Godot.GodotArray<Godot.GLTFSkin?>
    ) {
        skins.withGodotUnsafeRawPointer { __ptr_skins in
        withUnsafeArgumentPackPointer(__ptr_skins) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skins,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_cameras: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cameras").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getCameras() -> Godot.GodotArray<Godot.GLTFCamera?> {
        Godot.GodotArray<Godot.GLTFCamera?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cameras,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_cameras: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cameras").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setCameras(
        _ cameras: Godot.GodotArray<Godot.GLTFCamera?>
    ) {
        cameras.withGodotUnsafeRawPointer { __ptr_cameras in
        withUnsafeArgumentPackPointer(__ptr_cameras) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cameras,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_lights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lights").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getLights() -> Godot.GodotArray<Godot.GLTFLight?> {
        Godot.GodotArray<Godot.GLTFLight?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_lights,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_lights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lights").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setLights(
        _ lights: Godot.GodotArray<Godot.GLTFLight?>
    ) {
        lights.withGodotUnsafeRawPointer { __ptr_lights in
        withUnsafeArgumentPackPointer(__ptr_lights) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_lights,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_unique_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getUniqueNames() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_unique_names,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_unique_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setUniqueNames(
        _ uniqueNames: Godot.GodotArray<Godot.GodotString>
    ) {
        uniqueNames.withGodotUnsafeRawPointer { __ptr_uniqueNames in
        withUnsafeArgumentPackPointer(__ptr_uniqueNames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_unique_names,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_unique_animation_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_animation_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getUniqueAnimationNames() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_unique_animation_names,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_unique_animation_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_animation_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setUniqueAnimationNames(
        _ uniqueAnimationNames: Godot.GodotArray<Godot.GodotString>
    ) {
        uniqueAnimationNames.withGodotUnsafeRawPointer { __ptr_uniqueAnimationNames in
        withUnsafeArgumentPackPointer(__ptr_uniqueAnimationNames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_unique_animation_names,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_skeletons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeletons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getSkeletons() -> Godot.GodotArray<Godot.GLTFSkeleton?> {
        Godot.GodotArray<Godot.GLTFSkeleton?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skeletons,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skeletons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeletons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setSkeletons(
        _ skeletons: Godot.GodotArray<Godot.GLTFSkeleton?>
    ) {
        skeletons.withGodotUnsafeRawPointer { __ptr_skeletons in
        withUnsafeArgumentPackPointer(__ptr_skeletons) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skeletons,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_create_animations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_create_animations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    private func __getCreateAnimations() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_create_animations,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_create_animations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_create_animations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCreateAnimations(
        _ createAnimations: Bool
    ) {
        createAnimations.withGodotUnsafeRawPointer { __ptr_createAnimations in
        withUnsafeArgumentPackPointer(__ptr_createAnimations) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_create_animations,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_animations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    private func __getAnimations() -> Godot.GodotArray<Godot.GLTFAnimation?> {
        Godot.GodotArray<Godot.GLTFAnimation?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animations,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_animations: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_animations").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setAnimations(
        _ animations: Godot.GodotArray<Godot.GLTFAnimation?>
    ) {
        animations.withGodotUnsafeRawPointer { __ptr_animations in
        withUnsafeArgumentPackPointer(__ptr_animations) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_animations,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_scene_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scene_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4253421667)!
        }
        }
    }()

    public func sceneNode(
        idx: Int32
    ) -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scene_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_node_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_node_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1205807060)!
        }
        }
    }()

    public func nodeIndex(
        sceneNode: Godot.Node?
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        sceneNode.withGodotUnsafeRawPointer { __ptr_sceneNode in
        withUnsafePointer(to: __ptr_sceneNode) { _ptr___ptr_sceneNode in
        withUnsafeArgumentPackPointer(_ptr___ptr_sceneNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_node_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_additional_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_additional_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2138907829)!
        }
        }
    }()

    public func additionalData(
        extensionName: Godot.GodotStringName
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        extensionName.withGodotUnsafeRawPointer { __ptr_extensionName in
        withUnsafeArgumentPackPointer(__ptr_extensionName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_additional_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_additional_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_additional_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()

    public func setAdditionalData<Value: VariantStorableIn>(
        extensionName: Godot.GodotStringName,
        additionalData: Value
    ) {
        extensionName.withGodotUnsafeRawPointer { __ptr_extensionName in
        Godot.Variant.withStorageUnsafeRawPointer(to: additionalData) { __ptr_additionalData in
        withUnsafeArgumentPackPointer(__ptr_extensionName, __ptr_additionalData) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_additional_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_handle_binary_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_handle_binary_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getHandleBinaryImage() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_handle_binary_image,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_handle_binary_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_handle_binary_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setHandleBinaryImage(
        method: Int32
    ) {
        method.withGodotUnsafeRawPointer { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_handle_binary_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var json: Godot.AnyGodotDictionary {
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

    public var copyright: Godot.GodotString {
        get {
            __getCopyright()
        }
        set {
            __setCopyright(
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

    public var filename: Godot.GodotString {
        get {
            __getFilename()
        }
        set {
            __setFilename(
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