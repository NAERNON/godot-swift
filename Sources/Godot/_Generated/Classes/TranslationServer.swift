//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class TranslationServer: Object {
    private static var __method_binding_set_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setLocale(_ locale: Godot.GodotString) {
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_locale,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func locale() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_locale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_tool_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_tool_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    public func toolLocale() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_tool_locale,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_compare_locales: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compare_locales").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878152881)!
        }
        }
    }()
    public func compareLocales(localeA: Godot.GodotString, localeB: Godot.GodotString) -> Int32 {
        var __temporary = Int32()
        localeA.withUnsafeRawPointer { (__ptr_localeA) in
            localeB.withUnsafeRawPointer { (__ptr_localeB) in
                withUnsafeArgumentPackPointer(__ptr_localeA, __ptr_localeB) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_compare_locales,
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

    private static var __method_binding_standardize_locale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "standardize_locale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func standardizeLocale(_ locale: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_standardize_locale,
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

    private static var __method_binding_get_all_languages: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_all_languages").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func allLanguages() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_all_languages,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_language_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_language_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func languageName(language: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        language.withUnsafeRawPointer { (__ptr_language) in
            withUnsafeArgumentPackPointer(__ptr_language) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_language_name,
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

    private static var __method_binding_get_all_scripts: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_all_scripts").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func allScripts() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_all_scripts,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_script_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_script_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func scriptName(script: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        script.withUnsafeRawPointer { (__ptr_script) in
            withUnsafeArgumentPackPointer(__ptr_script) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_script_name,
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

    private static var __method_binding_get_all_countries: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_all_countries").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func allCountries() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_all_countries,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_country_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_country_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func countryName(country: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        country.withUnsafeRawPointer { (__ptr_country) in
            withUnsafeArgumentPackPointer(__ptr_country) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_country_name,
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

    private static var __method_binding_get_locale_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_locale_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func localeName(locale: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_locale_name,
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

    private static var __method_binding_translate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "translate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 58037827)!
        }
        }
    }()
    public func translate(message: Godot.GodotStringName, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        message.withUnsafeRawPointer { (__ptr_message) in
            context.withUnsafeRawPointer { (__ptr_context) in
                withUnsafeArgumentPackPointer(__ptr_message, __ptr_context) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_translate,
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

    private static var __method_binding_translate_plural: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "translate_plural").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1333931916)!
        }
        }
    }()
    public func translatePlural(message: Godot.GodotStringName, pluralMessage: Godot.GodotStringName, n: Int32, context: Godot.GodotStringName = "") -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        message.withUnsafeRawPointer { (__ptr_message) in
            pluralMessage.withUnsafeRawPointer { (__ptr_pluralMessage) in
                withUnsafePointer(to: n) { (__ptr_n) in
                    context.withUnsafeRawPointer { (__ptr_context) in
                        withUnsafeArgumentPackPointer(__ptr_message, __ptr_pluralMessage, __ptr_n, __ptr_context) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_translate_plural,
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

    private static var __method_binding_add_translation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_translation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1466479800)!
        }
        }
    }()
    public func addTranslation(_ translation: Godot.Translation?) {
        translation.withUnsafeRawPointer { (__ptr_translation) in
            withUnsafePointer(to: __ptr_translation) { (_ptr___ptr_translation) in
                withUnsafeArgumentPackPointer(_ptr___ptr_translation) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_translation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_translation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "remove_translation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1466479800)!
        }
        }
    }()
    public func removeTranslation(_ translation: Godot.Translation?) {
        translation.withUnsafeRawPointer { (__ptr_translation) in
            withUnsafePointer(to: __ptr_translation) { (_ptr___ptr_translation) in
                withUnsafeArgumentPackPointer(_ptr___ptr_translation) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_translation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_translation_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_translation_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2065240175)!
        }
        }
    }()
    public func translationObject(locale: Godot.GodotString) -> Godot.Translation? {
        var __temporary: GDExtensionObjectPtr!
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_translation_object,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Translation.retrievedInstanceManagedByGodot(__temporary)
    }

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

    private static var __method_binding_get_loaded_locales: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_loaded_locales").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func loadedLocales() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_loaded_locales,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_is_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_pseudolocalization_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isPseudolocalizationEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_pseudolocalization_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_pseudolocalization_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPseudolocalizationEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_pseudolocalization_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_reload_pseudolocalization: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "reload_pseudolocalization").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func reloadPseudolocalization() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_reload_pseudolocalization,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_pseudolocalize: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "pseudolocalize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func pseudolocalize(message: Godot.GodotStringName) -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        message.withUnsafeRawPointer { (__ptr_message) in
            withUnsafeArgumentPackPointer(__ptr_message) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_pseudolocalize,
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

    public var isPseudolocalizationEnabled: Bool {
        get {
            __isPseudolocalizationEnabled()
        }
        set {
            __setPseudolocalizationEnabled(
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