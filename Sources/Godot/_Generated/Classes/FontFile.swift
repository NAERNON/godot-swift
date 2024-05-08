//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class FontFile: Font {
    internal static var __method_binding_load_bitmap_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_bitmap_font").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()

    public func loadBitmapFont(
        path: Godot.GodotString
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_load_bitmap_font,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_load_dynamic_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_dynamic_font").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()

    public func loadDynamicFont(
        path: Godot.GodotString
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_load_dynamic_font,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_data").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2971499966)!
        }
        }
    }()

    private func __setData(
        _ data: Godot.GodotContiguousArray<UInt8>
    ) {
        withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
            withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_data,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_data").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2362200018)!
        }
        }
    }()

    private func __getData() -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_data,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_font_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func setFontName(
        _ name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_font_name,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_font_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_style_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func setFontStyleName(
        _ name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_font_style_name,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_font_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_style").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 918070724)!
        }
        }
    }()

    public func setFontStyle(
        _ style: Godot.TextServer.FontStyle
    ) {
        withTransferrableUnsafeRawPointer(to: style) { __ptr_style in
            withUnsafeArgumentPackPointer(__ptr_style) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_font_style,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_font_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_weight").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func setFontWeight(
        _ weight: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: weight) { __ptr_weight in
            withUnsafeArgumentPackPointer(__ptr_weight) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_font_weight,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_font_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_stretch").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func setFontStretch(
        _ stretch: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: stretch) { __ptr_stretch in
            withUnsafeArgumentPackPointer(__ptr_stretch) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_font_stretch,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_antialiasing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1669900)!
        }
        }
    }()

    private func __setAntialiasing(
        _ antialiasing: Godot.TextServer.FontAntialiasing
    ) {
        withTransferrableUnsafeRawPointer(to: antialiasing) { __ptr_antialiasing in
            withUnsafeArgumentPackPointer(__ptr_antialiasing) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_antialiasing,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_antialiasing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4262718649)!
        }
        }
    }()

    private func __getAntialiasing() -> Godot.TextServer.FontAntialiasing {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_antialiasing,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_generate_mipmaps").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setGenerateMipmaps(
        _ generateMipmaps: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: generateMipmaps) { __ptr_generateMipmaps in
            withUnsafeArgumentPackPointer(__ptr_generateMipmaps) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_generate_mipmaps,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_generate_mipmaps").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getGenerateMipmaps() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_generate_mipmaps,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multichannel_signed_distance_field").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setMultichannelSignedDistanceField(
        msdf: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: msdf) { __ptr_msdf in
            withUnsafeArgumentPackPointer(__ptr_msdf) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_multichannel_signed_distance_field,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multichannel_signed_distance_field").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isMultichannelSignedDistanceField() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_multichannel_signed_distance_field,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_pixel_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMsdfPixelRange(
        _ msdfPixelRange: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: msdfPixelRange) { __ptr_msdfPixelRange in
            withUnsafeArgumentPackPointer(__ptr_msdfPixelRange) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_msdf_pixel_range,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_pixel_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMsdfPixelRange() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_msdf_pixel_range,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMsdfSize(
        _ msdfSize: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: msdfSize) { __ptr_msdfSize in
            withUnsafeArgumentPackPointer(__ptr_msdfSize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_msdf_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMsdfSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_msdf_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFixedSize(
        _ fixedSize: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: fixedSize) { __ptr_fixedSize in
            withUnsafeArgumentPackPointer(__ptr_fixedSize) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fixed_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFixedSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fixed_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_size_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1660989956)!
        }
        }
    }()

    private func __setFixedSizeScaleMode(
        _ fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode
    ) {
        withTransferrableUnsafeRawPointer(to: fixedSizeScaleMode) { __ptr_fixedSizeScaleMode in
            withUnsafeArgumentPackPointer(__ptr_fixedSizeScaleMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fixed_size_scale_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_size_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 753873478)!
        }
        }
    }()

    private func __getFixedSizeScaleMode() -> Godot.TextServer.FixedSizeScaleMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fixed_size_scale_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_system_fallback").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAllowSystemFallback(
        _ allowSystemFallback: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: allowSystemFallback) { __ptr_allowSystemFallback in
            withUnsafeArgumentPackPointer(__ptr_allowSystemFallback) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_allow_system_fallback,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_allow_system_fallback").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAllowSystemFallback() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_allow_system_fallback,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_force_autohinter").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setForceAutohinter(
        _ forceAutohinter: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: forceAutohinter) { __ptr_forceAutohinter in
            withUnsafeArgumentPackPointer(__ptr_forceAutohinter) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_force_autohinter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_force_autohinter").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isForceAutohinter() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_force_autohinter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hinting").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1827459492)!
        }
        }
    }()

    private func __setHinting(
        _ hinting: Godot.TextServer.Hinting
    ) {
        withTransferrableUnsafeRawPointer(to: hinting) { __ptr_hinting in
            withUnsafeArgumentPackPointer(__ptr_hinting) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_hinting,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hinting").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3683214614)!
        }
        }
    }()

    private func __getHinting() -> Godot.TextServer.Hinting {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_hinting,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subpixel_positioning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4225742182)!
        }
        }
    }()

    private func __setSubpixelPositioning(
        _ subpixelPositioning: Godot.TextServer.SubpixelPositioning
    ) {
        withTransferrableUnsafeRawPointer(to: subpixelPositioning) { __ptr_subpixelPositioning in
            withUnsafeArgumentPackPointer(__ptr_subpixelPositioning) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_subpixel_positioning,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subpixel_positioning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1069238588)!
        }
        }
    }()

    private func __getSubpixelPositioning() -> Godot.TextServer.SubpixelPositioning {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_subpixel_positioning,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setOversampling(
        _ oversampling: Double
    ) {
        withTransferrableUnsafeRawPointer(to: oversampling) { __ptr_oversampling in
            withUnsafeArgumentPackPointer(__ptr_oversampling) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_oversampling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getOversampling() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_oversampling,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_cache_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func cacheCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_cache_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_clear_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearCache() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_cache,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_remove_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeCache(
        cacheIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_cache,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_size_cache_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size_cache_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()

    public func sizeCacheList(
        cacheIndex: Int32
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_size_cache_list,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_size_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func clearSizeCache(
        cacheIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_clear_size_cache,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_remove_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_size_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()

    public func removeSizeCache(
        cacheIndex: Int32,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_remove_size_cache,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_variation_coordinates").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 64545446)!
        }
        }
    }()

    public func setVariationCoordinates<Value1: Variant.Storable, Value2: Variant.Storable>(
        cacheIndex: Int32,
        variationCoordinates: Godot.GodotDictionary<Value1, Value2>
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: variationCoordinates) { __ptr_variationCoordinates in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_variationCoordinates) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_variation_coordinates,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_variation_coordinates").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()

    public func variationCoordinates(
        cacheIndex: Int32
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_variation_coordinates,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_embolden").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setEmbolden(
        cacheIndex: Int32,
        strength: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: strength) { __ptr_strength in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_strength) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_embolden,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_embolden").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()

    public func embolden(
        cacheIndex: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_embolden,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 30160968)!
        }
        }
    }()

    public func setTransform(
        cacheIndex: Int32,
        transform: Godot.Transform2D
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: transform) { __ptr_transform in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_transform) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3836996910)!
        }
        }
    }()

    public func transform(
        cacheIndex: Int32
    ) -> Godot.Transform2D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_transform,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_extra_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_extra_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 62942285)!
        }
        }
    }()

    public func setExtraSpacing(
        cacheIndex: Int32,
        spacing: Godot.TextServer.SpacingType,
        value: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_spacing, __ptr_value) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_extra_spacing,
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

    internal static var __method_binding_get_extra_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_extra_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1924257185)!
        }
        }
    }()

    public func extraSpacing(
        cacheIndex: Int32,
        spacing: Godot.TextServer.SpacingType
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_spacing) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_extra_spacing,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_face_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setFaceIndex(
        cacheIndex: Int32,
        faceIndex: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: faceIndex) { __ptr_faceIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_faceIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_face_index,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_face_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func faceIndex(
        cacheIndex: Int32
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_face_index,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_cache_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_ascent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func setCacheAscent(
        cacheIndex: Int32,
        size: Int32,
        ascent: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: ascent) { __ptr_ascent in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_ascent) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_cache_ascent,
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

    internal static var __method_binding_get_cache_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_ascent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func cacheAscent(
        cacheIndex: Int32,
        size: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_cache_ascent,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_cache_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_descent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func setCacheDescent(
        cacheIndex: Int32,
        size: Int32,
        descent: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: descent) { __ptr_descent in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_descent) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_cache_descent,
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

    internal static var __method_binding_get_cache_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_descent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func cacheDescent(
        cacheIndex: Int32,
        size: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_cache_descent,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_cache_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_underline_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func setCacheUnderlinePosition(
        cacheIndex: Int32,
        size: Int32,
        underlinePosition: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: underlinePosition) { __ptr_underlinePosition in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_underlinePosition) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_cache_underline_position,
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

    internal static var __method_binding_get_cache_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_underline_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func cacheUnderlinePosition(
        cacheIndex: Int32,
        size: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_cache_underline_position,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_cache_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_underline_thickness").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func setCacheUnderlineThickness(
        cacheIndex: Int32,
        size: Int32,
        underlineThickness: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: underlineThickness) { __ptr_underlineThickness in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_underlineThickness) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_cache_underline_thickness,
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

    internal static var __method_binding_get_cache_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_underline_thickness").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func cacheUnderlineThickness(
        cacheIndex: Int32,
        size: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_cache_underline_thickness,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_cache_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_scale").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()

    public func setCacheScale(
        cacheIndex: Int32,
        size: Int32,
        scale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_scale) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_cache_scale,
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

    internal static var __method_binding_get_cache_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_scale").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()

    public func cacheScale(
        cacheIndex: Int32,
        size: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_cache_scale,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_texture_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1987661582)!
        }
        }
    }()

    public func textureCount(
        cacheIndex: Int32,
        size: Godot.Vector2I
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_texture_count,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_textures").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()

    public func clearTextures(
        cacheIndex: Int32,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_clear_textures,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()

    public func removeTexture(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        textureIndex: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_remove_texture,
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

    internal static var __method_binding_set_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_image").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4157974066)!
        }
        }
    }()

    public func setTextureImage(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        textureIndex: Int32,
        image: Godot.Image?
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withTransferrableUnsafeRawPointer(to: image) { __ptr_image in
                        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
                            withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex, _ptr___ptr_image) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_set_texture_image,
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
        }
    }

    internal static var __method_binding_get_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_image").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3878418953)!
        }
        }
    }()

    public func textureImage(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        textureIndex: Int32
    ) -> Godot.Image? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_texture_image,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_offsets").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2849993437)!
        }
        }
    }()

    public func setTextureOffsets(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        textureIndex: Int32,
        offset: Godot.GodotContiguousArray<Int32>
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex, __ptr_offset) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_texture_offsets,
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
    }

    internal static var __method_binding_get_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_offsets").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3703444828)!
        }
        }
    }()

    public func textureOffsets(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        textureIndex: Int32
    ) -> Godot.GodotContiguousArray<Int32> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_texture_offsets,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_glyph_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 681709689)!
        }
        }
    }()

    public func glyphList(
        cacheIndex: Int32,
        size: Godot.Vector2I
    ) -> Godot.GodotContiguousArray<Int32> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_glyph_list,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_glyphs").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()

    public func clearGlyphs(
        cacheIndex: Int32,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_clear_glyphs,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_glyph").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()

    public func removeGlyph(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_remove_glyph,
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

    internal static var __method_binding_set_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_advance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 947991729)!
        }
        }
    }()

    public func setGlyphAdvance(
        cacheIndex: Int32,
        size: Int32,
        glyph: Int32,
        advance: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: advance) { __ptr_advance in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_advance) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_glyph_advance,
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
    }

    internal static var __method_binding_get_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_advance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1601573536)!
        }
        }
    }()

    public func glyphAdvance(
        cacheIndex: Int32,
        size: Int32,
        glyph: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_advance,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 921719850)!
        }
        }
    }()

    public func setGlyphOffset(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32,
        offset: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_offset) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_glyph_offset,
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
    }

    internal static var __method_binding_get_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3205412300)!
        }
        }
    }()

    public func glyphOffset(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_offset,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 921719850)!
        }
        }
    }()

    public func setGlyphSize(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32,
        glSize: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: glSize) { __ptr_glSize in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_glSize) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_glyph_size,
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
    }

    internal static var __method_binding_get_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3205412300)!
        }
        }
    }()

    public func glyphSize(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_size,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_uv_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3821620992)!
        }
        }
    }()

    public func setGlyphUvRect(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32,
        uvRect: Godot.Rect2
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: uvRect) { __ptr_uvRect in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_uvRect) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_glyph_uv_rect,
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
    }

    internal static var __method_binding_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_uv_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927917900)!
        }
        }
    }()

    public func glyphUvRect(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32
    ) -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_uv_rect,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_texture_idx").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 355564111)!
        }
        }
    }()

    public func setGlyphTextureIdx(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32,
        textureIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: textureIdx) { __ptr_textureIdx in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_textureIdx) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_glyph_texture_idx,
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
    }

    internal static var __method_binding_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_texture_idx").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1629411054)!
        }
        }
    }()

    public func glyphTextureIdx(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        glyph: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_texture_idx,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_kerning_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_kerning_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2345056839)!
        }
        }
    }()

    public func kerningList(
        cacheIndex: Int32,
        size: Int32
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_kerning_list,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_kerning_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_kerning_map").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func clearKerningMap(
        cacheIndex: Int32,
        size: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_clear_kerning_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3930204747)!
        }
        }
    }()

    public func removeKerning(
        cacheIndex: Int32,
        size: Int32,
        glyphPair: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_remove_kerning,
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

    internal static var __method_binding_set_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3182200918)!
        }
        }
    }()

    public func setKerning(
        cacheIndex: Int32,
        size: Int32,
        glyphPair: Godot.Vector2I,
        kerning: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                    withTransferrableUnsafeRawPointer(to: kerning) { __ptr_kerning in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair, __ptr_kerning) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_set_kerning,
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
    }

    internal static var __method_binding_get_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1611912865)!
        }
        }
    }()

    public func kerning(
        cacheIndex: Int32,
        size: Int32,
        glyphPair: Godot.Vector2I
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_kerning,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_render_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "render_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 355564111)!
        }
        }
    }()

    public func renderRange(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        start: Int,
        end: Int
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                    withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_start, __ptr_end) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_render_range,
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
    }

    internal static var __method_binding_render_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "render_glyph").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()

    public func renderGlyph(
        cacheIndex: Int32,
        size: Godot.Vector2I,
        index: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: cacheIndex) { __ptr_cacheIndex in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                    withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_index) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_render_glyph,
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

    internal static var __method_binding_set_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()

    public func setLanguageSupportOverride(
        language: Godot.GodotString,
        supported: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
            withTransferrableUnsafeRawPointer(to: supported) { __ptr_supported in
                withUnsafeArgumentPackPointer(__ptr_language, __ptr_supported) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_language_support_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func languageSupportOverride(
        language: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_language_support_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func removeLanguageSupportOverride(
        language: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
            withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_language_support_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_language_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_language_support_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()

    public func languageSupportOverrides() -> Godot.GodotContiguousArray<GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_language_support_overrides,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()

    public func setScriptSupportOverride(
        script: Godot.GodotString,
        supported: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
            withTransferrableUnsafeRawPointer(to: supported) { __ptr_supported in
                withUnsafeArgumentPackPointer(__ptr_script, __ptr_supported) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_script_support_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func scriptSupportOverride(
        script: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                withUnsafeArgumentPackPointer(__ptr_script) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_script_support_override,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func removeScriptSupportOverride(
        script: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
            withUnsafeArgumentPackPointer(__ptr_script) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_script_support_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_script_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_support_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()

    public func scriptSupportOverrides() -> Godot.GodotContiguousArray<GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_script_support_overrides,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_opentype_feature_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()

    private func __setOpentypeFeatureOverrides<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ overrides: Godot.GodotDictionary<Value1, Value2>
    ) {
        withTransferrableUnsafeRawPointer(to: overrides) { __ptr_overrides in
            withUnsafeArgumentPackPointer(__ptr_overrides) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_opentype_feature_overrides,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_opentype_feature_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    private func __getOpentypeFeatureOverrides() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_opentype_feature_overrides,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 864943070)!
        }
        }
    }()

    public func glyphIndex(
        size: Int32,
        char: Int,
        variationSelector: Int
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                    withTransferrableUnsafeRawPointer(to: variationSelector) { __ptr_variationSelector in
                        withUnsafeArgumentPackPointer(__ptr_size, __ptr_char, __ptr_variationSelector) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_get_glyph_index,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_char_from_glyph_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()

    public func charFromGlyphIndex(
        size: Int32,
        glyphIndex: Int32
    ) -> Int {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyphIndex) { __ptr_glyphIndex in
                    withUnsafeArgumentPackPointer(__ptr_size, __ptr_glyphIndex) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_char_from_glyph_index,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    public var data: Godot.GodotContiguousArray<UInt8> {
        get {
            __getData()
        }
        set {
            __setData(
                newValue
            )
        }
    }

    public var generateMipmaps: Bool {
        get {
            __getGenerateMipmaps()
        }
        set {
            __setGenerateMipmaps(
                newValue
            )
        }
    }

    public var antialiasing: Godot.TextServer.FontAntialiasing {
        get {
            __getAntialiasing()
        }
        set {
            __setAntialiasing(
                newValue
            )
        }
    }

    public var subpixelPositioning: Godot.TextServer.SubpixelPositioning {
        get {
            __getSubpixelPositioning()
        }
        set {
            __setSubpixelPositioning(
                newValue
            )
        }
    }

    public var isMultichannelSignedDistanceField: Bool {
        get {
            __isMultichannelSignedDistanceField()
        }
        set {
            __setMultichannelSignedDistanceField(
                msdf: newValue
            )
        }
    }

    public var msdfPixelRange: Int32 {
        get {
            __getMsdfPixelRange()
        }
        set {
            __setMsdfPixelRange(
                newValue
            )
        }
    }

    public var msdfSize: Int32 {
        get {
            __getMsdfSize()
        }
        set {
            __setMsdfSize(
                newValue
            )
        }
    }

    public var isAllowSystemFallback: Bool {
        get {
            __isAllowSystemFallback()
        }
        set {
            __setAllowSystemFallback(
                newValue
            )
        }
    }

    public var isForceAutohinter: Bool {
        get {
            __isForceAutohinter()
        }
        set {
            __setForceAutohinter(
                newValue
            )
        }
    }

    public var hinting: Godot.TextServer.Hinting {
        get {
            __getHinting()
        }
        set {
            __setHinting(
                newValue
            )
        }
    }

    public var oversampling: Double {
        get {
            __getOversampling()
        }
        set {
            __setOversampling(
                newValue
            )
        }
    }

    public var fixedSize: Int32 {
        get {
            __getFixedSize()
        }
        set {
            __setFixedSize(
                newValue
            )
        }
    }

    public var fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode {
        get {
            __getFixedSizeScaleMode()
        }
        set {
            __setFixedSizeScaleMode(
                newValue
            )
        }
    }

    public var opentypeFeatureOverrides: Godot.AnyGodotDictionary {
        get {
            __getOpentypeFeatureOverrides()
        }
        set {
            __setOpentypeFeatureOverrides(
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