//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class FontFile: Font {
    private static var __method_binding_load_bitmap_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_bitmap_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()
    public func loadBitmapFont(path: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_bitmap_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_load_dynamic_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_dynamic_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()
    public func loadDynamicFont(path: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_dynamic_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2971499966)!
        }
        }
    }()
    private func __setData(_ data: Godot.PackedByteArray) {
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2362200018)!
        }
        }
    }()
    private func __getData() -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_font_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setFontName(_ name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_style_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setFontStyleName(_ name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_style_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_style").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 918070724)!
        }
        }
    }()
    public func setFontStyle(_ style: Godot.TextServer.FontStyle) {
        style.withGodotUnsafeRawPointer { __ptr_style in
        withUnsafeArgumentPackPointer(__ptr_style) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_style,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_weight").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setFontWeight(_ weight: Int32) {
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_weight,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_stretch").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setFontStretch(_ stretch: Int32) {
        stretch.withGodotUnsafeRawPointer { __ptr_stretch in
        withUnsafeArgumentPackPointer(__ptr_stretch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_stretch,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1669900)!
        }
        }
    }()
    private func __setAntialiasing(_ antialiasing: Godot.TextServer.FontAntialiasing) {
        antialiasing.withGodotUnsafeRawPointer { __ptr_antialiasing in
        withUnsafeArgumentPackPointer(__ptr_antialiasing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_antialiasing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4262718649)!
        }
        }
    }()
    private func __getAntialiasing() -> Godot.TextServer.FontAntialiasing {
        Godot.TextServer.FontAntialiasing.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_antialiasing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setGenerateMipmaps(_ generateMipmaps: Bool) {
        generateMipmaps.withGodotUnsafeRawPointer { __ptr_generateMipmaps in
        withUnsafeArgumentPackPointer(__ptr_generateMipmaps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_generate_mipmaps,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getGenerateMipmaps() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_generate_mipmaps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMultichannelSignedDistanceField(msdf: Bool) {
        msdf.withGodotUnsafeRawPointer { __ptr_msdf in
        withUnsafeArgumentPackPointer(__ptr_msdf) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multichannel_signed_distance_field,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMultichannelSignedDistanceField() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_multichannel_signed_distance_field,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMsdfPixelRange(_ msdfPixelRange: Int32) {
        msdfPixelRange.withGodotUnsafeRawPointer { __ptr_msdfPixelRange in
        withUnsafeArgumentPackPointer(__ptr_msdfPixelRange) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_msdf_pixel_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMsdfPixelRange() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_msdf_pixel_range,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMsdfSize(_ msdfSize: Int32) {
        msdfSize.withGodotUnsafeRawPointer { __ptr_msdfSize in
        withUnsafeArgumentPackPointer(__ptr_msdfSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_msdf_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMsdfSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_msdf_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setFixedSize(_ fixedSize: Int32) {
        fixedSize.withGodotUnsafeRawPointer { __ptr_fixedSize in
        withUnsafeArgumentPackPointer(__ptr_fixedSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fixed_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getFixedSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_fixed_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fixed_size_scale_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1660989956)!
        }
        }
    }()
    private func __setFixedSizeScaleMode(_ fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode) {
        fixedSizeScaleMode.withGodotUnsafeRawPointer { __ptr_fixedSizeScaleMode in
        withUnsafeArgumentPackPointer(__ptr_fixedSizeScaleMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fixed_size_scale_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fixed_size_scale_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 753873478)!
        }
        }
    }()
    private func __getFixedSizeScaleMode() -> Godot.TextServer.FixedSizeScaleMode {
        Godot.TextServer.FixedSizeScaleMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_fixed_size_scale_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowSystemFallback(_ allowSystemFallback: Bool) {
        allowSystemFallback.withGodotUnsafeRawPointer { __ptr_allowSystemFallback in
        withUnsafeArgumentPackPointer(__ptr_allowSystemFallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_allow_system_fallback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAllowSystemFallback() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_allow_system_fallback,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setForceAutohinter(_ forceAutohinter: Bool) {
        forceAutohinter.withGodotUnsafeRawPointer { __ptr_forceAutohinter in
        withUnsafeArgumentPackPointer(__ptr_forceAutohinter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_force_autohinter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isForceAutohinter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_force_autohinter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1827459492)!
        }
        }
    }()
    private func __setHinting(_ hinting: Godot.TextServer.Hinting) {
        hinting.withGodotUnsafeRawPointer { __ptr_hinting in
        withUnsafeArgumentPackPointer(__ptr_hinting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_hinting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3683214614)!
        }
        }
    }()
    private func __getHinting() -> Godot.TextServer.Hinting {
        Godot.TextServer.Hinting.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hinting,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4225742182)!
        }
        }
    }()
    private func __setSubpixelPositioning(_ subpixelPositioning: Godot.TextServer.SubpixelPositioning) {
        subpixelPositioning.withGodotUnsafeRawPointer { __ptr_subpixelPositioning in
        withUnsafeArgumentPackPointer(__ptr_subpixelPositioning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_subpixel_positioning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1069238588)!
        }
        }
    }()
    private func __getSubpixelPositioning() -> Godot.TextServer.SubpixelPositioning {
        Godot.TextServer.SubpixelPositioning.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_subpixel_positioning,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setOversampling(_ oversampling: Double) {
        oversampling.withGodotUnsafeRawPointer { __ptr_oversampling in
        withUnsafeArgumentPackPointer(__ptr_oversampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_oversampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getOversampling() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_oversampling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_cache_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func cacheCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearCache() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_cache,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_remove_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeCache(cacheIndex: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_size_cache_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size_cache_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func sizeCacheList(cacheIndex: Int32) -> Godot.GodotArray<Godot.Vector2i> {
        Godot.GodotArray<Godot.Vector2i>.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size_cache_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_clear_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_size_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func clearSizeCache(cacheIndex: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_size_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_size_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func removeSizeCache(cacheIndex: Int32, size: Godot.Vector2i) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_size_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_variation_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 64545446)!
        }
        }
    }()
    public func setVariationCoordinates<Value1: VariantStorable, Value2: VariantStorable>(cacheIndex: Int32, variationCoordinates: Godot.GodotDictionary<Value1, Value2>) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        variationCoordinates.withGodotUnsafeRawPointer { __ptr_variationCoordinates in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_variationCoordinates) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_variation_coordinates,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_variation_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func variationCoordinates(cacheIndex: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_variation_coordinates,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_embolden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setEmbolden(cacheIndex: Int32, strength: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_strength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_embolden,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_embolden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func embolden(cacheIndex: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_embolden,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 30160968)!
        }
        }
    }()
    public func setTransform(cacheIndex: Int32, transform: Godot.Transform2D) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3836996910)!
        }
        }
    }()
    public func transform(cacheIndex: Int32) -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_extra_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_extra_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 62942285)!
        }
        }
    }()
    public func setExtraSpacing(cacheIndex: Int32, spacing: Godot.TextServer.SpacingType, value: Int64) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_spacing, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_extra_spacing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_extra_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_extra_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1924257185)!
        }
        }
    }()
    public func extraSpacing(cacheIndex: Int32, spacing: Godot.TextServer.SpacingType) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_spacing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_extra_spacing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_face_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setFaceIndex(cacheIndex: Int32, faceIndex: Int64) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        faceIndex.withGodotUnsafeRawPointer { __ptr_faceIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_faceIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_face_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_face_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func faceIndex(cacheIndex: Int32) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_face_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_cache_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_ascent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCacheAscent(cacheIndex: Int32, size: Int32, ascent: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        ascent.withGodotUnsafeRawPointer { __ptr_ascent in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_ascent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cache_ascent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_cache_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_ascent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func cacheAscent(cacheIndex: Int32, size: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_ascent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_cache_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_descent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCacheDescent(cacheIndex: Int32, size: Int32, descent: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        descent.withGodotUnsafeRawPointer { __ptr_descent in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_descent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cache_descent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_cache_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_descent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func cacheDescent(cacheIndex: Int32, size: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_descent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_cache_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_underline_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCacheUnderlinePosition(cacheIndex: Int32, size: Int32, underlinePosition: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        underlinePosition.withGodotUnsafeRawPointer { __ptr_underlinePosition in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_underlinePosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cache_underline_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_cache_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_underline_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func cacheUnderlinePosition(cacheIndex: Int32, size: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_underline_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_cache_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_underline_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCacheUnderlineThickness(cacheIndex: Int32, size: Int32, underlineThickness: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        underlineThickness.withGodotUnsafeRawPointer { __ptr_underlineThickness in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_underlineThickness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cache_underline_thickness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_cache_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_underline_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func cacheUnderlineThickness(cacheIndex: Int32, size: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_underline_thickness,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_cache_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3506521499)!
        }
        }
    }()
    public func setCacheScale(cacheIndex: Int32, size: Int32, scale: Double) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cache_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_cache_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cache_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3085491603)!
        }
        }
    }()
    public func cacheScale(cacheIndex: Int32, size: Int32) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cache_scale,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_texture_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1987661582)!
        }
        }
    }()
    public func textureCount(cacheIndex: Int32, size: Godot.Vector2i) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_clear_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_textures").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func clearTextures(cacheIndex: Int32, size: Godot.Vector2i) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_textures,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()
    public func removeTexture(cacheIndex: Int32, size: Godot.Vector2i, textureIndex: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4157974066)!
        }
        }
    }()
    public func setTextureImage(cacheIndex: Int32, size: Godot.Vector2i, textureIndex: Int32, image: Godot.Image?) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex, _ptr___ptr_image) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3878418953)!
        }
        }
    }()
    public func textureImage(cacheIndex: Int32, size: Godot.Vector2i, textureIndex: Int32) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_image,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_offsets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2849993437)!
        }
        }
    }()
    public func setTextureOffsets(cacheIndex: Int32, size: Godot.Vector2i, textureIndex: Int32, offset: Godot.PackedInt32Array) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_offsets,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_offsets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3703444828)!
        }
        }
    }()
    public func textureOffsets(cacheIndex: Int32, size: Godot.Vector2i, textureIndex: Int32) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_offsets,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_glyph_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 681709689)!
        }
        }
    }()
    public func glyphList(cacheIndex: Int32, size: Godot.Vector2i) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_clear_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_glyphs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2311374912)!
        }
        }
    }()
    public func clearGlyphs(cacheIndex: Int32, size: Godot.Vector2i) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_glyphs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_glyph").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()
    public func removeGlyph(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_glyph,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_advance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 947991729)!
        }
        }
    }()
    public func setGlyphAdvance(cacheIndex: Int32, size: Int32, glyph: Int32, advance: Godot.Vector2) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        advance.withGodotUnsafeRawPointer { __ptr_advance in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_advance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glyph_advance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_advance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1601573536)!
        }
        }
    }()
    public func glyphAdvance(cacheIndex: Int32, size: Int32, glyph: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_advance,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 921719850)!
        }
        }
    }()
    public func setGlyphOffset(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32, offset: Godot.Vector2) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glyph_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3205412300)!
        }
        }
    }()
    public func glyphOffset(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 921719850)!
        }
        }
    }()
    public func setGlyphSize(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32, glSize: Godot.Vector2) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        glSize.withGodotUnsafeRawPointer { __ptr_glSize in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_glSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glyph_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3205412300)!
        }
        }
    }()
    public func glyphSize(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_uv_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3821620992)!
        }
        }
    }()
    public func setGlyphUvRect(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32, uvRect: Godot.Rect2) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        uvRect.withGodotUnsafeRawPointer { __ptr_uvRect in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_uvRect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glyph_uv_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_uv_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927917900)!
        }
        }
    }()
    public func glyphUvRect(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32) -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_uv_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_glyph_texture_idx").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 355564111)!
        }
        }
    }()
    public func setGlyphTextureIdx(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32, textureIdx: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        textureIdx.withGodotUnsafeRawPointer { __ptr_textureIdx in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph, __ptr_textureIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_glyph_texture_idx,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_texture_idx").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1629411054)!
        }
        }
    }()
    public func glyphTextureIdx(cacheIndex: Int32, size: Godot.Vector2i, glyph: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_texture_idx,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_kerning_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_kerning_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2345056839)!
        }
        }
    }()
    public func kerningList(cacheIndex: Int32, size: Int32) -> Godot.GodotArray<Godot.Vector2i> {
        Godot.GodotArray<Godot.Vector2i>.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_kerning_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_clear_kerning_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_kerning_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func clearKerningMap(cacheIndex: Int32, size: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_kerning_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3930204747)!
        }
        }
    }()
    public func removeKerning(cacheIndex: Int32, size: Int32, glyphPair: Godot.Vector2i) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_kerning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3182200918)!
        }
        }
    }()
    public func setKerning(cacheIndex: Int32, size: Int32, glyphPair: Godot.Vector2i, kerning: Godot.Vector2) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        kerning.withGodotUnsafeRawPointer { __ptr_kerning in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair, __ptr_kerning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_kerning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1611912865)!
        }
        }
    }()
    public func kerning(cacheIndex: Int32, size: Int32, glyphPair: Godot.Vector2i) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_glyphPair) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_kerning,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_render_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "render_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 355564111)!
        }
        }
    }()
    public func renderRange(cacheIndex: Int32, size: Godot.Vector2i, start: Int, end: Int) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        start.withGodotUnsafeRawPointer { __ptr_start in
        end.withGodotUnsafeRawPointer { __ptr_end in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_start, __ptr_end) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_render_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_render_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "render_glyph").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2328951467)!
        }
        }
    }()
    public func renderGlyph(cacheIndex: Int32, size: Godot.Vector2i, index: Int32) {
        cacheIndex.withGodotUnsafeRawPointer { __ptr_cacheIndex in
        size.withGodotUnsafeRawPointer { __ptr_size in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_cacheIndex, __ptr_size, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_render_glyph,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()
    public func setLanguageSupportOverride(language: Godot.GodotString, supported: Bool) {
        language.withGodotUnsafeRawPointer { __ptr_language in
        supported.withGodotUnsafeRawPointer { __ptr_supported in
        withUnsafeArgumentPackPointer(__ptr_language, __ptr_supported) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_language_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func languageSupportOverride(language: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_language_support_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeLanguageSupportOverride(language: Godot.GodotString) {
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_language_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_language_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_language_support_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func languageSupportOverrides() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_language_support_overrides,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2678287736)!
        }
        }
    }()
    public func setScriptSupportOverride(script: Godot.GodotString, supported: Bool) {
        script.withGodotUnsafeRawPointer { __ptr_script in
        supported.withGodotUnsafeRawPointer { __ptr_supported in
        withUnsafeArgumentPackPointer(__ptr_script, __ptr_supported) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_script_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func scriptSupportOverride(script: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafeArgumentPackPointer(__ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_script_support_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeScriptSupportOverride(script: Godot.GodotString) {
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafeArgumentPackPointer(__ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_script_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_script_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_script_support_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func scriptSupportOverrides() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_script_support_overrides,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_opentype_feature_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setOpentypeFeatureOverrides<Value1: VariantStorable, Value2: VariantStorable>(_ overrides: Godot.GodotDictionary<Value1, Value2>) {
        overrides.withGodotUnsafeRawPointer { __ptr_overrides in
        withUnsafeArgumentPackPointer(__ptr_overrides) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_opentype_feature_overrides,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_opentype_feature_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    private func __getOpentypeFeatureOverrides() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_opentype_feature_overrides,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_glyph_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 864943070)!
        }
        }
    }()
    public func glyphIndex(size: Int32, char: Int, variationSelector: Int) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        size.withGodotUnsafeRawPointer { __ptr_size in
        char.withGodotUnsafeRawPointer { __ptr_char in
        variationSelector.withGodotUnsafeRawPointer { __ptr_variationSelector in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_char, __ptr_variationSelector) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_glyph_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_char_from_glyph_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()
    public func charFromGlyphIndex(size: Int32, glyphIndex: Int32) -> Int {
        Int.fromMutatingGodotUnsafePointer { __temporary in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphIndex.withGodotUnsafeRawPointer { __ptr_glyphIndex in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_glyphIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_char_from_glyph_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    public var data: Godot.PackedByteArray {
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