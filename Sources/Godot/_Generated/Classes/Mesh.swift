//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Mesh: Resource {
    public enum PrimitiveType: UInt32, GodotEnum {
        case points = 0
        case lines = 1
        case lineStrip = 2
        case triangles = 3
        case triangleStrip = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Points", 0),
            ("Lines", 1),
            ("Line Strip", 2),
            ("Triangles", 3),
            ("Triangle Strip", 4),]
        }
    }

    public enum ArrayType: UInt32, GodotEnum {
        case vertex = 0
        case normal = 1
        case tangent = 2
        case color = 3
        case texUv = 4
        case texUv2 = 5
        case custom0 = 6
        case custom1 = 7
        case custom2 = 8
        case custom3 = 9
        case bones = 10
        case weights = 11
        case index = 12
        case max = 13

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Vertex", 0),
            ("Normal", 1),
            ("Tangent", 2),
            ("Color", 3),
            ("Tex Uv", 4),
            ("Tex Uv2", 5),
            ("Custom0", 6),
            ("Custom1", 7),
            ("Custom2", 8),
            ("Custom3", 9),
            ("Bones", 10),
            ("Weights", 11),
            ("Index", 12),
            ("Max", 13),]
        }
    }

    public enum ArrayCustomFormat: UInt32, GodotEnum {
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

    public struct ArrayFormat: GodotOptionSet {
        public let rawValue: Int64

        public init(
            rawValue: Int64
        ) {
            self.rawValue = rawValue
        }

        public static let formatVertex: Self = .init(rawValue: 1)

        public static let formatNormal: Self = .init(rawValue: 2)

        public static let formatTangent: Self = .init(rawValue: 4)

        public static let formatColor: Self = .init(rawValue: 8)

        public static let formatTexUv: Self = .init(rawValue: 16)

        public static let formatTexUv2: Self = .init(rawValue: 32)

        public static let formatCustom0: Self = .init(rawValue: 64)

        public static let formatCustom1: Self = .init(rawValue: 128)

        public static let formatCustom2: Self = .init(rawValue: 256)

        public static let formatCustom3: Self = .init(rawValue: 512)

        public static let formatBones: Self = .init(rawValue: 1024)

        public static let formatWeights: Self = .init(rawValue: 2048)

        public static let formatIndex: Self = .init(rawValue: 4096)

        public static let formatBlendShapeMask: Self = .init(rawValue: 7)

        public static let formatCustomBase: Self = .init(rawValue: 13)

        public static let formatCustomBits: Self = .init(rawValue: 3)

        public static let formatCustom0Shift: Self = .init(rawValue: 13)

        public static let formatCustom1Shift: Self = .init(rawValue: 16)

        public static let formatCustom2Shift: Self = .init(rawValue: 19)

        public static let formatCustom3Shift: Self = .init(rawValue: 22)

        public static let formatCustomMask: Self = .init(rawValue: 7)

        public static let compressFlagsBase: Self = .init(rawValue: 25)

        public static let flagUse2DVertices: Self = .init(rawValue: 33554432)

        public static let flagUseDynamicUpdate: Self = .init(rawValue: 67108864)

        public static let flagUse8BoneWeights: Self = .init(rawValue: 134217728)

        public static let flagUsesEmptyVertexArray: Self = .init(rawValue: 268435456)

        public static let flagCompressAttributes: Self = .init(rawValue: 536870912)

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Format Vertex", 1),
            ("Format Normal", 2),
            ("Format Custom Bits", 3),
            ("Format Tangent", 4),
            ("Format Blend Shape Mask", 7),
            ("Format Color", 8),
            ("Format Custom Base", 13),
            ("Format Tex Uv", 16),
            ("Format Custom2 Shift", 19),
            ("Format Custom3 Shift", 22),
            ("Compress Flags Base", 25),
            ("Format Tex Uv2", 32),
            ("Format Custom0", 64),
            ("Format Custom1", 128),
            ("Format Custom2", 256),
            ("Format Custom3", 512),
            ("Format Bones", 1024),
            ("Format Weights", 2048),
            ("Format Index", 4096),
            ("Flag Use2D Vertices", 33554432),
            ("Flag Use Dynamic Update", 67108864),
            ("Flag Use8 Bone Weights", 134217728),
            ("Flag Uses Empty Vertex Array", 268435456),
            ("Flag Compress Attributes", 536870912),]
        }
    }

    public enum BlendShapeMode: UInt32, GodotEnum {
        case normalized = 0
        case relative = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Normalized", 0),
            ("Relative", 1),]
        }
    }

    open func _getSurfaceCount() -> Int32 {
        Int32()
    }

    open func _surfaceGetArrayLen(
        index: Int32
    ) -> Int32 {
        Int32()
    }

    open func _surfaceGetArrayIndexLen(
        index: Int32
    ) -> Int32 {
        Int32()
    }

    open func _surfaceGetArrays(
        index: Int32
    ) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray()
    }

    open func _surfaceGetBlendShapeArrays(
        index: Int32
    ) -> Godot.GodotArray<Godot.AnyGodotArray> {
        Godot.GodotArray<Godot.AnyGodotArray>()
    }

    open func _surfaceGetLods(
        index: Int32
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _surfaceGetFormat(
        index: Int32
    ) -> UInt32 {
        UInt32()
    }

    open func _surfaceGetPrimitiveType(
        index: Int32
    ) -> UInt32 {
        UInt32()
    }

    open func _surfaceSetMaterial(
        index: Int32,
        material: Godot.Material?
    ) {
    }

    open func _surfaceGetMaterial(
        index: Int32
    ) -> Godot.Material? {
        nil
    }

    open func _getBlendShapeCount() -> Int32 {
        Int32()
    }

    open func _getBlendShapeName(
        index: Int32
    ) -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _setBlendShapeName(
        index: Int32,
        name: Godot.GodotStringName
    ) {
    }

    open func _getAabb() -> Godot.AABB {
        Godot.AABB()
    }

    internal static var __method_binding_set_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lightmap_size_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()

    private func __setLightmapSizeHint(
        size: Godot.Vector2I
    ) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_lightmap_size_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lightmap_size_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()

    private func __getLightmapSizeHint() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_lightmap_size_hint,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()

    public func aabb() -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_aabb,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_faces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_faces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()

    public func faces() -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_faces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_surface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_surface_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func surfaceCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_surface_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_surface_get_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_get_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()

    public func surfaceGetArrays(
        surfIdx: Int32
    ) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        surfIdx.withGodotUnsafeRawPointer { __ptr_surfIdx in
        withUnsafeArgumentPackPointer(__ptr_surfIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_get_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_surface_get_blend_shape_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_get_blend_shape_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()

    public func surfaceGetBlendShapeArrays(
        surfIdx: Int32
    ) -> Godot.GodotArray<Godot.AnyGodotArray> {
        Godot.GodotArray<Godot.AnyGodotArray>.fromMutatingGodotUnsafePointer { __temporary in
        surfIdx.withGodotUnsafeRawPointer { __ptr_surfIdx in
        withUnsafeArgumentPackPointer(__ptr_surfIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_get_blend_shape_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_surface_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3671737478)!
        }
        }
    }()

    public func surfaceSetMaterial(
        surfIdx: Int32,
        material: Godot.Material?
    ) {
        surfIdx.withGodotUnsafeRawPointer { __ptr_surfIdx in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
        withUnsafeArgumentPackPointer(__ptr_surfIdx, _ptr___ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_surface_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "surface_get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2897466400)!
        }
        }
    }()

    public func surfaceGetMaterial(
        surfIdx: Int32
    ) -> Godot.Material? {
        Godot.Material?.fromMutatingGodotUnsafePointer { __temporary in
        surfIdx.withGodotUnsafeRawPointer { __ptr_surfIdx in
        withUnsafeArgumentPackPointer(__ptr_surfIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_surface_get_material,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()

    public func createPlaceholder() -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_placeholder,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_trimesh_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_trimesh_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4160111210)!
        }
        }
    }()

    public func createTrimeshShape() -> Godot.ConcavePolygonShape3D? {
        Godot.ConcavePolygonShape3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_trimesh_shape,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_convex_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_convex_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2529984628)!
        }
        }
    }()

    public func createConvexShape(
        clean: Bool = true,
        simplify: Bool = false
    ) -> Godot.ConvexPolygonShape3D? {
        Godot.ConvexPolygonShape3D?.fromMutatingGodotUnsafePointer { __temporary in
        clean.withGodotUnsafeRawPointer { __ptr_clean in
        simplify.withGodotUnsafeRawPointer { __ptr_simplify in
        withUnsafeArgumentPackPointer(__ptr_clean, __ptr_simplify) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_convex_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_create_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1208642001)!
        }
        }
    }()

    public func createOutline(
        margin: Double
    ) -> Godot.Mesh? {
        Godot.Mesh?.fromMutatingGodotUnsafePointer { __temporary in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_outline,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_generate_triangle_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_triangle_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3476533166)!
        }
        }
    }()

    public func generateTriangleMesh() -> Godot.TriangleMesh? {
        Godot.TriangleMesh?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generate_triangle_mesh,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var lightmapSizeHint: Godot.Vector2I {
        get {
            __getLightmapSizeHint()
        }
        set {
            __setLightmapSizeHint(
                size: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_surface_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSurfaceCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_array_len_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetArrayLen(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_array_index_len_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetArrayIndexLen(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_arrays_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetArrays(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_blend_shape_arrays_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetBlendShapeArrays(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_lods_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetLods(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_format_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetFormat(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_get_primitive_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetPrimitiveType(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _surface_set_material_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceSetMaterial(
            index: Int32.fromGodotUnsafePointer(args[0]!),
            material: Godot.Material?.fromGodotUnsafePointer(args[1]!)
        )}
        let _surface_get_material_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._surfaceGetMaterial(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_blend_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getBlendShapeCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_blend_shape_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getBlendShapeName(
            index: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _set_blend_shape_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setBlendShapeName(
            index: Int32.fromGodotUnsafePointer(args[0]!),
            name: Godot.GodotStringName.fromGodotUnsafePointer(args[1]!)
        )}
        let _get_aabb_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Mesh>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAabb()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getSurfaceCount" : ("_get_surface_count", _get_surface_count_call),
            "_surfaceGetArrayLen" : ("_surface_get_array_len", _surface_get_array_len_call),
            "_surfaceGetArrayIndexLen" : ("_surface_get_array_index_len", _surface_get_array_index_len_call),
            "_surfaceGetArrays" : ("_surface_get_arrays", _surface_get_arrays_call),
            "_surfaceGetBlendShapeArrays" : ("_surface_get_blend_shape_arrays", _surface_get_blend_shape_arrays_call),
            "_surfaceGetLods" : ("_surface_get_lods", _surface_get_lods_call),
            "_surfaceGetFormat" : ("_surface_get_format", _surface_get_format_call),
            "_surfaceGetPrimitiveType" : ("_surface_get_primitive_type", _surface_get_primitive_type_call),
            "_surfaceSetMaterial" : ("_surface_set_material", _surface_set_material_call),
            "_surfaceGetMaterial" : ("_surface_get_material", _surface_get_material_call),
            "_getBlendShapeCount" : ("_get_blend_shape_count", _get_blend_shape_count_call),
            "_getBlendShapeName" : ("_get_blend_shape_name", _get_blend_shape_name_call),
            "_setBlendShapeName" : ("_set_blend_shape_name", _set_blend_shape_name_call),
            "_getAabb" : ("_get_aabb", _get_aabb_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}