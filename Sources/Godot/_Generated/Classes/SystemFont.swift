//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class SystemFont: Font {
    private static var __method_binding_set_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1669900)!
        }
        }
    }()
    private func __setAntialiasing(_ antialiasing: Godot.TextServer.FontAntialiasing) {
        antialiasing.withGodotUnsafeRawPointer { __ptr_antialiasing in
        withUnsafeArgumentPackPointer(__ptr_antialiasing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_antialiasing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4262718649)!
        }
        }
    }()
    private func __getAntialiasing() -> Godot.TextServer.FontAntialiasing {
        Godot.TextServer.FontAntialiasing.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_antialiasing,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setGenerateMipmaps(_ generateMipmaps: Bool) {
        generateMipmaps.withGodotUnsafeRawPointer { __ptr_generateMipmaps in
        withUnsafeArgumentPackPointer(__ptr_generateMipmaps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_generate_mipmaps,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getGenerateMipmaps() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_generate_mipmaps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowSystemFallback(_ allowSystemFallback: Bool) {
        allowSystemFallback.withGodotUnsafeRawPointer { __ptr_allowSystemFallback in
        withUnsafeArgumentPackPointer(__ptr_allowSystemFallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_allow_system_fallback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAllowSystemFallback() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_allow_system_fallback,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setForceAutohinter(_ forceAutohinter: Bool) {
        forceAutohinter.withGodotUnsafeRawPointer { __ptr_forceAutohinter in
        withUnsafeArgumentPackPointer(__ptr_forceAutohinter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_force_autohinter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isForceAutohinter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_force_autohinter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1827459492)!
        }
        }
    }()
    private func __setHinting(_ hinting: Godot.TextServer.Hinting) {
        hinting.withGodotUnsafeRawPointer { __ptr_hinting in
        withUnsafeArgumentPackPointer(__ptr_hinting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hinting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3683214614)!
        }
        }
    }()
    private func __getHinting() -> Godot.TextServer.Hinting {
        Godot.TextServer.Hinting.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_hinting,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4225742182)!
        }
        }
    }()
    private func __setSubpixelPositioning(_ subpixelPositioning: Godot.TextServer.SubpixelPositioning) {
        subpixelPositioning.withGodotUnsafeRawPointer { __ptr_subpixelPositioning in
        withUnsafeArgumentPackPointer(__ptr_subpixelPositioning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_subpixel_positioning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1069238588)!
        }
        }
    }()
    private func __getSubpixelPositioning() -> Godot.TextServer.SubpixelPositioning {
        Godot.TextServer.SubpixelPositioning.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_subpixel_positioning,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMultichannelSignedDistanceField(msdf: Bool) {
        msdf.withGodotUnsafeRawPointer { __ptr_msdf in
        withUnsafeArgumentPackPointer(__ptr_msdf) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_multichannel_signed_distance_field,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMultichannelSignedDistanceField() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_multichannel_signed_distance_field,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMsdfPixelRange(_ msdfPixelRange: Int32) {
        msdfPixelRange.withGodotUnsafeRawPointer { __ptr_msdfPixelRange in
        withUnsafeArgumentPackPointer(__ptr_msdfPixelRange) { __accessPtr in
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMsdfPixelRange() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_msdf_pixel_range,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMsdfSize(_ msdfSize: Int32) {
        msdfSize.withGodotUnsafeRawPointer { __ptr_msdfSize in
        withUnsafeArgumentPackPointer(__ptr_msdfSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_msdf_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMsdfSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_msdf_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setOversampling(_ oversampling: Double) {
        oversampling.withGodotUnsafeRawPointer { __ptr_oversampling in
        withUnsafeArgumentPackPointer(__ptr_oversampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_oversampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getOversampling() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_oversampling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_font_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    private func __getFontNames() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_font_names,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_font_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4015028928)!
        }
        }
    }()
    private func __setFontNames(_ names: Godot.PackedStringArray) {
        names.withGodotUnsafeRawPointer { __ptr_names in
        withUnsafeArgumentPackPointer(__ptr_names) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_font_names,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_font_italic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_italic").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getFontItalic() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_font_italic,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_font_italic: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_italic").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFontItalic(_ italic: Bool) {
        italic.withGodotUnsafeRawPointer { __ptr_italic in
        withUnsafeArgumentPackPointer(__ptr_italic) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_font_italic,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_weight").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setFontWeight(_ weight: Int32) {
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_font_weight,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_font_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_stretch").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setFontStretch(_ stretch: Int32) {
        stretch.withGodotUnsafeRawPointer { __ptr_stretch in
        withUnsafeArgumentPackPointer(__ptr_stretch) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_font_stretch,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var fontNames: Godot.PackedStringArray {
        get {
            __getFontNames()
        }
        set {
            __setFontNames(
                newValue
            )
        }
    }

    public var fontItalic: Bool {
        get {
            __getFontItalic()
        }
        set {
            __setFontItalic(
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