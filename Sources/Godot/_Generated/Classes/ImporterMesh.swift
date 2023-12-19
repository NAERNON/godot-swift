//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ImporterMesh: Resource {
    private static var __method_binding_add_blend_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_blend_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addBlendShape(name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_blend_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_blend_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func blendShapeCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_blend_shape_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_blend_shape_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_shape_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func blendShapeName(blendShapeIdx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        blendShapeIdx.withGodotUnsafeRawPointer { __ptr_blendShapeIdx in
        withUnsafeArgumentPackPointer(__ptr_blendShapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_blend_shape_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_blend_shape_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_shape_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 227983991)!
        }
        }
    }()
    public func setBlendShapeMode(_ mode: Godot.Mesh.BlendShapeMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_blend_shape_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_blend_shape_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_shape_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 836485024)!
        }
        }
    }()
    public func blendShapeMode() -> Godot.Mesh.BlendShapeMode {
        Godot.Mesh.BlendShapeMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_blend_shape_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_surface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_surface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740448849)!
        }
        }
    }()
    public func addSurface<Value1: VariantStorable, Value2: VariantStorable, Value3: VariantStorable>(primitive: Godot.Mesh.PrimitiveType, arrays: Godot.GodotArray<Value1>, blendShapes: Godot.GodotArray<Godot.AnyGodotArray> = [], lods: Godot.GodotDictionary<Value2, Value3> = [:], material: Godot.Material? = nil, name: Godot.GodotString = "", flags: UInt64 = 0) {
        primitive.withGodotUnsafeRawPointer { __ptr_primitive in
        arrays.withGodotUnsafeRawPointer { __ptr_arrays in
        blendShapes.withGodotUnsafeRawPointer { __ptr_blendShapes in
        lods.withGodotUnsafeRawPointer { __ptr_lods in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        name.withGodotUnsafeRawPointer { __ptr_name in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_primitive, __ptr_arrays, __ptr_blendShapes, __ptr_lods, _ptr___ptr_material, __ptr_name, __ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_surface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    private static var __method_binding_get_surface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func surfaceCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_surface_primitive_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_primitive_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3552571330)!
        }
        }
    }()
    public func surfacePrimitiveType(surfaceIdx: Int32) -> Godot.Mesh.PrimitiveType {
        Godot.Mesh.PrimitiveType.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_primitive_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_surface_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func surfaceName(surfaceIdx: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_surface_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func surfaceArrays(surfaceIdx: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_surface_blend_shape_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_blend_shape_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2345056839)!
        }
        }
    }()
    public func surfaceBlendShapeArrays(surfaceIdx: Int32, blendShapeIdx: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        blendShapeIdx.withGodotUnsafeRawPointer { __ptr_blendShapeIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx, __ptr_blendShapeIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_blend_shape_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_surface_lod_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_lod_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func surfaceLodCount(surfaceIdx: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_lod_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_surface_lod_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_lod_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func surfaceLodSize(surfaceIdx: Int32, lodIdx: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        lodIdx.withGodotUnsafeRawPointer { __ptr_lodIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx, __ptr_lodIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_lod_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_surface_lod_indices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_lod_indices").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265128013)!
        }
        }
    }()
    public func surfaceLodIndices(surfaceIdx: Int32, lodIdx: Int32) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        lodIdx.withGodotUnsafeRawPointer { __ptr_lodIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx, __ptr_lodIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_lod_indices,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_surface_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2897466400)!
        }
        }
    }()
    public func surfaceMaterial(surfaceIdx: Int32) -> Godot.Material? {
        Godot.Material?.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_material,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_surface_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func surfaceFormat(surfaceIdx: Int32) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_surface_format,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_surface_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_surface_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setSurfaceName(surfaceIdx: Int32, name: Godot.GodotString) {
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_surface_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_surface_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_surface_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3671737478)!
        }
        }
    }()
    public func setSurfaceMaterial(surfaceIdx: Int32, material: Godot.Material?) {
        surfaceIdx.withGodotUnsafeRawPointer { __ptr_surfaceIdx in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(__ptr_surfaceIdx, _ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_surface_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_generate_lods: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_lods").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2491878677)!
        }
        }
    }()
    public func generateLods<Value: VariantStorable>(normalMergeAngle: Double, normalSplitAngle: Double, boneTransformArray: Godot.GodotArray<Value>) {
        normalMergeAngle.withGodotUnsafeRawPointer { __ptr_normalMergeAngle in
        normalSplitAngle.withGodotUnsafeRawPointer { __ptr_normalSplitAngle in
        boneTransformArray.withGodotUnsafeRawPointer { __ptr_boneTransformArray in
        withUnsafeArgumentPackPointer(__ptr_normalMergeAngle, __ptr_normalSplitAngle, __ptr_boneTransformArray) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_lods,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1457573577)!
        }
        }
    }()
    public func mesh(_ baseMesh: Godot.ArrayMesh? = nil) -> Godot.ArrayMesh? {
        Godot.ArrayMesh?.fromMutatingGodotUnsafePointer { __temporary in
        baseMesh.withGodotUnsafeRawPointer { __ptr_baseMesh in
        withUnsafePointer(to: __ptr_baseMesh) { _ptr___ptr_baseMesh in
        withUnsafeArgumentPackPointer(_ptr___ptr_baseMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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

    private static var __method_binding_set_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lightmap_size_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    public func setLightmapSizeHint(size: Godot.Vector2i) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_lightmap_size_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lightmap_size_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func lightmapSizeHint() -> Godot.Vector2i {
        Godot.Vector2i.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_lightmap_size_hint,
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