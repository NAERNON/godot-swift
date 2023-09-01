//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Mesh: Resource {
    public enum PrimitiveType: UInt32 {
        case points = 0
        case lines = 1
        case lineStrip = 2
        case triangles = 3
        case triangleStrip = 4
    }
    public enum ArrayType: UInt32 {
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
    }
    public enum ArrayCustomFormat: UInt32 {
        case rgba8Unorm = 0
        case rgba8Snorm = 1
        case rgHalf = 2
        case rgbaHalf = 3
        case rFloat = 4
        case rgFloat = 5
        case rgbFloat = 6
        case rgbaFloat = 7
        case max = 8
    }
    public struct ArrayFormat: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
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
    }
    public enum BlendShapeMode: UInt32 {
        case normalized = 0
        case relative = 1
    }

    open func _getSurfaceCount() -> Int32 {
        Int32()
    }

    open func _surfaceGetArrayLen(index: Int32) -> Int32 {
        Int32()
    }

    open func _surfaceGetArrayIndexLen(index: Int32) -> Int32 {
        Int32()
    }

    open func _surfaceGetArrays(index: Int32) -> Godot.GodotArray {
        Godot.GodotArray()
    }

    open func _surfaceGetBlendShapeArrays(index: Int32) -> Godot.GodotTypedArray<Godot.GodotArray> {
        Godot.GodotTypedArray<Godot.GodotArray>()
    }

    open func _surfaceGetLods(index: Int32) -> Godot.GodotDictionary {
        Godot.GodotDictionary()
    }

    open func _surfaceGetFormat(index: Int32) -> UInt32 {
        UInt32()
    }

    open func _surfaceGetPrimitiveType(index: Int32) -> UInt32 {
        UInt32()
    }

    open func _surfaceSetMaterial(index: Int32, material: Godot.Material?) {
    }

    open func _surfaceGetMaterial(index: Int32) -> Godot.Material? {
        nil
    }

    open func _getBlendShapeCount() -> Int32 {
        Int32()
    }

    open func _getBlendShapeName(index: Int32) -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _setBlendShapeName(index: Int32, name: Godot.GodotStringName) {
    }

    open func _getAabb() -> Godot.AABB {
        Godot.AABB()
    }

    private static var __method_binding_set_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_lightmap_size_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1130785943)!
        }
        }
    }()
    private func __setLightmapSizeHint(size: Godot.Vector2i) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_lightmap_size_hint,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_lightmap_size_hint: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_lightmap_size_hint").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    private func __getLightmapSizeHint() -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_lightmap_size_hint,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_aabb: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_aabb").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1068685055)!
        }
        }
    }()
    public func aabb() -> Godot.AABB {
        var __temporary = Godot.AABB()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_aabb,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_faces: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_faces").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 497664490)!
        }
        }
    }()
    public func faces() -> Godot.PackedVector3Array {
        let __temporary = Godot.PackedVector3Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_faces,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_surface_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_surface_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func surfaceCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_surface_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_surface_get_arrays: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "surface_get_arrays").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func surfaceGetArrays(surfIdx: Int32) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: surfIdx) { (__ptr_surfIdx) in
            withUnsafeArgumentPackPointer(__ptr_surfIdx) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_surface_get_arrays,
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

    private static var __method_binding_surface_get_blend_shape_arrays: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "surface_get_blend_shape_arrays").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func surfaceGetBlendShapeArrays(surfIdx: Int32) -> Godot.GodotTypedArray<Godot.GodotArray> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotArray>()
        withUnsafePointer(to: surfIdx) { (__ptr_surfIdx) in
            withUnsafeArgumentPackPointer(__ptr_surfIdx) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_surface_get_blend_shape_arrays,
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

    private static var __method_binding_surface_set_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "surface_set_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3671737478)!
        }
        }
    }()
    public func surfaceSetMaterial(surfIdx: Int32, material: Godot.Material?) {
        withUnsafePointer(to: surfIdx) { (__ptr_surfIdx) in
            material.withUnsafeRawPointer { (__ptr_material) in
                withUnsafePointer(to: __ptr_material) { (_ptr___ptr_material) in
                    withUnsafeArgumentPackPointer(__ptr_surfIdx, _ptr___ptr_material) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_surface_set_material,
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

    private static var __method_binding_surface_get_material: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "surface_get_material").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2897466400)!
        }
        }
    }()
    public func surfaceGetMaterial(surfIdx: Int32) -> Godot.Material? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: surfIdx) { (__ptr_surfIdx) in
            withUnsafeArgumentPackPointer(__ptr_surfIdx) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_surface_get_material,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Material.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_placeholder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()
    public func createPlaceholder() -> Godot.Resource? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_placeholder,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Resource.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_trimesh_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_trimesh_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4160111210)!
        }
        }
    }()
    public func createTrimeshShape() -> Godot.ConcavePolygonShape3D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_trimesh_shape,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ConcavePolygonShape3D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_convex_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_convex_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2529984628)!
        }
        }
    }()
    public func createConvexShape(clean: Bool = true, simplify: Bool = false) -> Godot.ConvexPolygonShape3D? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: clean) { (__ptr_clean) in
            withUnsafePointer(to: simplify) { (__ptr_simplify) in
                withUnsafeArgumentPackPointer(__ptr_clean, __ptr_simplify) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_create_convex_shape,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ConvexPolygonShape3D.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1208642001)!
        }
        }
    }()
    public func createOutline(margin: Double) -> Godot.Mesh? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: margin) { (__ptr_margin) in
            withUnsafeArgumentPackPointer(__ptr_margin) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_create_outline,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Mesh.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_generate_triangle_mesh: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "generate_triangle_mesh").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3476533166)!
        }
        }
    }()
    public func generateTriangleMesh() -> Godot.TriangleMesh? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_generate_triangle_mesh,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TriangleMesh.retreivedInstanceManagedByGodot(__temporary)
    }

    public var lightmapSizeHint: Godot.Vector2i {
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
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getSurfaceCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _surface_get_array_len_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._surfaceGetArrayLen(
            index: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _surface_get_array_index_len_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._surfaceGetArrayIndexLen(
            index: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _surface_get_arrays_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._surfaceGetArrays(
            index: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _surface_get_blend_shape_arrays_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._surfaceGetBlendShapeArrays(
            index: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _surface_get_lods_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._surfaceGetLods(
            index: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _surface_get_format_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._surfaceGetFormat(
            index: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _surface_get_primitive_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._surfaceGetPrimitiveType(
            index: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _surface_set_material_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._surfaceSetMaterial(
            index: args[0]!.load(as: Int32.self),
            material: Godot.Material.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!))
        )}
        let _surface_get_material_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._surfaceGetMaterial(
            index: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_blend_shape_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getBlendShapeCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_blend_shape_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getBlendShapeName(
            index: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_blend_shape_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setBlendShapeName(
            index: args[0]!.load(as: Int32.self),
            name: Godot.GodotStringName(godotExtensionPointer: args[1]!)
        )}
        let _get_aabb_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Mesh> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getAabb()
        returnPtr!.assumingMemoryBound(to: Godot.AABB.self).pointee = returnValue}
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