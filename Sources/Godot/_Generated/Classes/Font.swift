//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Font: Resource {
    private static var __method_binding_set_fallbacks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fallbacks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    public func setFallbacks(_ fallbacks: Godot.GodotArray<Godot.Font?>) {
        fallbacks.withUnsafeRawPointer { (__ptr_fallbacks) in
            withUnsafeArgumentPackPointer(__ptr_fallbacks) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_fallbacks,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_fallbacks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fallbacks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func fallbacks() -> Godot.GodotArray<Godot.Font?> {
        let __temporary = Godot.GodotArray<Godot.Font?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_fallbacks,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_find_variation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_variation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1149405976)!
        }
        }
    }()
    public func findVariation(variationCoordinates: Godot.GodotDictionary, faceIndex: Int32 = 0, strength: Double = 0.0, transform: Godot.Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0)) -> Godot.RID {
        let __temporary = Godot.RID()
        variationCoordinates.withUnsafeRawPointer { (__ptr_variationCoordinates) in
            withUnsafePointer(to: faceIndex) { (__ptr_faceIndex) in
                withUnsafePointer(to: strength) { (__ptr_strength) in
                    withUnsafePointer(to: transform) { (__ptr_transform) in
                        withUnsafeArgumentPackPointer(__ptr_variationCoordinates, __ptr_faceIndex, __ptr_strength, __ptr_transform) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_find_variation,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_rids: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rids").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func rids() -> Godot.GodotArray<Godot.RID> {
        let __temporary = Godot.GodotArray<Godot.RID>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_rids,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()
    public func height(fontSize: Int32 = 16) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
            withUnsafeArgumentPackPointer(__ptr_fontSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_height,
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

    private static var __method_binding_get_ascent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ascent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()
    public func ascent(fontSize: Int32 = 16) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
            withUnsafeArgumentPackPointer(__ptr_fontSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_ascent,
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

    private static var __method_binding_get_descent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_descent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()
    public func descent(fontSize: Int32 = 16) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
            withUnsafeArgumentPackPointer(__ptr_fontSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_descent,
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

    private static var __method_binding_get_underline_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()
    public func underlinePosition(fontSize: Int32 = 16) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
            withUnsafeArgumentPackPointer(__ptr_fontSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_underline_position,
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

    private static var __method_binding_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 378113874)!
        }
        }
    }()
    public func underlineThickness(fontSize: Int32 = 16) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
            withUnsafeArgumentPackPointer(__ptr_fontSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_underline_thickness,
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

    private static var __method_binding_get_font_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func fontName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_font_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_font_style_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_style_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func fontStyleName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_font_style_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_ot_name_strings: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ot_name_strings").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func otNameStrings() -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_ot_name_strings,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_font_style: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_style").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2520224254)!
        }
        }
    }()
    public func fontStyle() -> Godot.TextServer.FontStyle {
        var __temporary = Godot.TextServer.FontStyle()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_font_style,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_font_weight: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_weight").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func fontWeight() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_font_weight,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_font_stretch: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_stretch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func fontStretch() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_font_stretch,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_spacing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spacing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1310880908)!
        }
        }
    }()
    public func spacing(_ spacing: Godot.TextServer.SpacingType) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: spacing) { (__ptr_spacing) in
            withUnsafeArgumentPackPointer(__ptr_spacing) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_spacing,
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

    private static var __method_binding_get_opentype_features: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_opentype_features").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func opentypeFeatures() -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_opentype_features,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_cache_capacity: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cache_capacity").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setCacheCapacity(singleLine: Int32, multiLine: Int32) {
        withUnsafePointer(to: singleLine) { (__ptr_singleLine) in
            withUnsafePointer(to: multiLine) { (__ptr_multiLine) in
                withUnsafeArgumentPackPointer(__ptr_singleLine, __ptr_multiLine) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_get_string_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_string_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3678918099)!
        }
        }
    }()
    public func stringSize(text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafePointer(to: alignment) { (__ptr_alignment) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                            withUnsafePointer(to: direction) { (__ptr_direction) in
                                withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                    withUnsafeArgumentPackPointer(__ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_get_string_size,
                                                    __ptr_self,
                                                    __accessPtr,
                                                    __ptr___temporary
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
        return __temporary
    }

    private static var __method_binding_get_multiline_string_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_multiline_string_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2427690650)!
        }
        }
    }()
    public func multilineStringSize(text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        text.withUnsafeRawPointer { (__ptr_text) in
            withUnsafePointer(to: alignment) { (__ptr_alignment) in
                withUnsafePointer(to: width) { (__ptr_width) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        withUnsafePointer(to: maxLines) { (__ptr_maxLines) in
                            withUnsafePointer(to: brkFlags) { (__ptr_brkFlags) in
                                withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                    withUnsafePointer(to: direction) { (__ptr_direction) in
                                        withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                            withUnsafeArgumentPackPointer(__ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
                                                            Self.__method_binding_get_multiline_string_size,
                                                            __ptr_self,
                                                            __accessPtr,
                                                            __ptr___temporary
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
        return __temporary
    }

    private static var __method_binding_draw_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2565402639)!
        }
        }
    }()
    public func drawString(canvasItem: Godot.RID, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafePointer(to: alignment) { (__ptr_alignment) in
                        withUnsafePointer(to: width) { (__ptr_width) in
                            withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                    withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                        withUnsafePointer(to: direction) { (__ptr_direction) in
                                            withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                                        gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_draw_multiline_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 348869189)!
        }
        }
    }()
    public func drawMultilineString(canvasItem: Godot.RID, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafePointer(to: alignment) { (__ptr_alignment) in
                        withUnsafePointer(to: width) { (__ptr_width) in
                            withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                withUnsafePointer(to: maxLines) { (__ptr_maxLines) in
                                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                        withUnsafePointer(to: brkFlags) { (__ptr_brkFlags) in
                                            withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                                withUnsafePointer(to: direction) { (__ptr_direction) in
                                                    withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_draw_string_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 657875837)!
        }
        }
    }()
    public func drawStringOutline(canvasItem: Godot.RID, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, size: Int32 = 1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafePointer(to: alignment) { (__ptr_alignment) in
                        withUnsafePointer(to: width) { (__ptr_width) in
                            withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                withUnsafePointer(to: size) { (__ptr_size) in
                                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                        withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                            withUnsafePointer(to: direction) { (__ptr_direction) in
                                                withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                    withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_size, __ptr_modulate, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_multiline_string_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1649790182)!
        }
        }
    }()
    public func drawMultilineStringOutline(canvasItem: Godot.RID, pos: Godot.Vector2, text: Godot.GodotString, alignment: Godot.HorizontalAlignment = HorizontalAlignment(rawValue: 0)!, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, size: Int32 = 1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), brkFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3), justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3), direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafePointer(to: alignment) { (__ptr_alignment) in
                        withUnsafePointer(to: width) { (__ptr_width) in
                            withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                                withUnsafePointer(to: maxLines) { (__ptr_maxLines) in
                                    withUnsafePointer(to: size) { (__ptr_size) in
                                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                            withUnsafePointer(to: brkFlags) { (__ptr_brkFlags) in
                                                withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                                                    withUnsafePointer(to: direction) { (__ptr_direction) in
                                                        withUnsafePointer(to: orientation) { (__ptr_orientation) in
                                                            withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_text, __ptr_alignment, __ptr_width, __ptr_fontSize, __ptr_maxLines, __ptr_size, __ptr_modulate, __ptr_brkFlags, __ptr_justificationFlags, __ptr_direction, __ptr_orientation) { (__accessPtr) in
                                                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                    gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_get_char_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_char_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func charSize(char: Int, fontSize: Int32) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: char) { (__ptr_char) in
            withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                withUnsafeArgumentPackPointer(__ptr_char, __ptr_fontSize) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_char_size,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_char: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1462476057)!
        }
        }
    }()
    public func drawChar(canvasItem: Godot.RID, pos: Godot.Vector2, char: Int, fontSize: Int32, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) -> Double {
        var __temporary = Double()
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: char) { (__ptr_char) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        withUnsafePointer(to: modulate) { (__ptr_modulate) in
                            withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_modulate) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_char,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_char_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_char_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4161008124)!
        }
        }
    }()
    public func drawCharOutline(canvasItem: Godot.RID, pos: Godot.Vector2, char: Int, fontSize: Int32, size: Int32 = -1, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) -> Double {
        var __temporary = Double()
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: char) { (__ptr_char) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        withUnsafePointer(to: size) { (__ptr_size) in
                            withUnsafePointer(to: modulate) { (__ptr_modulate) in
                                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_pos, __ptr_char, __ptr_fontSize, __ptr_size, __ptr_modulate) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_draw_char_outline,
                                                __ptr_self,
                                                __accessPtr,
                                                __ptr___temporary
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
        return __temporary
    }

    private static var __method_binding_has_char: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_char").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func hasChar(_ char: Int) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: char) { (__ptr_char) in
            withUnsafeArgumentPackPointer(__ptr_char) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_char,
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

    private static var __method_binding_get_supported_chars: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_chars").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func supportedChars() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_supported_chars,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_language_supported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_language_supported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isLanguageSupported(language: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        language.withUnsafeRawPointer { (__ptr_language) in
            withUnsafeArgumentPackPointer(__ptr_language) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_language_supported,
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

    private static var __method_binding_is_script_supported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_script_supported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isScriptSupported(script: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        script.withUnsafeRawPointer { (__ptr_script) in
            withUnsafeArgumentPackPointer(__ptr_script) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_script_supported,
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

    private static var __method_binding_get_supported_feature_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_feature_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func supportedFeatureList() -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_supported_feature_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_supported_variation_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_supported_variation_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func supportedVariationList() -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_supported_variation_list,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_face_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_face_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func faceCount() -> Int64 {
        var __temporary = Int64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_face_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
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