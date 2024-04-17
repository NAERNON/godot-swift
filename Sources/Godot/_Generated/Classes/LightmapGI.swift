//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class LightmapGI: VisualInstance3D {
    public enum BakeQuality: UInt32, GodotEnum {
        case low = 0
        case medium = 1
        case high = 2
        case ultra = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Low", 0),
            ("Medium", 1),
            ("High", 2),
            ("Ultra", 3),]
        }
    }

    public enum GenerateProbes: UInt32, GodotEnum {
        case disabled = 0
        case subdiv4 = 1
        case subdiv8 = 2
        case subdiv16 = 3
        case subdiv32 = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Subdiv4", 1),
            ("Subdiv8", 2),
            ("Subdiv16", 3),
            ("Subdiv32", 4),]
        }
    }

    public enum BakeError: UInt32, GodotEnum {
        case ok = 0
        case noSceneRoot = 1
        case foreignData = 2
        case noLightmapper = 3
        case noSavePath = 4
        case noMeshes = 5
        case meshesInvalid = 6
        case cantCreateImage = 7
        case userAborted = 8
        case textureSizeTooSmall = 9

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Ok", 0),
            ("No Scene Root", 1),
            ("Foreign Data", 2),
            ("No Lightmapper", 3),
            ("No Save Path", 4),
            ("No Meshes", 5),
            ("Meshes Invalid", 6),
            ("Cant Create Image", 7),
            ("User Aborted", 8),
            ("Texture Size Too Small", 9),]
        }
    }

    public enum EnvironmentMode: UInt32, GodotEnum {
        case disabled = 0
        case scene = 1
        case customSky = 2
        case customColor = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Scene", 1),
            ("Custom Sky", 2),
            ("Custom Color", 3),]
        }
    }

    internal static var __method_binding_set_light_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_data").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1790597277)!
        }
        }
    }()

    private func __setLightData(
        _ data: Godot.LightmapGIData?
    ) {
        withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
            withUnsafePointer(to: __ptr_data) { _ptr___ptr_data in
                withUnsafeArgumentPackPointer(_ptr___ptr_data) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_light_data,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_light_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_data").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 290354153)!
        }
        }
    }()

    private func __getLightData() -> Godot.LightmapGIData? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_light_data,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bake_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bake_quality").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1192215803)!
        }
        }
    }()

    private func __setBakeQuality(
        _ bakeQuality: Godot.LightmapGI.BakeQuality
    ) {
        withTransferrableUnsafeRawPointer(to: bakeQuality) { __ptr_bakeQuality in
            withUnsafeArgumentPackPointer(__ptr_bakeQuality) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bake_quality,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bake_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bake_quality").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 688832735)!
        }
        }
    }()

    private func __getBakeQuality() -> Godot.LightmapGI.BakeQuality {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bake_quality,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bounces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bounces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBounces(
        _ bounces: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: bounces) { __ptr_bounces in
            withUnsafeArgumentPackPointer(__ptr_bounces) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bounces,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bounces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bounces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBounces() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bounces,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bounce_indirect_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bounce_indirect_energy").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setBounceIndirectEnergy(
        _ bounceIndirectEnergy: Double
    ) {
        withTransferrableUnsafeRawPointer(to: bounceIndirectEnergy) { __ptr_bounceIndirectEnergy in
            withUnsafeArgumentPackPointer(__ptr_bounceIndirectEnergy) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bounce_indirect_energy,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bounce_indirect_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bounce_indirect_energy").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getBounceIndirectEnergy() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bounce_indirect_energy,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_generate_probes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_generate_probes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 549981046)!
        }
        }
    }()

    private func __setGenerateProbes(
        subdivision: Godot.LightmapGI.GenerateProbes
    ) {
        withTransferrableUnsafeRawPointer(to: subdivision) { __ptr_subdivision in
            withUnsafeArgumentPackPointer(__ptr_subdivision) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_generate_probes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_generate_probes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_generate_probes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3930596226)!
        }
        }
    }()

    private func __getGenerateProbes() -> Godot.LightmapGI.GenerateProbes {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_generate_probes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bias").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setBias(
        _ bias: Double
    ) {
        withTransferrableUnsafeRawPointer(to: bias) { __ptr_bias in
            withUnsafeArgumentPackPointer(__ptr_bias) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_bias,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bias").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getBias() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bias,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_environment_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2282650285)!
        }
        }
    }()

    private func __setEnvironmentMode(
        _ mode: Godot.LightmapGI.EnvironmentMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_environment_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_environment_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4128646479)!
        }
        }
    }()

    private func __getEnvironmentMode() -> Godot.LightmapGI.EnvironmentMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_environment_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_environment_custom_sky: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment_custom_sky").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3336722921)!
        }
        }
    }()

    private func __setEnvironmentCustomSky(
        _ sky: Godot.Sky?
    ) {
        withTransferrableUnsafeRawPointer(to: sky) { __ptr_sky in
            withUnsafePointer(to: __ptr_sky) { _ptr___ptr_sky in
                withUnsafeArgumentPackPointer(_ptr___ptr_sky) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_environment_custom_sky,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_environment_custom_sky: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment_custom_sky").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1177136966)!
        }
        }
    }()

    private func __getEnvironmentCustomSky() -> Godot.Sky? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_environment_custom_sky,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_environment_custom_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment_custom_color").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()

    private func __setEnvironmentCustomColor(
        _ color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
            withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_environment_custom_color,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_environment_custom_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment_custom_color").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()

    private func __getEnvironmentCustomColor() -> Godot.Color {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_environment_custom_color,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_environment_custom_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_environment_custom_energy").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setEnvironmentCustomEnergy(
        _ energy: Double
    ) {
        withTransferrableUnsafeRawPointer(to: energy) { __ptr_energy in
            withUnsafeArgumentPackPointer(__ptr_energy) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_environment_custom_energy,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_environment_custom_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_environment_custom_energy").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getEnvironmentCustomEnergy() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_environment_custom_energy,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_max_texture_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_max_texture_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMaxTextureSize(
        _ maxTextureSize: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: maxTextureSize) { __ptr_maxTextureSize in
            withUnsafeArgumentPackPointer(__ptr_maxTextureSize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_max_texture_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_max_texture_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_max_texture_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMaxTextureSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_max_texture_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_use_denoiser: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_denoiser").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseDenoiser(
        _ useDenoiser: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: useDenoiser) { __ptr_useDenoiser in
            withUnsafeArgumentPackPointer(__ptr_useDenoiser) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_denoiser,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_using_denoiser: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_denoiser").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isUsingDenoiser() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_denoiser,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_denoiser_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_denoiser_strength").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDenoiserStrength(
        _ denoiserStrength: Double
    ) {
        withTransferrableUnsafeRawPointer(to: denoiserStrength) { __ptr_denoiserStrength in
            withUnsafeArgumentPackPointer(__ptr_denoiserStrength) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_denoiser_strength,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_denoiser_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_denoiser_strength").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDenoiserStrength() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_denoiser_strength,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_interior: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interior").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setInterior(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_interior,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_interior: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_interior").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isInterior() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_interior,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_directional: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_directional").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDirectional(
        _ directional: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: directional) { __ptr_directional in
            withUnsafeArgumentPackPointer(__ptr_directional) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_directional,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_directional: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_directional").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDirectional() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_directional,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_use_texture_for_bounces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_texture_for_bounces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseTextureForBounces(
        _ useTextureForBounces: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: useTextureForBounces) { __ptr_useTextureForBounces in
            withUnsafeArgumentPackPointer(__ptr_useTextureForBounces) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_texture_for_bounces,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_using_texture_for_bounces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_texture_for_bounces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isUsingTextureForBounces() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_using_texture_for_bounces,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_camera_attributes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2817810567)!
        }
        }
    }()

    private func __setCameraAttributes(
        _ cameraAttributes: Godot.CameraAttributes?
    ) {
        withTransferrableUnsafeRawPointer(to: cameraAttributes) { __ptr_cameraAttributes in
            withUnsafePointer(to: __ptr_cameraAttributes) { _ptr___ptr_cameraAttributes in
                withUnsafeArgumentPackPointer(_ptr___ptr_cameraAttributes) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_camera_attributes,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_attributes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3921283215)!
        }
        }
    }()

    private func __getCameraAttributes() -> Godot.CameraAttributes? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_camera_attributes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var bakeQuality: Godot.LightmapGI.BakeQuality {
        get {
            __getBakeQuality()
        }
        set {
            __setBakeQuality(
                newValue
            )
        }
    }

    public var bounces: Int32 {
        get {
            __getBounces()
        }
        set {
            __setBounces(
                newValue
            )
        }
    }

    public var bounceIndirectEnergy: Double {
        get {
            __getBounceIndirectEnergy()
        }
        set {
            __setBounceIndirectEnergy(
                newValue
            )
        }
    }

    public var isDirectional: Bool {
        get {
            __isDirectional()
        }
        set {
            __setDirectional(
                newValue
            )
        }
    }

    public var isUsingTextureForBounces: Bool {
        get {
            __isUsingTextureForBounces()
        }
        set {
            __setUseTextureForBounces(
                newValue
            )
        }
    }

    public var isInterior: Bool {
        get {
            __isInterior()
        }
        set {
            __setInterior(
                enable: newValue
            )
        }
    }

    public var isUsingDenoiser: Bool {
        get {
            __isUsingDenoiser()
        }
        set {
            __setUseDenoiser(
                newValue
            )
        }
    }

    public var denoiserStrength: Double {
        get {
            __getDenoiserStrength()
        }
        set {
            __setDenoiserStrength(
                newValue
            )
        }
    }

    public var bias: Double {
        get {
            __getBias()
        }
        set {
            __setBias(
                newValue
            )
        }
    }

    public var maxTextureSize: Int32 {
        get {
            __getMaxTextureSize()
        }
        set {
            __setMaxTextureSize(
                newValue
            )
        }
    }

    public var environmentMode: Godot.LightmapGI.EnvironmentMode {
        get {
            __getEnvironmentMode()
        }
        set {
            __setEnvironmentMode(
                newValue
            )
        }
    }

    public var environmentCustomSky: Godot.Sky? {
        get {
            __getEnvironmentCustomSky()
        }
        set {
            __setEnvironmentCustomSky(
                newValue
            )
        }
    }

    public var environmentCustomColor: Godot.Color {
        get {
            __getEnvironmentCustomColor()
        }
        set {
            __setEnvironmentCustomColor(
                newValue
            )
        }
    }

    public var environmentCustomEnergy: Double {
        get {
            __getEnvironmentCustomEnergy()
        }
        set {
            __setEnvironmentCustomEnergy(
                newValue
            )
        }
    }

    public var cameraAttributes: Godot.CameraAttributes? {
        get {
            __getCameraAttributes()
        }
        set {
            __setCameraAttributes(
                newValue
            )
        }
    }

    public var generateProbes: Godot.LightmapGI.GenerateProbes {
        get {
            __getGenerateProbes()
        }
        set {
            __setGenerateProbes(
                subdivision: newValue
            )
        }
    }

    public var lightData: Godot.LightmapGIData? {
        get {
            __getLightData()
        }
        set {
            __setLightData(
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