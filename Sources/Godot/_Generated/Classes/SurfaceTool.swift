//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class SurfaceTool: RefCounted {
    public enum CustomFormat: UInt32, GodotEnum {
        case rgba8Unorm = 0
        case rgba8Snorm = 1
        case rgHalf = 2
        case rgbaHalf = 3
        case rFloat = 4
        case rgFloat = 5
        case rgbFloat = 6
        case rgbaFloat = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Rgba8 Unorm", 0),
            ("Rgba8 Snorm", 1),
            ("Rg Half", 2),
            ("Rgba Half", 3),
            ("R Float", 4),
            ("Rg Float", 5),
            ("Rgb Float", 6),
            ("Rgba Float", 7),
            ("Max", 8),]
        }
    }
    public enum SkinWeightCount: UInt32, GodotEnum {
        case skin4Weights = 0
        case skin8Weights = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Skin4 Weights", 0),
            ("Skin8 Weights", 1),]
        }
    }

    private static var __method_binding_set_skin_weight_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skin_weight_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 618679515)!
        }
        }
    }()
    public func setSkinWeightCount(_ count: Godot.SurfaceTool.SkinWeightCount) {
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_skin_weight_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_skin_weight_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skin_weight_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1072401130)!
        }
        }
    }()
    public func skinWeightCount() -> Godot.SurfaceTool.SkinWeightCount {
        Godot.SurfaceTool.SkinWeightCount.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_skin_weight_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_custom_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4087759856)!
        }
        }
    }()
    public func setCustomFormat(channelIndex: Int32, format: Godot.SurfaceTool.CustomFormat) {
        channelIndex.withGodotUnsafeRawPointer { __ptr_channelIndex in
        format.withGodotUnsafeRawPointer { __ptr_format in
        withUnsafeArgumentPackPointer(__ptr_channelIndex, __ptr_format) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_custom_format,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_custom_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 839863283)!
        }
        }
    }()
    public func customFormat(channelIndex: Int32) -> Godot.SurfaceTool.CustomFormat {
        Godot.SurfaceTool.CustomFormat.fromMutatingGodotUnsafePointer { __temporary in
        channelIndex.withGodotUnsafeRawPointer { __ptr_channelIndex in
        withUnsafeArgumentPackPointer(__ptr_channelIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_custom_format,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "begin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2230304113)!
        }
        }
    }()
    public func begin(primitive: Godot.Mesh.PrimitiveType) {
        primitive.withGodotUnsafeRawPointer { __ptr_primitive in
        withUnsafeArgumentPackPointer(__ptr_primitive) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_begin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_vertex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_vertex").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func addVertex(_ vertex: Godot.Vector3) {
        vertex.withGodotUnsafeRawPointer { __ptr_vertex in
        withUnsafeArgumentPackPointer(__ptr_vertex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_vertex,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    public func setColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_normal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_normal").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    public func setNormal(_ normal: Godot.Vector3) {
        normal.withGodotUnsafeRawPointer { __ptr_normal in
        withUnsafeArgumentPackPointer(__ptr_normal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_normal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_tangent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tangent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3505987427)!
        }
        }
    }()
    public func setTangent(_ tangent: Godot.Plane) {
        tangent.withGodotUnsafeRawPointer { __ptr_tangent in
        withUnsafeArgumentPackPointer(__ptr_tangent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tangent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func setUv(_ uv: Godot.Vector2) {
        uv.withGodotUnsafeRawPointer { __ptr_uv in
        withUnsafeArgumentPackPointer(__ptr_uv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_uv2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv2").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func setUv2(_ uv2: Godot.Vector2) {
        uv2.withGodotUnsafeRawPointer { __ptr_uv2 in
        withUnsafeArgumentPackPointer(__ptr_uv2) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv2,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_bones: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bones").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    public func setBones(_ bones: Godot.PackedInt32Array) {
        bones.withGodotUnsafeRawPointer { __ptr_bones in
        withUnsafeArgumentPackPointer(__ptr_bones) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_bones,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_weights: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_weights").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2899603908)!
        }
        }
    }()
    public func setWeights(_ weights: Godot.PackedFloat32Array) {
        weights.withGodotUnsafeRawPointer { __ptr_weights in
        withUnsafeArgumentPackPointer(__ptr_weights) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_weights,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_custom: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_custom").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setCustom(channelIndex: Int32, customColor: Godot.Color) {
        channelIndex.withGodotUnsafeRawPointer { __ptr_channelIndex in
        customColor.withGodotUnsafeRawPointer { __ptr_customColor in
        withUnsafeArgumentPackPointer(__ptr_channelIndex, __ptr_customColor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_custom,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_smooth_group: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_smooth_group").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setSmoothGroup(index: UInt32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_smooth_group,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_triangle_fan: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_triangle_fan").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 297960074)!
        }
        }
    }()
    public func addTriangleFan(vertices: Godot.PackedVector3Array, uvs: Godot.PackedVector2Array = PackedVector2Array(), colors: Godot.PackedColorArray = PackedColorArray(), uv2s: Godot.PackedVector2Array = PackedVector2Array(), normals: Godot.PackedVector3Array = PackedVector3Array(), tangents: Godot.GodotArray<Godot.Plane> = []) {
        vertices.withGodotUnsafeRawPointer { __ptr_vertices in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uv2s.withGodotUnsafeRawPointer { __ptr_uv2s in
        normals.withGodotUnsafeRawPointer { __ptr_normals in
        tangents.withGodotUnsafeRawPointer { __ptr_tangents in
        withUnsafeArgumentPackPointer(__ptr_vertices, __ptr_uvs, __ptr_colors, __ptr_uv2s, __ptr_normals, __ptr_tangents) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_triangle_fan,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_add_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addIndex(_ index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func index() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_index,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_deindex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "deindex").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func deindex() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_deindex,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_generate_normals: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_normals").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()
    public func generateNormals(flip: Bool = false) {
        flip.withGodotUnsafeRawPointer { __ptr_flip in
        withUnsafeArgumentPackPointer(__ptr_flip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_normals,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_generate_tangents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_tangents").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func generateTangents() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_tangents,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_optimize_indices_for_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "optimize_indices_for_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func optimizeIndicesForCache() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_optimize_indices_for_cache,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()
    public func aabb() -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_aabb,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_generate_lod: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_lod").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1894448909)!
        }
        }
    }()
    public func generateLod(ndThreshold: Double, targetIndexCount: Int32 = 3) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        ndThreshold.withGodotUnsafeRawPointer { __ptr_ndThreshold in
        targetIndexCount.withGodotUnsafeRawPointer { __ptr_targetIndexCount in
        withUnsafeArgumentPackPointer(__ptr_ndThreshold, __ptr_targetIndexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_lod,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2757459619)!
        }
        }
    }()
    public func setMaterial(_ material: Godot.Material?) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_primitive_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primitive_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 768822145)!
        }
        }
    }()
    public func primitiveType() -> Godot.Mesh.PrimitiveType {
        Godot.Mesh.PrimitiveType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_primitive_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_create_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1767024570)!
        }
        }
    }()
    public func createFrom(existing: Godot.Mesh?, surface: Int32) {
        existing.withGodotUnsafeRawPointer { __ptr_existing in
        withUnsafePointer(to: __ptr_existing) { _ptr___ptr_existing in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(_ptr___ptr_existing, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_from,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_create_from_blend_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_blend_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1306185582)!
        }
        }
    }()
    public func createFromBlendShape(existing: Godot.Mesh?, surface: Int32, blendShape: Godot.GodotString) {
        existing.withGodotUnsafeRawPointer { __ptr_existing in
        withUnsafePointer(to: __ptr_existing) { _ptr___ptr_existing in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        blendShape.withGodotUnsafeRawPointer { __ptr_blendShape in
        withUnsafeArgumentPackPointer(_ptr___ptr_existing, __ptr_surface, __ptr_blendShape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_from_blend_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_append_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2217967155)!
        }
        }
    }()
    public func appendFrom(existing: Godot.Mesh?, surface: Int32, transform: Godot.Transform3D) {
        existing.withGodotUnsafeRawPointer { __ptr_existing in
        withUnsafePointer(to: __ptr_existing) { _ptr___ptr_existing in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(_ptr___ptr_existing, __ptr_surface, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_append_from,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_commit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "commit").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4107864055)!
        }
        }
    }()
    public func commit(existing: Godot.ArrayMesh? = nil, flags: UInt32 = 0) -> Godot.ArrayMesh? {
        Godot.ArrayMesh?.fromMutatingGodotUnsafePointer { __temporary in
        existing.withGodotUnsafeRawPointer { __ptr_existing in
        withUnsafePointer(to: __ptr_existing) { _ptr___ptr_existing in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(_ptr___ptr_existing, __ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_commit,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_commit_to_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "commit_to_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func commitToArrays() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_commit_to_arrays,
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }