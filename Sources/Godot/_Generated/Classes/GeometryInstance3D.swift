//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class GeometryInstance3D: VisualInstance3D {
    public enum ShadowCastingSetting: UInt32, GodotEnum {
        case off = 0
        case on = 1
        case doubleSided = 2
        case shadowsOnly = 3
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Off", 0),
               ("On", 1),
               ("Double Sided", 2),
               ("Shadows Only", 3),
            ]
        }
    }
    
    public enum GIMode: UInt32, GodotEnum {
        case disabled = 0
        case `static` = 1
        case dynamic = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Disabled", 0),
               ("Static", 1),
               ("Dynamic", 2),
            ]
        }
    }
    
    public enum LightmapScale: UInt32, GodotEnum {
        case lightmapScale1x = 0
        case lightmapScale2x = 1
        case lightmapScale4x = 2
        case lightmapScale8x = 3
        case max = 4
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Lightmap Scale1x", 0),
               ("Lightmap Scale2x", 1),
               ("Lightmap Scale4x", 2),
               ("Lightmap Scale8x", 3),
               ("Max", 4),
            ]
        }
    }
    
    public enum VisibilityRangeFadeMode: UInt32, GodotEnum {
        case disabled = 0
        case `self` = 1
        case dependencies = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Disabled", 0),
               ("Self", 1),
               ("Dependencies", 2),
            ]
        }
    }
    
    internal static var __method_binding_set_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_material_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
            }
        }
    }()
    
    private func __setMaterialOverride(
        material: Godot.Material?
    ) {
        withTransferrableUnsafeRawPointer(to: material) { __ptr_material in
            withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
                withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_material_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_material_override").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
            }
        }
    }()
    
    private func __getMaterialOverride() -> Godot.Material? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_material_override,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_material_overlay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_material_overlay").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2757459619)!
            }
        }
    }()
    
    private func __setMaterialOverlay(
        material: Godot.Material?
    ) {
        withTransferrableUnsafeRawPointer(to: material) { __ptr_material in
            withUnsafePointer(to: __ptr_material) { _ptr___ptr_material in
                withUnsafeArgumentPackPointer(_ptr___ptr_material) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_material_overlay,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_material_overlay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_material_overlay").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 5934680)!
            }
        }
    }()
    
    private func __getMaterialOverlay() -> Godot.Material? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_material_overlay,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_cast_shadows_setting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_cast_shadows_setting").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 856677339)!
            }
        }
    }()
    
    private func __setCastShadowsSetting(
        shadowCastingSetting: Godot.GeometryInstance3D.ShadowCastingSetting
    ) {
        withTransferrableUnsafeRawPointer(to: shadowCastingSetting) { __ptr_shadowCastingSetting in
            withUnsafeArgumentPackPointer(__ptr_shadowCastingSetting) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_cast_shadows_setting,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_cast_shadows_setting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_cast_shadows_setting").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3383019359)!
            }
        }
    }()
    
    private func __getCastShadowsSetting() -> Godot.GeometryInstance3D.ShadowCastingSetting {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_cast_shadows_setting,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_lod_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_lod_bias").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setLodBias(
        _ bias: Double
    ) {
        withTransferrableUnsafeRawPointer(to: bias) { __ptr_bias in
            withUnsafeArgumentPackPointer(__ptr_bias) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lod_bias,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_lod_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_lod_bias").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getLodBias() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_lod_bias,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_transparency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_transparency").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setTransparency(
        _ transparency: Double
    ) {
        withTransferrableUnsafeRawPointer(to: transparency) { __ptr_transparency in
            withUnsafeArgumentPackPointer(__ptr_transparency) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_transparency,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_transparency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_transparency").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getTransparency() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_transparency,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visibility_range_end_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setVisibilityRangeEndMargin(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_range_end_margin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_visibility_range_end_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getVisibilityRangeEndMargin() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_range_end_margin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_visibility_range_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visibility_range_end").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setVisibilityRangeEnd(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_range_end,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_visibility_range_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_visibility_range_end").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getVisibilityRangeEnd() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_range_end,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visibility_range_begin_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setVisibilityRangeBeginMargin(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_range_begin_margin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_visibility_range_begin_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getVisibilityRangeBeginMargin() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_range_begin_margin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_visibility_range_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visibility_range_begin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setVisibilityRangeBegin(
        distance: Double
    ) {
        withTransferrableUnsafeRawPointer(to: distance) { __ptr_distance in
            withUnsafeArgumentPackPointer(__ptr_distance) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_range_begin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_visibility_range_begin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_visibility_range_begin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getVisibilityRangeBegin() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_range_begin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_visibility_range_fade_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1440117808)!
            }
        }
    }()
    
    private func __setVisibilityRangeFadeMode(
        _ mode: Godot.GeometryInstance3D.VisibilityRangeFadeMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_visibility_range_fade_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_visibility_range_fade_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2067221882)!
            }
        }
    }()
    
    private func __getVisibilityRangeFadeMode() -> Godot.GeometryInstance3D.VisibilityRangeFadeMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_visibility_range_fade_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_instance_shader_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_instance_shader_parameter").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3776071444)!
            }
        }
    }()
    
    public func setInstanceShaderParameter<Value: Variant.Storable>(
        name: Godot.GodotStringName,
        value: Value
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_instance_shader_parameter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_instance_shader_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_instance_shader_parameter").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2760726917)!
            }
        }
    }()
    
    public func instanceShaderParameter(
        name: Godot.GodotStringName
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_instance_shader_parameter,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_extra_cull_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_extra_cull_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
            }
        }
    }()
    
    private func __setExtraCullMargin(
        _ margin: Double
    ) {
        withTransferrableUnsafeRawPointer(to: margin) { __ptr_margin in
            withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_extra_cull_margin,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_extra_cull_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_extra_cull_margin").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
            }
        }
    }()
    
    private func __getExtraCullMargin() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_extra_cull_margin,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_lightmap_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_lightmap_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2462696582)!
            }
        }
    }()
    
    private func __setLightmapScale(
        _ scale: Godot.GeometryInstance3D.LightmapScale
    ) {
        withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
            withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lightmap_scale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_lightmap_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_lightmap_scale").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 798767852)!
            }
        }
    }()
    
    private func __getLightmapScale() -> Godot.GeometryInstance3D.LightmapScale {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_lightmap_scale,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_gi_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_gi_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2548557163)!
            }
        }
    }()
    
    private func __setGiMode(
        _ mode: Godot.GeometryInstance3D.GIMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_gi_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_gi_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_gi_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2188566509)!
            }
        }
    }()
    
    private func __getGiMode() -> Godot.GeometryInstance3D.GIMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_gi_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_ignore_occlusion_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ignore_occlusion_culling").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setIgnoreOcclusionCulling(
        ignoreCulling: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: ignoreCulling) { __ptr_ignoreCulling in
            withUnsafeArgumentPackPointer(__ptr_ignoreCulling) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ignore_occlusion_culling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_ignoring_occlusion_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_ignoring_occlusion_culling").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
            }
        }
    }()
    
    private func __isIgnoringOcclusionCulling() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_ignoring_occlusion_culling,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_custom_aabb").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 259215842)!
            }
        }
    }()
    
    private func __setCustomAABB(
        _ aabb: Godot.AABB
    ) {
        withTransferrableUnsafeRawPointer(to: aabb) { __ptr_aabb in
            withUnsafeArgumentPackPointer(__ptr_aabb) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_custom_aabb,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_custom_aabb").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1068685055)!
            }
        }
    }()
    
    private func __getCustomAABB() -> Godot.AABB {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_custom_aabb,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var materialOverride: Godot.Material? {
        get {
            __getMaterialOverride()
        }
        set(newValue) {
            __setMaterialOverride(
                material: newValue
            )
        }
    }
    
    public var materialOverlay: Godot.Material? {
        get {
            __getMaterialOverlay()
        }
        set(newValue) {
            __setMaterialOverlay(
                material: newValue
            )
        }
    }
    
    public var transparency: Double {
        get {
            __getTransparency()
        }
        set(newValue) {
            __setTransparency(
                newValue
            )
        }
    }
    
    public var castShadowsSetting: Godot.GeometryInstance3D.ShadowCastingSetting {
        get {
            __getCastShadowsSetting()
        }
        set(newValue) {
            __setCastShadowsSetting(
                shadowCastingSetting: newValue
            )
        }
    }
    
    public var extraCullMargin: Double {
        get {
            __getExtraCullMargin()
        }
        set(newValue) {
            __setExtraCullMargin(
                newValue
            )
        }
    }
    
    public var customAABB: Godot.AABB {
        get {
            __getCustomAABB()
        }
        set(newValue) {
            __setCustomAABB(
                newValue
            )
        }
    }
    
    public var lodBias: Double {
        get {
            __getLodBias()
        }
        set(newValue) {
            __setLodBias(
                newValue
            )
        }
    }
    
    public var isIgnoringOcclusionCulling: Bool {
        get {
            __isIgnoringOcclusionCulling()
        }
        set(newValue) {
            __setIgnoreOcclusionCulling(
                ignoreCulling: newValue
            )
        }
    }
    
    public var giMode: Godot.GeometryInstance3D.GIMode {
        get {
            __getGiMode()
        }
        set(newValue) {
            __setGiMode(
                newValue
            )
        }
    }
    
    public var lightmapScale: Godot.GeometryInstance3D.LightmapScale {
        get {
            __getLightmapScale()
        }
        set(newValue) {
            __setLightmapScale(
                newValue
            )
        }
    }
    
    public var visibilityRangeBegin: Double {
        get {
            __getVisibilityRangeBegin()
        }
        set(newValue) {
            __setVisibilityRangeBegin(
                distance: newValue
            )
        }
    }
    
    public var visibilityRangeBeginMargin: Double {
        get {
            __getVisibilityRangeBeginMargin()
        }
        set(newValue) {
            __setVisibilityRangeBeginMargin(
                distance: newValue
            )
        }
    }
    
    public var visibilityRangeEnd: Double {
        get {
            __getVisibilityRangeEnd()
        }
        set(newValue) {
            __setVisibilityRangeEnd(
                distance: newValue
            )
        }
    }
    
    public var visibilityRangeEndMargin: Double {
        get {
            __getVisibilityRangeEndMargin()
        }
        set(newValue) {
            __setVisibilityRangeEndMargin(
                distance: newValue
            )
        }
    }
    
    public var visibilityRangeFadeMode: Godot.GeometryInstance3D.VisibilityRangeFadeMode {
        get {
            __getVisibilityRangeFadeMode()
        }
        set(newValue) {
            __setVisibilityRangeFadeMode(
                newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}