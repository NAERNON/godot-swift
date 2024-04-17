//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Font: Resource {
    internal static var __method_binding_set_fallbacks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fallbacks").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setFallbacks(
        _ fallbacks: Godot.GodotArray<Godot.Font?>
    ) {
        withTransferrableUnsafeRawPointer(to: fallbacks) { __ptr_fallbacks in
            withUnsafeArgumentPackPointer(__ptr_fallbacks) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fallbacks,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_fallbacks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fallbacks").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getFallbacks() -> Godot.GodotArray<Godot.Font?> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fallbacks,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_find_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_variation").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3344325384)!
        }
        }
    }()

    public func findVariation<Value1: Variant.Storable, Value2: Variant.Storable>(
        variationCoordinates: Godot.GodotDictionary<Value1, Value2>,
        faceIndex: Int32 = 0,
        strength: Double = 0.0,
        transform: Godot.Transform2D = .identity,
        spacingTop: Int32 = 0,
        spacingBottom: Int32 = 0,
        spacingSpace: Int32 = 0,
        spacingGlyph: Int32 = 0
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: variationCoordinates) { __ptr_variationCoordinates in
                withTransferrableUnsafeRawPointer(to: faceIndex) { __ptr_faceIndex in
                    withTransferrableUnsafeRawPointer(to: strength) { __ptr_strength in
                        withTransferrableUnsafeRawPointer(to: transform) { __ptr_transform in
                            withTransferrableUnsafeRawPointer(to: spacingTop) { __ptr_spacingTop in
                                withTransferrableUnsafeRawPointer(to: spacingBottom) { __ptr_spacingBottom in
                                    withTransferrableUnsafeRawPointer(to: spacingSpace) { __ptr_spacingSpace in
                                        withTransferrableUnsafeRawPointer(to: spacingGlyph) { __ptr_spacingGlyph in
                                            withUnsafeArgumentPackPointer(__ptr_variationCoordinates, __ptr_faceIndex, __ptr_strength, __ptr_transform, __ptr_spacingTop, __ptr_spacingBottom, __ptr_spacingSpace, __ptr_spacingGlyph) { __accessPtr in
                                                self.withUnsafeMutableRawPointer { __ptr_self in
                                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                                        Self.__method_binding_find_variation,
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
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_rids: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rids").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func rids() -> Godot.GodotArray<Godot.RID> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_rids,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()

    public func height(
        fontSize: Int32 = 16
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_height,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ascent").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()

    public func ascent(
        fontSize: Int32 = 16
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ascent,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_descent").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()

    public func descent(
        fontSize: Int32 = 16
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_descent,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()

    public func underlinePosition(
        fontSize: Int32 = 16
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_underline_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()

    public func underlineThickness(
        fontSize: Int32 = 16
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_underline_thickness,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_font_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_name").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func fontName() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_font_name,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_font_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_style_name").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func fontStyleName() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_font_style_name,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_ot_name_strings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ot_name_strings").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    public func otNameStrings() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_ot_name_strings,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_font_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_style").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2520224254)!
        }
        }
    }()

    public func fontStyle() -> Godot.TextServer.FontStyle {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_font_style,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_font_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_weight").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func fontWeight() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_font_weight,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_font_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_stretch").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func fontStretch() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_font_stretch,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spacing").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1310880908)!
        }
        }
    }()

    public func spacing(
        _ spacing: Godot.TextServer.SpacingType
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                withUnsafeArgumentPackPointer(__ptr_spacing) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_spacing,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_opentype_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_opentype_features").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    public func opentypeFeatures() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_opentype_features,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_cache_capacity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_capacity").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setCacheCapacity(
        singleLine: Int32,
        multiLine: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: singleLine) { __ptr_singleLine in
            withTransferrableUnsafeRawPointer(to: multiLine) { __ptr_multiLine in
                withUnsafeArgumentPackPointer(__ptr_singleLine, __ptr_multiLine) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_cache_capacity,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_string_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_string_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1868866121)!
        }
        }
    }()

    public func stringSize(
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                    withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                        withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                            withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                    withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                        withUnsafeArgumentPackPointer(__ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                    Self.__method_binding_get_string_size,
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
                }
            }
        }
    }

    internal static var __method_binding_get_multiline_string_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiline_string_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 519636710)!
        }
        }
    }()

    public func multilineStringSize(
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        maxLines: Int32 = -1,
        brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3),
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                    withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                        withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                            withTransferrableUnsafeRawPointer(to: maxLines) { __ptr_maxLines in
                                withTransferrableUnsafeRawPointer(to: brkFlags) { __ptr_brkFlags in
                                    withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                        withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                            withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                                withUnsafeArgumentPackPointer(__ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                                            Self.__method_binding_get_multiline_string_size,
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
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_draw_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1983721962)!
        }
        }
    }()

    public func drawString(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        modulate: Godot.Color = .white,
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
            withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                    withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                        withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                                withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                    withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                        withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                            withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                                            Self.__method_binding_draw_string,
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
                    }
                }
            }
        }
    }

    internal static var __method_binding_draw_multiline_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1171506176)!
        }
        }
    }()

    public func drawMultilineString(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        maxLines: Int32 = -1,
        modulate: Godot.Color = .white,
        brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3),
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
            withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                    withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                        withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                                withTransferrableUnsafeRawPointer(to: maxLines) { __ptr_maxLines in
                                    withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                        withTransferrableUnsafeRawPointer(to: brkFlags) { __ptr_brkFlags in
                                            withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                                withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                                    withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                                        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                                    Self.__method_binding_draw_multiline_string,
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
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_draw_string_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 623754045)!
        }
        }
    }()

    public func drawStringOutline(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        size: Int32 = 1,
        modulate: Godot.Color = .white,
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
            withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                    withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                        withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                                    withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                        withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                            withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                                withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                                    withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_size, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                                Self.__method_binding_draw_string_outline,
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
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3206388178)!
        }
        }
    }()

    public func drawMultilineStringOutline(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        text: Godot.GodotString,
        alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!,
        width: Double = -1,
        fontSize: Int32 = 16,
        maxLines: Int32 = -1,
        size: Int32 = 1,
        modulate: Godot.Color = .white,
        brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3),
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3),
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
            withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                    withTransferrableUnsafeRawPointer(to: alignment) { __ptr_alignment in
                        withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                            withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                                withTransferrableUnsafeRawPointer(to: maxLines) { __ptr_maxLines in
                                    withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                                        withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                            withTransferrableUnsafeRawPointer(to: brkFlags) { __ptr_brkFlags in
                                                withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                                                    withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                                                        withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                                                            withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_size, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { __accessPtr in
                                                                self.withUnsafeMutableRawPointer { __ptr_self in
                                                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                                                        Self.__method_binding_draw_multiline_string_outline,
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
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_char_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_char_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func charSize(
        char: Int,
        fontSize: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                    withUnsafeArgumentPackPointer(__ptr_char, __ptr_fontSize) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_char_size,
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

    internal static var __method_binding_draw_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3815617597)!
        }
        }
    }()

    public func drawChar(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        char: Int,
        fontSize: Int32,
        modulate: Godot.Color = .white
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                        withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                            withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_modulate) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_draw_char,
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
        }
    }

    internal static var __method_binding_draw_char_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char_outline").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 209525354)!
        }
        }
    }()

    public func drawCharOutline(
        canvasItem: Godot.RID,
        pos: Godot.Vector2,
        char: Int,
        fontSize: Int32,
        size: Int32 = -1,
        modulate: Godot.Color = .white
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: canvasItem) { __ptr_canvasItem in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                        withTransferrableUnsafeRawPointer(to: fontSize) { __ptr_fontSize in
                            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                                withTransferrableUnsafeRawPointer(to: modulate) { __ptr_modulate in
                                    withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_size, __ptr_modulate) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_draw_char_outline,
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
            }
        }
    }

    internal static var __method_binding_has_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_char").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func hasChar(
        _ char: Int
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                withUnsafeArgumentPackPointer(__ptr_char) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_char,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_supported_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_chars").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func supportedChars() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_supported_chars,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_language_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_language_supported").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func isLanguageSupported(
        language: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_language_supported,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_script_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_script_supported").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func isScriptSupported(
        script: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                withUnsafeArgumentPackPointer(__ptr_script) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_script_supported,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_supported_feature_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_feature_list").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    public func supportedFeatureList() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_supported_feature_list,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_supported_variation_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_variation_list").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    public func supportedVariationList() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_supported_variation_list,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_face_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_face_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func faceCount() -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_face_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var fallbacks: Godot.GodotArray<Godot.Font?> {
        get {
            __getFallbacks()
        }
        set {
            __setFallbacks(
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