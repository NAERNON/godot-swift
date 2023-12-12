//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class BaseMaterial3D: Material {
    public enum TextureParam: UInt32, GodotEnum {
        case albedo = 0
        case metallic = 1
        case roughness = 2
        case emission = 3
        case normal = 4
        case rim = 5
        case clearcoat = 6
        case flowmap = 7
        case ambientOcclusion = 8
        case heightmap = 9
        case subsurfaceScattering = 10
        case subsurfaceTransmittance = 11
        case backlight = 12
        case refraction = 13
        case detailMask = 14
        case detailAlbedo = 15
        case detailNormal = 16
        case orm = 17
        case max = 18
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Albedo", 0),
            ("Metallic", 1),
            ("Roughness", 2),
            ("Emission", 3),
            ("Normal", 4),
            ("Rim", 5),
            ("Clearcoat", 6),
            ("Flowmap", 7),
            ("Ambient Occlusion", 8),
            ("Heightmap", 9),
            ("Subsurface Scattering", 10),
            ("Subsurface Transmittance", 11),
            ("Backlight", 12),
            ("Refraction", 13),
            ("Detail Mask", 14),
            ("Detail Albedo", 15),
            ("Detail Normal", 16),
            ("Orm", 17),
            ("Max", 18),]
        }
    }
    public enum TextureFilter: UInt32, GodotEnum {
        case nearest = 0
        case linear = 1
        case nearestWithMipmaps = 2
        case linearWithMipmaps = 3
        case nearestWithMipmapsAnisotropic = 4
        case linearWithMipmapsAnisotropic = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Linear", 1),
            ("Nearest With Mipmaps", 2),
            ("Linear With Mipmaps", 3),
            ("Nearest With Mipmaps Anisotropic", 4),
            ("Linear With Mipmaps Anisotropic", 5),
            ("Max", 6),]
        }
    }
    public enum DetailUV: UInt32, GodotEnum {
        case detailUv1 = 0
        case detailUv2 = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Detail Uv1", 0),
            ("Detail Uv2", 1),]
        }
    }
    public enum Transparency: UInt32, GodotEnum {
        case disabled = 0
        case alpha = 1
        case alphaScissor = 2
        case alphaHash = 3
        case alphaDepthPrePass = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Alpha", 1),
            ("Alpha Scissor", 2),
            ("Alpha Hash", 3),
            ("Alpha Depth Pre Pass", 4),
            ("Max", 5),]
        }
    }
    public enum ShadingMode: UInt32, GodotEnum {
        case unshaded = 0
        case perPixel = 1
        case perVertex = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Unshaded", 0),
            ("Per Pixel", 1),
            ("Per Vertex", 2),
            ("Max", 3),]
        }
    }
    public enum Feature: UInt32, GodotEnum {
        case emission = 0
        case normalMapping = 1
        case rim = 2
        case clearcoat = 3
        case anisotropy = 4
        case ambientOcclusion = 5
        case heightMapping = 6
        case subsurfaceScattering = 7
        case subsurfaceTransmittance = 8
        case backlight = 9
        case refraction = 10
        case detail = 11
        case max = 12
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Emission", 0),
            ("Normal Mapping", 1),
            ("Rim", 2),
            ("Clearcoat", 3),
            ("Anisotropy", 4),
            ("Ambient Occlusion", 5),
            ("Height Mapping", 6),
            ("Subsurface Scattering", 7),
            ("Subsurface Transmittance", 8),
            ("Backlight", 9),
            ("Refraction", 10),
            ("Detail", 11),
            ("Max", 12),]
        }
    }
    public enum BlendMode: UInt32, GodotEnum {
        case mix = 0
        case add = 1
        case sub = 2
        case mul = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Mix", 0),
            ("Add", 1),
            ("Sub", 2),
            ("Mul", 3),]
        }
    }
    public enum AlphaAntiAliasing: UInt32, GodotEnum {
        case off = 0
        case alphaToCoverage = 1
        case alphaToCoverageAndToOne = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Off", 0),
            ("Alpha To Coverage", 1),
            ("Alpha To Coverage And To One", 2),]
        }
    }
    public enum DepthDrawMode: UInt32, GodotEnum {
        case opaqueOnly = 0
        case always = 1
        case disabled = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Opaque Only", 0),
            ("Always", 1),
            ("Disabled", 2),]
        }
    }
    public enum CullMode: UInt32, GodotEnum {
        case back = 0
        case front = 1
        case disabled = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Back", 0),
            ("Front", 1),
            ("Disabled", 2),]
        }
    }
    public enum Flags: UInt32, GodotEnum {
        case disableDepthTest = 0
        case albedoFromVertexColor = 1
        case srgbVertexColor = 2
        case usePointSize = 3
        case fixedSize = 4
        case billboardKeepScale = 5
        case uv1UseTriplanar = 6
        case uv2UseTriplanar = 7
        case uv1UseWorldTriplanar = 8
        case uv2UseWorldTriplanar = 9
        case aoOnUv2 = 10
        case emissionOnUv2 = 11
        case albedoTextureForceSrgb = 12
        case dontReceiveShadows = 13
        case disableAmbientLight = 14
        case useShadowToOpacity = 15
        case useTextureRepeat = 16
        case invertHeightmap = 17
        case subsurfaceModeSkin = 18
        case particleTrailsMode = 19
        case albedoTextureMsdf = 20
        case max = 21
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disable Depth Test", 0),
            ("Albedo From Vertex Color", 1),
            ("Srgb Vertex Color", 2),
            ("Use Point Size", 3),
            ("Fixed Size", 4),
            ("Billboard Keep Scale", 5),
            ("Uv1 Use Triplanar", 6),
            ("Uv2 Use Triplanar", 7),
            ("Uv1 Use World Triplanar", 8),
            ("Uv2 Use World Triplanar", 9),
            ("Ao On Uv2", 10),
            ("Emission On Uv2", 11),
            ("Albedo Texture Force Srgb", 12),
            ("Dont Receive Shadows", 13),
            ("Disable Ambient Light", 14),
            ("Use Shadow To Opacity", 15),
            ("Use Texture Repeat", 16),
            ("Invert Heightmap", 17),
            ("Subsurface Mode Skin", 18),
            ("Particle Trails Mode", 19),
            ("Albedo Texture Msdf", 20),
            ("Max", 21),]
        }
    }
    public enum DiffuseMode: UInt32, GodotEnum {
        case burley = 0
        case lambert = 1
        case lambertWrap = 2
        case toon = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Burley", 0),
            ("Lambert", 1),
            ("Lambert Wrap", 2),
            ("Toon", 3),]
        }
    }
    public enum SpecularMode: UInt32, GodotEnum {
        case schlickGgx = 0
        case toon = 1
        case disabled = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Schlick Ggx", 0),
            ("Toon", 1),
            ("Disabled", 2),]
        }
    }
    public enum BillboardMode: UInt32, GodotEnum {
        case disabled = 0
        case enabled = 1
        case fixedY = 2
        case particles = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Enabled", 1),
            ("Fixed Y", 2),
            ("Particles", 3),]
        }
    }
    public enum TextureChannel: UInt32, GodotEnum {
        case red = 0
        case green = 1
        case blue = 2
        case alpha = 3
        case grayscale = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Red", 0),
            ("Green", 1),
            ("Blue", 2),
            ("Alpha", 3),
            ("Grayscale", 4),]
        }
    }
    public enum EmissionOperator: UInt32, GodotEnum {
        case add = 0
        case multiply = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Add", 0),
            ("Multiply", 1),]
        }
    }
    public enum DistanceFadeMode: UInt32, GodotEnum {
        case disabled = 0
        case pixelAlpha = 1
        case pixelDither = 2
        case objectDither = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Pixel Alpha", 1),
            ("Pixel Dither", 2),
            ("Object Dither", 3),]
        }
    }

    private static var __method_binding_set_albedo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_albedo").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setAlbedo(_ albedo: Godot.Color) {
        albedo.withGodotUnsafeRawPointer { __ptr_albedo in
        withUnsafeArgumentPackPointer(__ptr_albedo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_albedo,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_albedo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_albedo").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getAlbedo() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_albedo,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transparency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transparency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3435651667)!
        }
        }
    }()
    private func __setTransparency(_ transparency: Godot.BaseMaterial3D.Transparency) {
        transparency.withGodotUnsafeRawPointer { __ptr_transparency in
        withUnsafeArgumentPackPointer(__ptr_transparency) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_transparency,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transparency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transparency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 990903061)!
        }
        }
    }()
    private func __getTransparency() -> Godot.BaseMaterial3D.Transparency {
        Godot.BaseMaterial3D.Transparency.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_transparency,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alpha_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alpha_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3212649852)!
        }
        }
    }()
    private func __setAlphaAntialiasing(alphaAa: Godot.BaseMaterial3D.AlphaAntiAliasing) {
        alphaAa.withGodotUnsafeRawPointer { __ptr_alphaAa in
        withUnsafeArgumentPackPointer(__ptr_alphaAa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_alpha_antialiasing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alpha_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alpha_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2889939400)!
        }
        }
    }()
    private func __getAlphaAntialiasing() -> Godot.BaseMaterial3D.AlphaAntiAliasing {
        Godot.BaseMaterial3D.AlphaAntiAliasing.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_alpha_antialiasing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alpha_antialiasing_edge: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alpha_antialiasing_edge").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAlphaAntialiasingEdge(_ edge: Double) {
        edge.withGodotUnsafeRawPointer { __ptr_edge in
        withUnsafeArgumentPackPointer(__ptr_edge) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_alpha_antialiasing_edge,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alpha_antialiasing_edge: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alpha_antialiasing_edge").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAlphaAntialiasingEdge() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_alpha_antialiasing_edge,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_shading_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_shading_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3368750322)!
        }
        }
    }()
    private func __setShadingMode(_ shadingMode: Godot.BaseMaterial3D.ShadingMode) {
        shadingMode.withGodotUnsafeRawPointer { __ptr_shadingMode in
        withUnsafeArgumentPackPointer(__ptr_shadingMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_shading_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_shading_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shading_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2132070559)!
        }
        }
    }()
    private func __getShadingMode() -> Godot.BaseMaterial3D.ShadingMode {
        Godot.BaseMaterial3D.ShadingMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_shading_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_specular: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpecular(_ specular: Double) {
        specular.withGodotUnsafeRawPointer { __ptr_specular in
        withUnsafeArgumentPackPointer(__ptr_specular) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_specular,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_specular: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpecular() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_specular,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_metallic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_metallic").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMetallic(_ metallic: Double) {
        metallic.withGodotUnsafeRawPointer { __ptr_metallic in
        withUnsafeArgumentPackPointer(__ptr_metallic) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_metallic,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_metallic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_metallic").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMetallic() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_metallic,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_roughness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_roughness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRoughness(_ roughness: Double) {
        roughness.withGodotUnsafeRawPointer { __ptr_roughness in
        withUnsafeArgumentPackPointer(__ptr_roughness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_roughness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_roughness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_roughness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRoughness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_roughness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setEmission(_ emission: Godot.Color) {
        emission.withGodotUnsafeRawPointer { __ptr_emission in
        withUnsafeArgumentPackPointer(__ptr_emission) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_emission,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getEmission() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_emission,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_energy_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_energy_multiplier").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionEnergyMultiplier(_ emissionEnergyMultiplier: Double) {
        emissionEnergyMultiplier.withGodotUnsafeRawPointer { __ptr_emissionEnergyMultiplier in
        withUnsafeArgumentPackPointer(__ptr_emissionEnergyMultiplier) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_emission_energy_multiplier,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_energy_multiplier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_energy_multiplier").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionEnergyMultiplier() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_emission_energy_multiplier,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_intensity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_intensity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setEmissionIntensity(emissionEnergyMultiplier: Double) {
        emissionEnergyMultiplier.withGodotUnsafeRawPointer { __ptr_emissionEnergyMultiplier in
        withUnsafeArgumentPackPointer(__ptr_emissionEnergyMultiplier) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_emission_intensity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_intensity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_intensity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getEmissionIntensity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_emission_intensity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_normal_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_normal_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setNormalScale(_ normalScale: Double) {
        normalScale.withGodotUnsafeRawPointer { __ptr_normalScale in
        withUnsafeArgumentPackPointer(__ptr_normalScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_normal_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_normal_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_normal_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getNormalScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_normal_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rim: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rim").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRim(_ rim: Double) {
        rim.withGodotUnsafeRawPointer { __ptr_rim in
        withUnsafeArgumentPackPointer(__ptr_rim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_rim,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rim: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rim").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRim() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_rim,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_rim_tint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_rim_tint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRimTint(_ rimTint: Double) {
        rimTint.withGodotUnsafeRawPointer { __ptr_rimTint in
        withUnsafeArgumentPackPointer(__ptr_rimTint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_rim_tint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_rim_tint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rim_tint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRimTint() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_rim_tint,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_clearcoat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clearcoat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setClearcoat(_ clearcoat: Double) {
        clearcoat.withGodotUnsafeRawPointer { __ptr_clearcoat in
        withUnsafeArgumentPackPointer(__ptr_clearcoat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_clearcoat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_clearcoat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clearcoat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getClearcoat() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_clearcoat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_clearcoat_roughness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_clearcoat_roughness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setClearcoatRoughness(_ clearcoatRoughness: Double) {
        clearcoatRoughness.withGodotUnsafeRawPointer { __ptr_clearcoatRoughness in
        withUnsafeArgumentPackPointer(__ptr_clearcoatRoughness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_clearcoat_roughness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_clearcoat_roughness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_clearcoat_roughness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getClearcoatRoughness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_clearcoat_roughness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_anisotropy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_anisotropy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAnisotropy(_ anisotropy: Double) {
        anisotropy.withGodotUnsafeRawPointer { __ptr_anisotropy in
        withUnsafeArgumentPackPointer(__ptr_anisotropy) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_anisotropy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_anisotropy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_anisotropy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAnisotropy() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_anisotropy,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setHeightmapScale(_ heightmapScale: Double) {
        heightmapScale.withGodotUnsafeRawPointer { __ptr_heightmapScale in
        withUnsafeArgumentPackPointer(__ptr_heightmapScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_heightmap_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_heightmap_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getHeightmapScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_heightmap_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_subsurface_scattering_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subsurface_scattering_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSubsurfaceScatteringStrength(_ strength: Double) {
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        withUnsafeArgumentPackPointer(__ptr_strength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_subsurface_scattering_strength,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_subsurface_scattering_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subsurface_scattering_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSubsurfaceScatteringStrength() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_subsurface_scattering_strength,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transmittance_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transmittance_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setTransmittanceColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_transmittance_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transmittance_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transmittance_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getTransmittanceColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_transmittance_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transmittance_depth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transmittance_depth").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTransmittanceDepth(_ depth: Double) {
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        withUnsafeArgumentPackPointer(__ptr_depth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_transmittance_depth,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transmittance_depth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transmittance_depth").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTransmittanceDepth() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_transmittance_depth,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transmittance_boost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transmittance_boost").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTransmittanceBoost(_ boost: Double) {
        boost.withGodotUnsafeRawPointer { __ptr_boost in
        withUnsafeArgumentPackPointer(__ptr_boost) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_transmittance_boost,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_transmittance_boost: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transmittance_boost").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTransmittanceBoost() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_transmittance_boost,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_backlight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_backlight").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setBacklight(_ backlight: Godot.Color) {
        backlight.withGodotUnsafeRawPointer { __ptr_backlight in
        withUnsafeArgumentPackPointer(__ptr_backlight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_backlight,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_backlight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_backlight").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getBacklight() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_backlight,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_refraction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_refraction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRefraction(_ refraction: Double) {
        refraction.withGodotUnsafeRawPointer { __ptr_refraction in
        withUnsafeArgumentPackPointer(__ptr_refraction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_refraction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_refraction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_refraction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRefraction() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_refraction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_point_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_point_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setPointSize(_ pointSize: Double) {
        pointSize.withGodotUnsafeRawPointer { __ptr_pointSize in
        withUnsafeArgumentPackPointer(__ptr_pointSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_point_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_point_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getPointSize() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_point_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_detail_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_detail_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 456801921)!
        }
        }
    }()
    private func __setDetailUv(_ detailUv: Godot.BaseMaterial3D.DetailUV) {
        detailUv.withGodotUnsafeRawPointer { __ptr_detailUv in
        withUnsafeArgumentPackPointer(__ptr_detailUv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_detail_uv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_detail_uv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_detail_uv").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2306920512)!
        }
        }
    }()
    private func __getDetailUv() -> Godot.BaseMaterial3D.DetailUV {
        Godot.BaseMaterial3D.DetailUV.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_detail_uv,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2830186259)!
        }
        }
    }()
    private func __setBlendMode(_ blendMode: Godot.BaseMaterial3D.BlendMode) {
        blendMode.withGodotUnsafeRawPointer { __ptr_blendMode in
        withUnsafeArgumentPackPointer(__ptr_blendMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_blend_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4022690962)!
        }
        }
    }()
    private func __getBlendMode() -> Godot.BaseMaterial3D.BlendMode {
        Godot.BaseMaterial3D.BlendMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_blend_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth_draw_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_draw_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1456584748)!
        }
        }
    }()
    private func __setDepthDrawMode(_ depthDrawMode: Godot.BaseMaterial3D.DepthDrawMode) {
        depthDrawMode.withGodotUnsafeRawPointer { __ptr_depthDrawMode in
        withUnsafeArgumentPackPointer(__ptr_depthDrawMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_depth_draw_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth_draw_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_draw_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2578197639)!
        }
        }
    }()
    private func __getDepthDrawMode() -> Godot.BaseMaterial3D.DepthDrawMode {
        Godot.BaseMaterial3D.DepthDrawMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_depth_draw_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cull_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cull_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2338909218)!
        }
        }
    }()
    private func __setCullMode(_ cullMode: Godot.BaseMaterial3D.CullMode) {
        cullMode.withGodotUnsafeRawPointer { __ptr_cullMode in
        withUnsafeArgumentPackPointer(__ptr_cullMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_cull_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cull_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cull_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1941499586)!
        }
        }
    }()
    private func __getCullMode() -> Godot.BaseMaterial3D.CullMode {
        Godot.BaseMaterial3D.CullMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_cull_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_diffuse_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_diffuse_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1045299638)!
        }
        }
    }()
    private func __setDiffuseMode(_ diffuseMode: Godot.BaseMaterial3D.DiffuseMode) {
        diffuseMode.withGodotUnsafeRawPointer { __ptr_diffuseMode in
        withUnsafeArgumentPackPointer(__ptr_diffuseMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_diffuse_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_diffuse_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_diffuse_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3973617136)!
        }
        }
    }()
    private func __getDiffuseMode() -> Godot.BaseMaterial3D.DiffuseMode {
        Godot.BaseMaterial3D.DiffuseMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_diffuse_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_specular_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 584737147)!
        }
        }
    }()
    private func __setSpecularMode(_ specularMode: Godot.BaseMaterial3D.SpecularMode) {
        specularMode.withGodotUnsafeRawPointer { __ptr_specularMode in
        withUnsafeArgumentPackPointer(__ptr_specularMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_specular_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_specular_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2569953298)!
        }
        }
    }()
    private func __getSpecularMode() -> Godot.BaseMaterial3D.SpecularMode {
        Godot.BaseMaterial3D.SpecularMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_specular_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3070159527)!
        }
        }
    }()
    public func setFlag(_ flag: Godot.BaseMaterial3D.Flags, enable: Bool) {
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_flag, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410065)!
        }
        }
    }()
    private func __getFlag(_ flag: Godot.BaseMaterial3D.Flags) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        withUnsafeArgumentPackPointer(__ptr_flag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_flag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 22904437)!
        }
        }
    }()
    private func __setTextureFilter(mode: Godot.BaseMaterial3D.TextureFilter) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3289213076)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.BaseMaterial3D.TextureFilter {
        Godot.BaseMaterial3D.TextureFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2819288693)!
        }
        }
    }()
    public func setFeature(_ feature: Godot.BaseMaterial3D.Feature, enable: Bool) {
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_feature, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_feature,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965241794)!
        }
        }
    }()
    private func __getFeature(_ feature: Godot.BaseMaterial3D.Feature) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_feature,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 464208135)!
        }
        }
    }()
    public func setTexture(param: Godot.BaseMaterial3D.TextureParam, texture: Godot.Texture2D?) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_param, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 329605813)!
        }
        }
    }()
    private func __getTexture(param: Godot.BaseMaterial3D.TextureParam) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_detail_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_detail_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2830186259)!
        }
        }
    }()
    private func __setDetailBlendMode(_ detailBlendMode: Godot.BaseMaterial3D.BlendMode) {
        detailBlendMode.withGodotUnsafeRawPointer { __ptr_detailBlendMode in
        withUnsafeArgumentPackPointer(__ptr_detailBlendMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_detail_blend_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_detail_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_detail_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4022690962)!
        }
        }
    }()
    private func __getDetailBlendMode() -> Godot.BaseMaterial3D.BlendMode {
        Godot.BaseMaterial3D.BlendMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_detail_blend_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv1_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv1_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setUv1Scale(_ scale: Godot.Vector3) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv1_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv1_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv1_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getUv1Scale() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv1_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv1_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv1_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setUv1Offset(_ offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv1_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv1_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv1_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getUv1Offset() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv1_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv1_triplanar_blend_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv1_triplanar_blend_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setUv1TriplanarBlendSharpness(_ sharpness: Double) {
        sharpness.withGodotUnsafeRawPointer { __ptr_sharpness in
        withUnsafeArgumentPackPointer(__ptr_sharpness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv1_triplanar_blend_sharpness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv1_triplanar_blend_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv1_triplanar_blend_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getUv1TriplanarBlendSharpness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv1_triplanar_blend_sharpness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv2_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv2_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setUv2Scale(_ scale: Godot.Vector3) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv2_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv2_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv2_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getUv2Scale() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv2_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv2_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv2_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setUv2Offset(_ offset: Godot.Vector3) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv2_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv2_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv2_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getUv2Offset() -> Godot.Vector3 {
        Godot.Vector3.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv2_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_uv2_triplanar_blend_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_uv2_triplanar_blend_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setUv2TriplanarBlendSharpness(_ sharpness: Double) {
        sharpness.withGodotUnsafeRawPointer { __ptr_sharpness in
        withUnsafeArgumentPackPointer(__ptr_sharpness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_uv2_triplanar_blend_sharpness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_uv2_triplanar_blend_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_uv2_triplanar_blend_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getUv2TriplanarBlendSharpness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_uv2_triplanar_blend_sharpness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_billboard_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_billboard_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4202036497)!
        }
        }
    }()
    private func __setBillboardMode(_ mode: Godot.BaseMaterial3D.BillboardMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_billboard_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_billboard_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_billboard_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1283840139)!
        }
        }
    }()
    private func __getBillboardMode() -> Godot.BaseMaterial3D.BillboardMode {
        Godot.BaseMaterial3D.BillboardMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_billboard_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_h_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setParticlesAnimHFrames(_ frames: Int32) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_particles_anim_h_frames,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_h_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_h_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getParticlesAnimHFrames() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_particles_anim_h_frames,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_v_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setParticlesAnimVFrames(_ frames: Int32) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_particles_anim_v_frames,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_v_frames: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_v_frames").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getParticlesAnimVFrames() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_particles_anim_v_frames,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_particles_anim_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_particles_anim_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setParticlesAnimLoop(_ loop: Bool) {
        loop.withGodotUnsafeRawPointer { __ptr_loop in
        withUnsafeArgumentPackPointer(__ptr_loop) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_particles_anim_loop,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_particles_anim_loop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_particles_anim_loop").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getParticlesAnimLoop() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_particles_anim_loop,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_deep_parallax: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_deep_parallax").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHeightmapDeepParallax(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_deep_parallax,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_heightmap_deep_parallax_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_heightmap_deep_parallax_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHeightmapDeepParallaxEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_heightmap_deep_parallax_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_deep_parallax_min_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_deep_parallax_min_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setHeightmapDeepParallaxMinLayers(layer: Int32) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_deep_parallax_min_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_heightmap_deep_parallax_min_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_heightmap_deep_parallax_min_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getHeightmapDeepParallaxMinLayers() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_heightmap_deep_parallax_min_layers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_deep_parallax_max_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_deep_parallax_max_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setHeightmapDeepParallaxMaxLayers(layer: Int32) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_deep_parallax_max_layers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_heightmap_deep_parallax_max_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_heightmap_deep_parallax_max_layers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getHeightmapDeepParallaxMaxLayers() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_heightmap_deep_parallax_max_layers,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_deep_parallax_flip_tangent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_deep_parallax_flip_tangent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHeightmapDeepParallaxFlipTangent(flip: Bool) {
        flip.withGodotUnsafeRawPointer { __ptr_flip in
        withUnsafeArgumentPackPointer(__ptr_flip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_deep_parallax_flip_tangent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_heightmap_deep_parallax_flip_tangent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_heightmap_deep_parallax_flip_tangent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getHeightmapDeepParallaxFlipTangent() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_heightmap_deep_parallax_flip_tangent,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_heightmap_deep_parallax_flip_binormal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_heightmap_deep_parallax_flip_binormal").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHeightmapDeepParallaxFlipBinormal(flip: Bool) {
        flip.withGodotUnsafeRawPointer { __ptr_flip in
        withUnsafeArgumentPackPointer(__ptr_flip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_heightmap_deep_parallax_flip_binormal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_heightmap_deep_parallax_flip_binormal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_heightmap_deep_parallax_flip_binormal").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getHeightmapDeepParallaxFlipBinormal() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_heightmap_deep_parallax_flip_binormal,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_grow: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_grow").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setGrow(amount: Double) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_grow,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_grow: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_grow").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getGrow() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_grow,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_emission_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_emission_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3825128922)!
        }
        }
    }()
    private func __setEmissionOperator(_ `operator`: Godot.BaseMaterial3D.EmissionOperator) {
        `operator`.withGodotUnsafeRawPointer { __ptr_operator in
        withUnsafeArgumentPackPointer(__ptr_operator) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_emission_operator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_emission_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_emission_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 974205018)!
        }
        }
    }()
    private func __getEmissionOperator() -> Godot.BaseMaterial3D.EmissionOperator {
        Godot.BaseMaterial3D.EmissionOperator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_emission_operator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_ao_light_affect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ao_light_affect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAoLightAffect(amount: Double) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_ao_light_affect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_ao_light_affect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ao_light_affect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAoLightAffect() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_ao_light_affect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alpha_scissor_threshold: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alpha_scissor_threshold").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAlphaScissorThreshold(_ threshold: Double) {
        threshold.withGodotUnsafeRawPointer { __ptr_threshold in
        withUnsafeArgumentPackPointer(__ptr_threshold) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_alpha_scissor_threshold,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alpha_scissor_threshold: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alpha_scissor_threshold").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAlphaScissorThreshold() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_alpha_scissor_threshold,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alpha_hash_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alpha_hash_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setAlphaHashScale(threshold: Double) {
        threshold.withGodotUnsafeRawPointer { __ptr_threshold in
        withUnsafeArgumentPackPointer(__ptr_threshold) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_alpha_hash_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alpha_hash_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alpha_hash_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getAlphaHashScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_alpha_hash_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_grow_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_grow_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setGrowEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_grow_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_grow_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_grow_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isGrowEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_grow_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_metallic_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_metallic_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 744167988)!
        }
        }
    }()
    private func __setMetallicTextureChannel(_ channel: Godot.BaseMaterial3D.TextureChannel) {
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        withUnsafeArgumentPackPointer(__ptr_channel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_metallic_texture_channel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_metallic_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_metallic_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 568133867)!
        }
        }
    }()
    private func __getMetallicTextureChannel() -> Godot.BaseMaterial3D.TextureChannel {
        Godot.BaseMaterial3D.TextureChannel.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_metallic_texture_channel,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_roughness_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_roughness_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 744167988)!
        }
        }
    }()
    private func __setRoughnessTextureChannel(_ channel: Godot.BaseMaterial3D.TextureChannel) {
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        withUnsafeArgumentPackPointer(__ptr_channel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_roughness_texture_channel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_roughness_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_roughness_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 568133867)!
        }
        }
    }()
    private func __getRoughnessTextureChannel() -> Godot.BaseMaterial3D.TextureChannel {
        Godot.BaseMaterial3D.TextureChannel.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_roughness_texture_channel,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_ao_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ao_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 744167988)!
        }
        }
    }()
    private func __setAoTextureChannel(_ channel: Godot.BaseMaterial3D.TextureChannel) {
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        withUnsafeArgumentPackPointer(__ptr_channel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_ao_texture_channel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_ao_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ao_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 568133867)!
        }
        }
    }()
    private func __getAoTextureChannel() -> Godot.BaseMaterial3D.TextureChannel {
        Godot.BaseMaterial3D.TextureChannel.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_ao_texture_channel,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_refraction_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_refraction_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 744167988)!
        }
        }
    }()
    private func __setRefractionTextureChannel(_ channel: Godot.BaseMaterial3D.TextureChannel) {
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        withUnsafeArgumentPackPointer(__ptr_channel) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_refraction_texture_channel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_refraction_texture_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_refraction_texture_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 568133867)!
        }
        }
    }()
    private func __getRefractionTextureChannel() -> Godot.BaseMaterial3D.TextureChannel {
        Godot.BaseMaterial3D.TextureChannel.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_refraction_texture_channel,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_proximity_fade_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_proximity_fade_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setProximityFadeEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_proximity_fade_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_proximity_fade_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_proximity_fade_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isProximityFadeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_proximity_fade_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_proximity_fade_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_proximity_fade_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setProximityFadeDistance(_ distance: Double) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_proximity_fade_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_proximity_fade_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_proximity_fade_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getProximityFadeDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_proximity_fade_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMsdfPixelRange(_ range: Double) {
        range.withGodotUnsafeRawPointer { __ptr_range in
        withUnsafeArgumentPackPointer(__ptr_range) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_msdf_pixel_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMsdfPixelRange() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_msdf_pixel_range,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_outline_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_outline_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMsdfOutlineSize(_ size: Double) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_msdf_outline_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msdf_outline_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_outline_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMsdfOutlineSize() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_msdf_outline_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_distance_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_distance_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1379478617)!
        }
        }
    }()
    private func __setDistanceFade(mode: Godot.BaseMaterial3D.DistanceFadeMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_distance_fade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_distance_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_distance_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2694575734)!
        }
        }
    }()
    private func __getDistanceFade() -> Godot.BaseMaterial3D.DistanceFadeMode {
        Godot.BaseMaterial3D.DistanceFadeMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_distance_fade,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_distance_fade_max_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_distance_fade_max_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDistanceFadeMaxDistance(_ distance: Double) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_distance_fade_max_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_distance_fade_max_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_distance_fade_max_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDistanceFadeMaxDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_distance_fade_max_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_distance_fade_min_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_distance_fade_min_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDistanceFadeMinDistance(_ distance: Double) {
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_distance_fade_min_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_distance_fade_min_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_distance_fade_min_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDistanceFadeMinDistance() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_distance_fade_min_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var transparency: Godot.BaseMaterial3D.Transparency {
        get {
            __getTransparency()
        }
        set {
            __setTransparency(
                newValue
            )
        }
    }

    public var alphaScissorThreshold: Double {
        get {
            __getAlphaScissorThreshold()
        }
        set {
            __setAlphaScissorThreshold(
                newValue
            )
        }
    }

    public var alphaHashScale: Double {
        get {
            __getAlphaHashScale()
        }
        set {
            __setAlphaHashScale(
                threshold: newValue
            )
        }
    }

    public var alphaAntialiasing: Godot.BaseMaterial3D.AlphaAntiAliasing {
        get {
            __getAlphaAntialiasing()
        }
        set {
            __setAlphaAntialiasing(
                alphaAa: newValue
            )
        }
    }

    public var alphaAntialiasingEdge: Double {
        get {
            __getAlphaAntialiasingEdge()
        }
        set {
            __setAlphaAntialiasingEdge(
                newValue
            )
        }
    }

    public var blendMode: Godot.BaseMaterial3D.BlendMode {
        get {
            __getBlendMode()
        }
        set {
            __setBlendMode(
                newValue
            )
        }
    }

    public var cullMode: Godot.BaseMaterial3D.CullMode {
        get {
            __getCullMode()
        }
        set {
            __setCullMode(
                newValue
            )
        }
    }

    public var depthDrawMode: Godot.BaseMaterial3D.DepthDrawMode {
        get {
            __getDepthDrawMode()
        }
        set {
            __setDepthDrawMode(
                newValue
            )
        }
    }

    public var noDepthTest: Bool {
        get {
            __getFlag(
                .init(rawValue: 0)!
            )
        }
    }

    public var shadingMode: Godot.BaseMaterial3D.ShadingMode {
        get {
            __getShadingMode()
        }
        set {
            __setShadingMode(
                newValue
            )
        }
    }

    public var diffuseMode: Godot.BaseMaterial3D.DiffuseMode {
        get {
            __getDiffuseMode()
        }
        set {
            __setDiffuseMode(
                newValue
            )
        }
    }

    public var specularMode: Godot.BaseMaterial3D.SpecularMode {
        get {
            __getSpecularMode()
        }
        set {
            __setSpecularMode(
                newValue
            )
        }
    }

    public var disableAmbientLight: Bool {
        get {
            __getFlag(
                .init(rawValue: 14)!
            )
        }
    }

    public var vertexColorUseAsAlbedo: Bool {
        get {
            __getFlag(
                .init(rawValue: 1)!
            )
        }
    }

    public var vertexColorIsSrgb: Bool {
        get {
            __getFlag(
                .init(rawValue: 2)!
            )
        }
    }

    public var albedo: Godot.Color {
        get {
            __getAlbedo()
        }
        set {
            __setAlbedo(
                newValue
            )
        }
    }

    public var albedoTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 0)!
            )
        }
    }

    public var albedoTextureForceSrgb: Bool {
        get {
            __getFlag(
                .init(rawValue: 12)!
            )
        }
    }

    public var albedoTextureMsdf: Bool {
        get {
            __getFlag(
                .init(rawValue: 20)!
            )
        }
    }

    public var ormTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 17)!
            )
        }
    }

    public var metallic: Double {
        get {
            __getMetallic()
        }
        set {
            __setMetallic(
                newValue
            )
        }
    }

    public var specular: Double {
        get {
            __getSpecular()
        }
        set {
            __setSpecular(
                newValue
            )
        }
    }

    public var metallicTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 1)!
            )
        }
    }

    public var metallicTextureChannel: Godot.BaseMaterial3D.TextureChannel {
        get {
            __getMetallicTextureChannel()
        }
        set {
            __setMetallicTextureChannel(
                newValue
            )
        }
    }

    public var roughness: Double {
        get {
            __getRoughness()
        }
        set {
            __setRoughness(
                newValue
            )
        }
    }

    public var roughnessTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 2)!
            )
        }
    }

    public var roughnessTextureChannel: Godot.BaseMaterial3D.TextureChannel {
        get {
            __getRoughnessTextureChannel()
        }
        set {
            __setRoughnessTextureChannel(
                newValue
            )
        }
    }

    public var emissionEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 0)!
            )
        }
    }

    public var emission: Godot.Color {
        get {
            __getEmission()
        }
        set {
            __setEmission(
                newValue
            )
        }
    }

    public var emissionEnergyMultiplier: Double {
        get {
            __getEmissionEnergyMultiplier()
        }
        set {
            __setEmissionEnergyMultiplier(
                newValue
            )
        }
    }

    public var emissionIntensity: Double {
        get {
            __getEmissionIntensity()
        }
        set {
            __setEmissionIntensity(
                emissionEnergyMultiplier: newValue
            )
        }
    }

    public var emissionOperator: Godot.BaseMaterial3D.EmissionOperator {
        get {
            __getEmissionOperator()
        }
        set {
            __setEmissionOperator(
                newValue
            )
        }
    }

    public var emissionOnUv2: Bool {
        get {
            __getFlag(
                .init(rawValue: 11)!
            )
        }
    }

    public var emissionTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 3)!
            )
        }
    }

    public var normalEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 1)!
            )
        }
    }

    public var normalScale: Double {
        get {
            __getNormalScale()
        }
        set {
            __setNormalScale(
                newValue
            )
        }
    }

    public var normalTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 4)!
            )
        }
    }

    public var rimEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 2)!
            )
        }
    }

    public var rim: Double {
        get {
            __getRim()
        }
        set {
            __setRim(
                newValue
            )
        }
    }

    public var rimTint: Double {
        get {
            __getRimTint()
        }
        set {
            __setRimTint(
                newValue
            )
        }
    }

    public var rimTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 5)!
            )
        }
    }

    public var clearcoatEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 3)!
            )
        }
    }

    public var clearcoat: Double {
        get {
            __getClearcoat()
        }
        set {
            __setClearcoat(
                newValue
            )
        }
    }

    public var clearcoatRoughness: Double {
        get {
            __getClearcoatRoughness()
        }
        set {
            __setClearcoatRoughness(
                newValue
            )
        }
    }

    public var clearcoatTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 6)!
            )
        }
    }

    public var anisotropyEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 4)!
            )
        }
    }

    public var anisotropy: Double {
        get {
            __getAnisotropy()
        }
        set {
            __setAnisotropy(
                newValue
            )
        }
    }

    public var anisotropyFlowmap: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 7)!
            )
        }
    }

    public var aoEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 5)!
            )
        }
    }

    public var aoLightAffect: Double {
        get {
            __getAoLightAffect()
        }
        set {
            __setAoLightAffect(
                amount: newValue
            )
        }
    }

    public var aoTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 8)!
            )
        }
    }

    public var aoOnUv2: Bool {
        get {
            __getFlag(
                .init(rawValue: 10)!
            )
        }
    }

    public var aoTextureChannel: Godot.BaseMaterial3D.TextureChannel {
        get {
            __getAoTextureChannel()
        }
        set {
            __setAoTextureChannel(
                newValue
            )
        }
    }

    public var heightmapEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 6)!
            )
        }
    }

    public var heightmapScale: Double {
        get {
            __getHeightmapScale()
        }
        set {
            __setHeightmapScale(
                newValue
            )
        }
    }

    public var isHeightmapDeepParallaxEnabled: Bool {
        get {
            __isHeightmapDeepParallaxEnabled()
        }
        set {
            __setHeightmapDeepParallax(
                enable: newValue
            )
        }
    }

    public var heightmapDeepParallaxMinLayers: Int32 {
        get {
            __getHeightmapDeepParallaxMinLayers()
        }
        set {
            __setHeightmapDeepParallaxMinLayers(
                layer: newValue
            )
        }
    }

    public var heightmapDeepParallaxMaxLayers: Int32 {
        get {
            __getHeightmapDeepParallaxMaxLayers()
        }
        set {
            __setHeightmapDeepParallaxMaxLayers(
                layer: newValue
            )
        }
    }

    public var heightmapDeepParallaxFlipTangent: Bool {
        get {
            __getHeightmapDeepParallaxFlipTangent()
        }
        set {
            __setHeightmapDeepParallaxFlipTangent(
                flip: newValue
            )
        }
    }

    public var heightmapDeepParallaxFlipBinormal: Bool {
        get {
            __getHeightmapDeepParallaxFlipBinormal()
        }
        set {
            __setHeightmapDeepParallaxFlipBinormal(
                flip: newValue
            )
        }
    }

    public var heightmapTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 9)!
            )
        }
    }

    public var heightmapFlipTexture: Bool {
        get {
            __getFlag(
                .init(rawValue: 17)!
            )
        }
    }

    public var subsurfScatterEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 7)!
            )
        }
    }

    public var subsurfaceScatteringStrength: Double {
        get {
            __getSubsurfaceScatteringStrength()
        }
        set {
            __setSubsurfaceScatteringStrength(
                newValue
            )
        }
    }

    public var subsurfScatterSkinMode: Bool {
        get {
            __getFlag(
                .init(rawValue: 18)!
            )
        }
    }

    public var subsurfScatterTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 10)!
            )
        }
    }

    public var subsurfScatterTransmittanceEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 8)!
            )
        }
    }

    public var transmittanceColor: Godot.Color {
        get {
            __getTransmittanceColor()
        }
        set {
            __setTransmittanceColor(
                newValue
            )
        }
    }

    public var subsurfScatterTransmittanceTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 11)!
            )
        }
    }

    public var transmittanceDepth: Double {
        get {
            __getTransmittanceDepth()
        }
        set {
            __setTransmittanceDepth(
                newValue
            )
        }
    }

    public var transmittanceBoost: Double {
        get {
            __getTransmittanceBoost()
        }
        set {
            __setTransmittanceBoost(
                newValue
            )
        }
    }

    public var backlightEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 9)!
            )
        }
    }

    public var backlight: Godot.Color {
        get {
            __getBacklight()
        }
        set {
            __setBacklight(
                newValue
            )
        }
    }

    public var backlightTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 12)!
            )
        }
    }

    public var refractionEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 10)!
            )
        }
    }

    public var refraction: Double {
        get {
            __getRefraction()
        }
        set {
            __setRefraction(
                newValue
            )
        }
    }

    public var refractionTexture: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 13)!
            )
        }
    }

    public var refractionTextureChannel: Godot.BaseMaterial3D.TextureChannel {
        get {
            __getRefractionTextureChannel()
        }
        set {
            __setRefractionTextureChannel(
                newValue
            )
        }
    }

    public var detailEnabled: Bool {
        get {
            __getFeature(
                .init(rawValue: 11)!
            )
        }
    }

    public var detailMask: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 14)!
            )
        }
    }

    public var detailBlendMode: Godot.BaseMaterial3D.BlendMode {
        get {
            __getDetailBlendMode()
        }
        set {
            __setDetailBlendMode(
                newValue
            )
        }
    }

    public var detailUv: Godot.BaseMaterial3D.DetailUV {
        get {
            __getDetailUv()
        }
        set {
            __setDetailUv(
                newValue
            )
        }
    }

    public var detailAlbedo: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 15)!
            )
        }
    }

    public var detailNormal: Godot.Texture2D? {
        get {
            __getTexture(
                param: .init(rawValue: 16)!
            )
        }
    }

    public var uv1Scale: Godot.Vector3 {
        get {
            __getUv1Scale()
        }
        set {
            __setUv1Scale(
                newValue
            )
        }
    }

    public var uv1Offset: Godot.Vector3 {
        get {
            __getUv1Offset()
        }
        set {
            __setUv1Offset(
                newValue
            )
        }
    }

    public var uv1Triplanar: Bool {
        get {
            __getFlag(
                .init(rawValue: 6)!
            )
        }
    }

    public var uv1TriplanarBlendSharpness: Double {
        get {
            __getUv1TriplanarBlendSharpness()
        }
        set {
            __setUv1TriplanarBlendSharpness(
                newValue
            )
        }
    }

    public var uv1WorldTriplanar: Bool {
        get {
            __getFlag(
                .init(rawValue: 8)!
            )
        }
    }

    public var uv2Scale: Godot.Vector3 {
        get {
            __getUv2Scale()
        }
        set {
            __setUv2Scale(
                newValue
            )
        }
    }

    public var uv2Offset: Godot.Vector3 {
        get {
            __getUv2Offset()
        }
        set {
            __setUv2Offset(
                newValue
            )
        }
    }

    public var uv2Triplanar: Bool {
        get {
            __getFlag(
                .init(rawValue: 7)!
            )
        }
    }

    public var uv2TriplanarBlendSharpness: Double {
        get {
            __getUv2TriplanarBlendSharpness()
        }
        set {
            __setUv2TriplanarBlendSharpness(
                newValue
            )
        }
    }

    public var uv2WorldTriplanar: Bool {
        get {
            __getFlag(
                .init(rawValue: 9)!
            )
        }
    }

    public var textureFilter: Godot.BaseMaterial3D.TextureFilter {
        get {
            __getTextureFilter()
        }
        set {
            __setTextureFilter(
                mode: newValue
            )
        }
    }

    public var textureRepeat: Bool {
        get {
            __getFlag(
                .init(rawValue: 16)!
            )
        }
    }

    public var disableReceiveShadows: Bool {
        get {
            __getFlag(
                .init(rawValue: 13)!
            )
        }
    }

    public var shadowToOpacity: Bool {
        get {
            __getFlag(
                .init(rawValue: 15)!
            )
        }
    }

    public var billboardMode: Godot.BaseMaterial3D.BillboardMode {
        get {
            __getBillboardMode()
        }
        set {
            __setBillboardMode(
                newValue
            )
        }
    }

    public var billboardKeepScale: Bool {
        get {
            __getFlag(
                .init(rawValue: 5)!
            )
        }
    }

    public var particlesAnimHFrames: Int32 {
        get {
            __getParticlesAnimHFrames()
        }
        set {
            __setParticlesAnimHFrames(
                newValue
            )
        }
    }

    public var particlesAnimVFrames: Int32 {
        get {
            __getParticlesAnimVFrames()
        }
        set {
            __setParticlesAnimVFrames(
                newValue
            )
        }
    }

    public var particlesAnimLoop: Bool {
        get {
            __getParticlesAnimLoop()
        }
        set {
            __setParticlesAnimLoop(
                newValue
            )
        }
    }

    public var isGrowEnabled: Bool {
        get {
            __isGrowEnabled()
        }
        set {
            __setGrowEnabled(
                enable: newValue
            )
        }
    }

    public var grow: Double {
        get {
            __getGrow()
        }
        set {
            __setGrow(
                amount: newValue
            )
        }
    }

    public var fixedSize: Bool {
        get {
            __getFlag(
                .init(rawValue: 4)!
            )
        }
    }

    public var usePointSize: Bool {
        get {
            __getFlag(
                .init(rawValue: 3)!
            )
        }
    }

    public var pointSize: Double {
        get {
            __getPointSize()
        }
        set {
            __setPointSize(
                newValue
            )
        }
    }

    public var useParticleTrails: Bool {
        get {
            __getFlag(
                .init(rawValue: 19)!
            )
        }
    }

    public var isProximityFadeEnabled: Bool {
        get {
            __isProximityFadeEnabled()
        }
        set {
            __setProximityFadeEnabled(
                newValue
            )
        }
    }

    public var proximityFadeDistance: Double {
        get {
            __getProximityFadeDistance()
        }
        set {
            __setProximityFadeDistance(
                newValue
            )
        }
    }

    public var msdfPixelRange: Double {
        get {
            __getMsdfPixelRange()
        }
        set {
            __setMsdfPixelRange(
                newValue
            )
        }
    }

    public var msdfOutlineSize: Double {
        get {
            __getMsdfOutlineSize()
        }
        set {
            __setMsdfOutlineSize(
                newValue
            )
        }
    }

    public var distanceFade: Godot.BaseMaterial3D.DistanceFadeMode {
        get {
            __getDistanceFade()
        }
        set {
            __setDistanceFade(
                mode: newValue
            )
        }
    }

    public var distanceFadeMinDistance: Double {
        get {
            __getDistanceFadeMinDistance()
        }
        set {
            __setDistanceFadeMinDistance(
                newValue
            )
        }
    }

    public var distanceFadeMaxDistance: Double {
        get {
            __getDistanceFadeMaxDistance()
        }
        set {
            __setDistanceFadeMaxDistance(
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