//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class MeshConvexDecompositionSettings: RefCounted {
    public enum Mode: UInt32, GodotEnum {
        case voxel = 0
        case tetrahedron = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Voxel", 0),
            ("Tetrahedron", 1),]
        }
    }

    private static var __method_binding_set_max_concavity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_concavity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMaxConcavity(_ maxConcavity: Double) {
        maxConcavity.withGodotUnsafeRawPointer { __ptr_maxConcavity in
        withUnsafeArgumentPackPointer(__ptr_maxConcavity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_max_concavity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_max_concavity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_concavity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMaxConcavity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_max_concavity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_symmetry_planes_clipping_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symmetry_planes_clipping_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSymmetryPlanesClippingBias(_ symmetryPlanesClippingBias: Double) {
        symmetryPlanesClippingBias.withGodotUnsafeRawPointer { __ptr_symmetryPlanesClippingBias in
        withUnsafeArgumentPackPointer(__ptr_symmetryPlanesClippingBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_symmetry_planes_clipping_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_symmetry_planes_clipping_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_symmetry_planes_clipping_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSymmetryPlanesClippingBias() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_symmetry_planes_clipping_bias,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_revolution_axes_clipping_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_revolution_axes_clipping_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRevolutionAxesClippingBias(_ revolutionAxesClippingBias: Double) {
        revolutionAxesClippingBias.withGodotUnsafeRawPointer { __ptr_revolutionAxesClippingBias in
        withUnsafeArgumentPackPointer(__ptr_revolutionAxesClippingBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_revolution_axes_clipping_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_revolution_axes_clipping_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_revolution_axes_clipping_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRevolutionAxesClippingBias() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_revolution_axes_clipping_bias,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_min_volume_per_convex_hull: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_min_volume_per_convex_hull").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMinVolumePerConvexHull(_ minVolumePerConvexHull: Double) {
        minVolumePerConvexHull.withGodotUnsafeRawPointer { __ptr_minVolumePerConvexHull in
        withUnsafeArgumentPackPointer(__ptr_minVolumePerConvexHull) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_min_volume_per_convex_hull,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_min_volume_per_convex_hull: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_min_volume_per_convex_hull").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMinVolumePerConvexHull() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_min_volume_per_convex_hull,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_resolution").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setResolution(minVolumePerConvexHull: UInt32) {
        minVolumePerConvexHull.withGodotUnsafeRawPointer { __ptr_minVolumePerConvexHull in
        withUnsafeArgumentPackPointer(__ptr_minVolumePerConvexHull) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_resolution,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolution").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getResolution() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_resolution,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_max_num_vertices_per_convex_hull: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_num_vertices_per_convex_hull").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMaxNumVerticesPerConvexHull(_ maxNumVerticesPerConvexHull: UInt32) {
        maxNumVerticesPerConvexHull.withGodotUnsafeRawPointer { __ptr_maxNumVerticesPerConvexHull in
        withUnsafeArgumentPackPointer(__ptr_maxNumVerticesPerConvexHull) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_max_num_vertices_per_convex_hull,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_max_num_vertices_per_convex_hull: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_num_vertices_per_convex_hull").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMaxNumVerticesPerConvexHull() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_max_num_vertices_per_convex_hull,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_plane_downsampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_plane_downsampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setPlaneDownsampling(_ planeDownsampling: UInt32) {
        planeDownsampling.withGodotUnsafeRawPointer { __ptr_planeDownsampling in
        withUnsafeArgumentPackPointer(__ptr_planeDownsampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_plane_downsampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_plane_downsampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_plane_downsampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getPlaneDownsampling() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_plane_downsampling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_convex_hull_downsampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_convex_hull_downsampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setConvexHullDownsampling(_ convexHullDownsampling: UInt32) {
        convexHullDownsampling.withGodotUnsafeRawPointer { __ptr_convexHullDownsampling in
        withUnsafeArgumentPackPointer(__ptr_convexHullDownsampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_convex_hull_downsampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_convex_hull_downsampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_convex_hull_downsampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getConvexHullDownsampling() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_convex_hull_downsampling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_normalize_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_normalize_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setNormalizeMesh(_ normalizeMesh: Bool) {
        normalizeMesh.withGodotUnsafeRawPointer { __ptr_normalizeMesh in
        withUnsafeArgumentPackPointer(__ptr_normalizeMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_normalize_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_normalize_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_normalize_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getNormalizeMesh() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_normalize_mesh,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1668072869)!
        }
        }
    }()
    private func __setMode(_ mode: Godot.MeshConvexDecompositionSettings.Mode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 23479454)!
        }
        }
    }()
    private func __getMode() -> Godot.MeshConvexDecompositionSettings.Mode {
        Godot.MeshConvexDecompositionSettings.Mode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_convex_hull_approximation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_convex_hull_approximation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setConvexHullApproximation(_ convexHullApproximation: Bool) {
        convexHullApproximation.withGodotUnsafeRawPointer { __ptr_convexHullApproximation in
        withUnsafeArgumentPackPointer(__ptr_convexHullApproximation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_convex_hull_approximation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_convex_hull_approximation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_convex_hull_approximation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getConvexHullApproximation() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_convex_hull_approximation,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_max_convex_hulls: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_convex_hulls").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMaxConvexHulls(_ maxConvexHulls: UInt32) {
        maxConvexHulls.withGodotUnsafeRawPointer { __ptr_maxConvexHulls in
        withUnsafeArgumentPackPointer(__ptr_maxConvexHulls) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_max_convex_hulls,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_max_convex_hulls: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_convex_hulls").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMaxConvexHulls() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_max_convex_hulls,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_project_hull_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_project_hull_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setProjectHullVertices(_ projectHullVertices: Bool) {
        projectHullVertices.withGodotUnsafeRawPointer { __ptr_projectHullVertices in
        withUnsafeArgumentPackPointer(__ptr_projectHullVertices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_project_hull_vertices,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_project_hull_vertices: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_project_hull_vertices").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getProjectHullVertices() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_project_hull_vertices,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var maxConcavity: Double {
        get {
            __getMaxConcavity()
        }
        set {
            __setMaxConcavity(
                newValue
            )
        }
    }

    public var symmetryPlanesClippingBias: Double {
        get {
            __getSymmetryPlanesClippingBias()
        }
        set {
            __setSymmetryPlanesClippingBias(
                newValue
            )
        }
    }

    public var revolutionAxesClippingBias: Double {
        get {
            __getRevolutionAxesClippingBias()
        }
        set {
            __setRevolutionAxesClippingBias(
                newValue
            )
        }
    }

    public var minVolumePerConvexHull: Double {
        get {
            __getMinVolumePerConvexHull()
        }
        set {
            __setMinVolumePerConvexHull(
                newValue
            )
        }
    }

    public var resolution: UInt32 {
        get {
            __getResolution()
        }
        set {
            __setResolution(
                minVolumePerConvexHull: newValue
            )
        }
    }

    public var maxNumVerticesPerConvexHull: UInt32 {
        get {
            __getMaxNumVerticesPerConvexHull()
        }
        set {
            __setMaxNumVerticesPerConvexHull(
                newValue
            )
        }
    }

    public var planeDownsampling: UInt32 {
        get {
            __getPlaneDownsampling()
        }
        set {
            __setPlaneDownsampling(
                newValue
            )
        }
    }

    public var convexHullDownsampling: UInt32 {
        get {
            __getConvexHullDownsampling()
        }
        set {
            __setConvexHullDownsampling(
                newValue
            )
        }
    }

    public var normalizeMesh: Bool {
        get {
            __getNormalizeMesh()
        }
        set {
            __setNormalizeMesh(
                newValue
            )
        }
    }

    public var mode: Godot.MeshConvexDecompositionSettings.Mode {
        get {
            __getMode()
        }
        set {
            __setMode(
                newValue
            )
        }
    }

    public var convexHullApproximation: Bool {
        get {
            __getConvexHullApproximation()
        }
        set {
            __setConvexHullApproximation(
                newValue
            )
        }
    }

    public var maxConvexHulls: UInt32 {
        get {
            __getMaxConvexHulls()
        }
        set {
            __setMaxConvexHulls(
                newValue
            )
        }
    }

    public var projectHullVertices: Bool {
        get {
            __getProjectHullVertices()
        }
        set {
            __setProjectHullVertices(
                newValue
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