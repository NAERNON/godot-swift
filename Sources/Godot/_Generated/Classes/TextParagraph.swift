//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TextParagraph: RefCounted {
    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1418190634)!
        }
        }
    }()
    private func __setDirection(_ direction: Godot.TextServer.Direction) {
        withUnsafePointer(to: direction) { (__ptr_direction) in
            withUnsafeArgumentPackPointer(__ptr_direction) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_direction,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2516697328)!
        }
        }
    }()
    private func __getDirection() -> Godot.TextServer.Direction {
        var __temporary = Godot.TextServer.Direction.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_direction,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TextServer.Direction(rawValue: __temporary)!
    }

    private static var __method_binding_set_custom_punctuation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_custom_punctuation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setCustomPunctuation(_ customPunctuation: Godot.GodotString) {
        customPunctuation.withUnsafeRawPointer { (__ptr_customPunctuation) in
            withUnsafeArgumentPackPointer(__ptr_customPunctuation) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_custom_punctuation,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_custom_punctuation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_custom_punctuation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getCustomPunctuation() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_custom_punctuation,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 42823726)!
        }
        }
    }()
    private func __setOrientation(_ orientation: Godot.TextServer.Orientation) {
        withUnsafePointer(to: orientation) { (__ptr_orientation) in
            withUnsafeArgumentPackPointer(__ptr_orientation) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_orientation,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 175768116)!
        }
        }
    }()
    private func __getOrientation() -> Godot.TextServer.Orientation {
        var __temporary = Godot.TextServer.Orientation.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_orientation,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TextServer.Orientation(rawValue: __temporary)!
    }

    private static var __method_binding_set_preserve_invalid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_preserve_invalid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPreserveInvalid(enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_preserve_invalid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_preserve_invalid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_preserve_invalid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getPreserveInvalid() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_preserve_invalid,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_preserve_control: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_preserve_control").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPreserveControl(enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_preserve_control,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_preserve_control: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_preserve_control").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getPreserveControl() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_preserve_control,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_bidi_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_bidi_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    public func setBidiOverride(_ override: Godot.GodotArray) {
        override.withUnsafeRawPointer { (__ptr_override) in
            withUnsafeArgumentPackPointer(__ptr_override) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_bidi_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_dropcap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_dropcap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2613124475)!
        }
        }
    }()
    public func setDropcap(text: Godot.GodotString, font: Godot.Font?, fontSize: Int32, dropcapMargins: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), language: Godot.GodotString = "") -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            font.withUnsafeRawPointer { (__ptr_font) in
                withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        withUnsafePointer(to: dropcapMargins) { (__ptr_dropcapMargins) in
                            language.withUnsafeRawPointer { (__ptr_language) in
                                withUnsafeArgumentPackPointer(__ptr_text, _ptr___ptr_font, __ptr_fontSize, __ptr_dropcapMargins, __ptr_language) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_set_dropcap,
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

    private static var __method_binding_clear_dropcap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "clear_dropcap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearDropcap() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_dropcap,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_add_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 867188035)!
        }
        }
    }()
    public func addString<Variant1 : ConvertibleToVariant>(text: Godot.GodotString, font: Godot.Font?, fontSize: Int32, language: Godot.GodotString = "", meta: Variant1 = Variant()) -> Bool {
        var __temporary = Bool()
        text.withUnsafeRawPointer { (__ptr_text) in
            font.withUnsafeRawPointer { (__ptr_font) in
                withUnsafePointer(to: __ptr_font) { (_ptr___ptr_font) in
                    withUnsafePointer(to: fontSize) { (__ptr_fontSize) in
                        language.withUnsafeRawPointer { (__ptr_language) in
                            meta.makeVariant().withUnsafeRawPointer { (__ptr_meta) in
                                withUnsafeArgumentPackPointer(__ptr_text, _ptr___ptr_font, __ptr_fontSize, __ptr_language, __ptr_meta) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_add_string,
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

    private static var __method_binding_add_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 735420116)!
        }
        }
    }()
    public func addObject<Variant1 : ConvertibleToVariant>(key: Variant1, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, length: Int32 = 1, baseline: Double = 0.0) -> Bool {
        var __temporary = Bool()
        key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: inlineAlign) { (__ptr_inlineAlign) in
                    withUnsafePointer(to: length) { (__ptr_length) in
                        withUnsafePointer(to: baseline) { (__ptr_baseline) in
                            withUnsafeArgumentPackPointer(__ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_length, __ptr_baseline) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_add_object,
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

    private static var __method_binding_resize_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "resize_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 960819067)!
        }
        }
    }()
    public func resizeObject<Variant1 : ConvertibleToVariant>(key: Variant1, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, baseline: Double = 0.0) -> Bool {
        var __temporary = Bool()
        key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: inlineAlign) { (__ptr_inlineAlign) in
                    withUnsafePointer(to: baseline) { (__ptr_baseline) in
                        withUnsafeArgumentPackPointer(__ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_baseline) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_resize_object,
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

    private static var __method_binding_set_alignment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_alignment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2312603777)!
        }
        }
    }()
    private func __setAlignment(_ alignment: Godot.HorizontalAlignment) {
        withUnsafePointer(to: alignment) { (__ptr_alignment) in
            withUnsafeArgumentPackPointer(__ptr_alignment) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_alignment,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_alignment: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_alignment").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 341400642)!
        }
        }
    }()
    private func __getAlignment() -> Godot.HorizontalAlignment {
        var __temporary = Godot.HorizontalAlignment.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_alignment,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.HorizontalAlignment(rawValue: __temporary)!
    }

    private static var __method_binding_tab_align: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "tab_align").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2899603908)!
        }
        }
    }()
    public func tabAlign(tabStops: Godot.PackedFloat32Array) {
        tabStops.withUnsafeRawPointer { (__ptr_tabStops) in
            withUnsafeArgumentPackPointer(__ptr_tabStops) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_tab_align,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_break_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_break_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2809697122)!
        }
        }
    }()
    private func __setBreakFlags(_ flags: Godot.TextServer.LineBreakFlag) {
        withUnsafePointer(to: flags) { (__ptr_flags) in
            withUnsafeArgumentPackPointer(__ptr_flags) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_break_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_break_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_break_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2340632602)!
        }
        }
    }()
    private func __getBreakFlags() -> Godot.TextServer.LineBreakFlag {
        var __temporary = Godot.TextServer.LineBreakFlag()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_break_flags,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_justification_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_justification_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2877345813)!
        }
        }
    }()
    private func __setJustificationFlags(_ flags: Godot.TextServer.JustificationFlag) {
        withUnsafePointer(to: flags) { (__ptr_flags) in
            withUnsafeArgumentPackPointer(__ptr_flags) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_justification_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_justification_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_justification_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1583363614)!
        }
        }
    }()
    private func __getJustificationFlags() -> Godot.TextServer.JustificationFlag {
        var __temporary = Godot.TextServer.JustificationFlag()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_justification_flags,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_text_overrun_behavior: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_text_overrun_behavior").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1008890932)!
        }
        }
    }()
    private func __setTextOverrunBehavior(_ overrunBehavior: Godot.TextServer.OverrunBehavior) {
        withUnsafePointer(to: overrunBehavior) { (__ptr_overrunBehavior) in
            withUnsafeArgumentPackPointer(__ptr_overrunBehavior) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_text_overrun_behavior,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_text_overrun_behavior: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_text_overrun_behavior").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3779142101)!
        }
        }
    }()
    private func __getTextOverrunBehavior() -> Godot.TextServer.OverrunBehavior {
        var __temporary = Godot.TextServer.OverrunBehavior.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_text_overrun_behavior,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TextServer.OverrunBehavior(rawValue: __temporary)!
    }

    private static var __method_binding_set_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setWidth(_ width: Double) {
        withUnsafePointer(to: width) { (__ptr_width) in
            withUnsafeArgumentPackPointer(__ptr_width) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_width,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getWidth() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_width,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_non_wrapped_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_non_wrapped_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func nonWrappedSize() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_non_wrapped_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func size() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func rid() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_rid,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_line_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 495598643)!
        }
        }
    }()
    public func lineRid(line: Int32) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_rid,
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

    private static var __method_binding_get_dropcap_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_dropcap_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func dropcapRid() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_dropcap_rid,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_line_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func lineCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_line_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_max_lines_visible: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_max_lines_visible").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setMaxLinesVisible(_ maxLinesVisible: Int32) {
        withUnsafePointer(to: maxLinesVisible) { (__ptr_maxLinesVisible) in
            withUnsafeArgumentPackPointer(__ptr_maxLinesVisible) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_max_lines_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_max_lines_visible: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_max_lines_visible").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getMaxLinesVisible() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_max_lines_visible,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_line_objects: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_objects").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 663333327)!
        }
        }
    }()
    public func lineObjects(line: Int32) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_objects,
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

    private static var __method_binding_get_line_object_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_object_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 204315017)!
        }
        }
    }()
    public func lineObjectRect<Variant1 : ConvertibleToVariant>(line: Int32, key: Variant1) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        withUnsafePointer(to: line) { (__ptr_line) in
            key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
                withUnsafeArgumentPackPointer(__ptr_line, __ptr_key) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_line_object_rect,
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

    private static var __method_binding_get_line_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()
    public func lineSize(line: Int32) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_size,
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

    private static var __method_binding_get_line_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 880721226)!
        }
        }
    }()
    public func lineRange(line: Int32) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_range,
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

    private static var __method_binding_get_line_ascent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_ascent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func lineAscent(line: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_ascent,
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

    private static var __method_binding_get_line_descent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_descent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func lineDescent(line: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_descent,
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

    private static var __method_binding_get_line_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func lineWidth(line: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_width,
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

    private static var __method_binding_get_line_underline_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func lineUnderlinePosition(line: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_underline_position,
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

    private static var __method_binding_get_line_underline_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_line_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()
    public func lineUnderlineThickness(line: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: line) { (__ptr_line) in
            withUnsafeArgumentPackPointer(__ptr_line) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_line_underline_thickness,
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

    private static var __method_binding_get_dropcap_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_dropcap_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func dropcapSize() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_dropcap_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_dropcap_lines: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_dropcap_lines").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func dropcapLines() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_dropcap_lines,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 367324453)!
        }
        }
    }()
    public func draw(canvas: Godot.RID, pos: Godot.Vector2, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), dcColor: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafePointer(to: dcColor) { (__ptr_dcColor) in
                        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_color, __ptr_dcColor) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw,
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

    private static var __method_binding_draw_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2159523405)!
        }
        }
    }()
    public func drawOutline(canvas: Godot.RID, pos: Godot.Vector2, outlineSize: Int32 = 1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), dcColor: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: outlineSize) { (__ptr_outlineSize) in
                    withUnsafePointer(to: color) { (__ptr_color) in
                        withUnsafePointer(to: dcColor) { (__ptr_dcColor) in
                            withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_outlineSize, __ptr_color, __ptr_dcColor) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_outline,
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

    private static var __method_binding_draw_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3963848920)!
        }
        }
    }()
    public func drawLine(canvas: Godot.RID, pos: Godot.Vector2, line: Int32, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: line) { (__ptr_line) in
                    withUnsafePointer(to: color) { (__ptr_color) in
                        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_line, __ptr_color) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_line,
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

    private static var __method_binding_draw_line_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_line_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1814903311)!
        }
        }
    }()
    public func drawLineOutline(canvas: Godot.RID, pos: Godot.Vector2, line: Int32, outlineSize: Int32 = 1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: line) { (__ptr_line) in
                    withUnsafePointer(to: outlineSize) { (__ptr_outlineSize) in
                        withUnsafePointer(to: color) { (__ptr_color) in
                            withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_line, __ptr_outlineSize, __ptr_color) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_line_outline,
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

    private static var __method_binding_draw_dropcap: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_dropcap").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1164457837)!
        }
        }
    }()
    public func drawDropcap(canvas: Godot.RID, pos: Godot.Vector2, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: color) { (__ptr_color) in
                    withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_color) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_dropcap,
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

    private static var __method_binding_draw_dropcap_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_dropcap_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1364491366)!
        }
        }
    }()
    public func drawDropcapOutline(canvas: Godot.RID, pos: Godot.Vector2, outlineSize: Int32 = 1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafePointer(to: outlineSize) { (__ptr_outlineSize) in
                    withUnsafePointer(to: color) { (__ptr_color) in
                        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_pos, __ptr_outlineSize, __ptr_color) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_dropcap_outline,
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

    private static var __method_binding_hit_test: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "hit_test").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()
    public func hitTest(coords: Godot.Vector2) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: coords) { (__ptr_coords) in
            withUnsafeArgumentPackPointer(__ptr_coords) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_hit_test,
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

    public var direction: Godot.TextServer.Direction {
        get {
            __getDirection()
        }
        set {
            __setDirection(
                newValue
            )
        }
    }

    public var customPunctuation: Godot.GodotString {
        get {
            __getCustomPunctuation()
        }
        set {
            __setCustomPunctuation(
                newValue
            )
        }
    }

    public var orientation: Godot.TextServer.Orientation {
        get {
            __getOrientation()
        }
        set {
            __setOrientation(
                newValue
            )
        }
    }

    public var preserveInvalid: Bool {
        get {
            __getPreserveInvalid()
        }
        set {
            __setPreserveInvalid(
                enabled: newValue
            )
        }
    }

    public var preserveControl: Bool {
        get {
            __getPreserveControl()
        }
        set {
            __setPreserveControl(
                enabled: newValue
            )
        }
    }

    public var alignment: Godot.HorizontalAlignment {
        get {
            __getAlignment()
        }
        set {
            __setAlignment(
                newValue
            )
        }
    }

    public var breakFlags: Godot.TextServer.LineBreakFlag {
        get {
            __getBreakFlags()
        }
        set {
            __setBreakFlags(
                newValue
            )
        }
    }

    public var justificationFlags: Godot.TextServer.JustificationFlag {
        get {
            __getJustificationFlags()
        }
        set {
            __setJustificationFlags(
                newValue
            )
        }
    }

    public var textOverrunBehavior: Godot.TextServer.OverrunBehavior {
        get {
            __getTextOverrunBehavior()
        }
        set {
            __setTextOverrunBehavior(
                newValue
            )
        }
    }

    public var width: Double {
        get {
            __getWidth()
        }
        set {
            __setWidth(
                newValue
            )
        }
    }

    public var maxLinesVisible: Int32 {
        get {
            __getMaxLinesVisible()
        }
        set {
            __setMaxLinesVisible(
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