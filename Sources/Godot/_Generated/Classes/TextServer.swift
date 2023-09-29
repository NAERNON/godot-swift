//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TextServer: RefCounted {
    public enum FontAntialiasing: UInt32 {
        case none = 0
        case gray = 1
        case lcd = 2
    }
    public enum FontLCDSubpixelLayout: UInt32 {
        case none = 0
        case hrgb = 1
        case hbgr = 2
        case vrgb = 3
        case vbgr = 4
        case max = 5
    }
    public enum Direction: UInt32 {
        case auto = 0
        case ltr = 1
        case rtl = 2
        case inherited = 3
    }
    public enum Orientation: UInt32 {
        case horizontal = 0
        case vertical = 1
    }
    public struct JustificationFlag: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let kashida: Self = .init(rawValue: 1)
        public static let wordBound: Self = .init(rawValue: 2)
        public static let trimEdgeSpaces: Self = .init(rawValue: 4)
        public static let afterLastTab: Self = .init(rawValue: 8)
        public static let constrainEllipsis: Self = .init(rawValue: 16)
        public static let skipLastLine: Self = .init(rawValue: 32)
        public static let skipLastLineWithVisibleChars: Self = .init(rawValue: 64)
        public static let doNotSkipSingleLine: Self = .init(rawValue: 128)
    }
    public enum AutowrapMode: UInt32 {
        case off = 0
        case arbitrary = 1
        case word = 2
        case wordSmart = 3
    }
    public struct LineBreakFlag: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let mandatory: Self = .init(rawValue: 1)
        public static let wordBound: Self = .init(rawValue: 2)
        public static let graphemeBound: Self = .init(rawValue: 4)
        public static let adaptive: Self = .init(rawValue: 8)
        public static let trimEdgeSpaces: Self = .init(rawValue: 16)
    }
    public enum VisibleCharactersBehavior: UInt32 {
        case charsBeforeShaping = 0
        case charsAfterShaping = 1
        case glyphsAuto = 2
        case glyphsLtr = 3
        case glyphsRtl = 4
    }
    public enum OverrunBehavior: UInt32 {
        case noTrimming = 0
        case trimChar = 1
        case trimWord = 2
        case trimEllipsis = 3
        case trimWordEllipsis = 4
    }
    public struct TextOverrunFlag: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let noTrim: Self = .init(rawValue: 0)
        public static let trim: Self = .init(rawValue: 1)
        public static let trimWordOnly: Self = .init(rawValue: 2)
        public static let addEllipsis: Self = .init(rawValue: 4)
        public static let enforceEllipsis: Self = .init(rawValue: 8)
        public static let justificationAware: Self = .init(rawValue: 16)
    }
    public struct GraphemeFlag: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let valid: Self = .init(rawValue: 1)
        public static let rtl: Self = .init(rawValue: 2)
        public static let virtual: Self = .init(rawValue: 4)
        public static let space: Self = .init(rawValue: 8)
        public static let breakHard: Self = .init(rawValue: 16)
        public static let breakSoft: Self = .init(rawValue: 32)
        public static let tab: Self = .init(rawValue: 64)
        public static let elongation: Self = .init(rawValue: 128)
        public static let punctuation: Self = .init(rawValue: 256)
        public static let underscore: Self = .init(rawValue: 512)
        public static let connected: Self = .init(rawValue: 1024)
        public static let safeToInsertTatweel: Self = .init(rawValue: 2048)
        public static let embeddedObject: Self = .init(rawValue: 4096)
    }
    public enum Hinting: UInt32 {
        case none = 0
        case light = 1
        case normal = 2
    }
    public enum SubpixelPositioning: UInt32 {
        case disabled = 0
        case auto = 1
        case oneHalf = 2
        case oneQuarter = 3
        case oneHalfMaxSize = 20
        case oneQuarterMaxSize = 16
    }
    public enum Feature: UInt32 {
        case simpleLayout = 1
        case bidiLayout = 2
        case verticalLayout = 4
        case shaping = 8
        case kashidaJustification = 16
        case breakIterators = 32
        case fontBitmap = 64
        case fontDynamic = 128
        case fontMsdf = 256
        case fontSystem = 512
        case fontVariable = 1024
        case contextSensitiveCaseConversion = 2048
        case useSupportData = 4096
        case unicodeIdentifiers = 8192
        case unicodeSecurity = 16384
    }
    public enum ContourPointTag: UInt32 {
        case on = 1
        case offConic = 0
        case offCubic = 2
    }
    public enum SpacingType: UInt32 {
        case glyph = 0
        case space = 1
        case top = 2
        case bottom = 3
        case max = 4
    }
    public struct FontStyle: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let bold: Self = .init(rawValue: 1)
        public static let italic: Self = .init(rawValue: 2)
        public static let fixedWidth: Self = .init(rawValue: 4)
    }
    public enum StructuredTextParser: UInt32 {
        case `default` = 0
        case uri = 1
        case file = 2
        case email = 3
        case list = 4
        case gdscript = 5
        case custom = 6
    }

    private static var __method_binding_has_feature: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3967367083)!
        }
        }
    }()
    public func hasFeature(_ feature: Godot.TextServer.Feature) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: feature) { (__ptr_feature) in
            withUnsafeArgumentPackPointer(__ptr_feature) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has_feature,
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

    private static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func name() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_features: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_features").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func features() -> Int64 {
        var __temporary = Int64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_features,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_load_support_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_support_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func loadSupportData(filename: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        filename.withUnsafeRawPointer { (__ptr_filename) in
            withUnsafeArgumentPackPointer(__ptr_filename) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_load_support_data,
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

    private static var __method_binding_get_support_data_filename: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_filename").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func supportDataFilename() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_support_data_filename,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_support_data_info: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_info").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func supportDataInfo() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_support_data_info,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_save_support_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_support_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func saveSupportData(filename: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        filename.withUnsafeRawPointer { (__ptr_filename) in
            withUnsafeArgumentPackPointer(__ptr_filename) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_save_support_data,
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

    private static var __method_binding_is_locale_right_to_left: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_locale_right_to_left").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isLocaleRightToLeft(locale: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        locale.withUnsafeRawPointer { (__ptr_locale) in
            withUnsafeArgumentPackPointer(__ptr_locale) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_locale_right_to_left,
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

    private static var __method_binding_name_to_tag: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "name_to_tag").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func nameToTag(name: Godot.GodotString) -> Int64 {
        var __temporary = Int64()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_name_to_tag,
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

    private static var __method_binding_tag_to_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tag_to_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func tagToName(tag: Int64) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: tag) { (__ptr_tag) in
            withUnsafeArgumentPackPointer(__ptr_tag) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_tag_to_name,
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

    private static var __method_binding_has: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func has(rid: Godot.RID) -> Bool {
        var __temporary = Bool()
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_has,
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

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_free_rid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_create_font: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_font").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func createFont() -> Godot.RID {
        let __temporary = Godot.RID()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_font,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_font_set_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1355495400)!
        }
        }
    }()
    public func fontSetData(fontRid: Godot.RID, data: Godot.PackedByteArray) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            data.withUnsafeRawPointer { (__ptr_data) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_data) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_data,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_set_face_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_face_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetFaceIndex(fontRid: Godot.RID, faceIndex: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: faceIndex) { (__ptr_faceIndex) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_faceIndex) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_face_index,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_face_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFaceIndex(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_face_index,
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

    private static var __method_binding_font_get_face_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFaceCount(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_face_count,
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

    private static var __method_binding_font_set_style: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 898466325)!
        }
        }
    }()
    public func fontSetStyle(fontRid: Godot.RID, style: Godot.TextServer.FontStyle) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: style) { (__ptr_style) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_style) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_style,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_style: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3082502592)!
        }
        }
    }()
    public func fontGetStyle(fontRid: Godot.RID) -> Godot.TextServer.FontStyle {
        var __temporary = Godot.TextServer.FontStyle()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_style,
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

    private static var __method_binding_font_set_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontSetName(fontRid: Godot.RID, name: Godot.GodotString) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_name) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetName(fontRid: Godot.RID) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_name,
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

    private static var __method_binding_font_get_ot_name_strings: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ot_name_strings").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetOtNameStrings(fontRid: Godot.RID) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_ot_name_strings,
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

    private static var __method_binding_font_set_style_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontSetStyleName(fontRid: Godot.RID, name: Godot.GodotString) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_name) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_style_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_style_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetStyleName(fontRid: Godot.RID) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_style_name,
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

    private static var __method_binding_font_set_weight: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_weight").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetWeight(fontRid: Godot.RID, weight: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_weight) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_weight,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_weight: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_weight").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetWeight(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_weight,
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

    private static var __method_binding_font_set_stretch: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_stretch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetStretch(fontRid: Godot.RID, weight: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: weight) { (__ptr_weight) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_weight) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_stretch,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_stretch: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_stretch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetStretch(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_stretch,
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

    private static var __method_binding_font_set_antialiasing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_antialiasing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 958337235)!
        }
        }
    }()
    public func fontSetAntialiasing(fontRid: Godot.RID, antialiasing: Godot.TextServer.FontAntialiasing) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: antialiasing) { (__ptr_antialiasing) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_antialiasing) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_antialiasing,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_antialiasing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_antialiasing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3389420495)!
        }
        }
    }()
    public func fontGetAntialiasing(fontRid: Godot.RID) -> Godot.TextServer.FontAntialiasing {
        var __temporary = Godot.TextServer.FontAntialiasing.RawValue(0)
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_antialiasing,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.FontAntialiasing(rawValue: __temporary)!
    }

    private static var __method_binding_font_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_generate_mipmaps").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetGenerateMipmaps(fontRid: Godot.RID, generateMipmaps: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: generateMipmaps) { (__ptr_generateMipmaps) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_generateMipmaps) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_generate_mipmaps,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_generate_mipmaps").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontGetGenerateMipmaps(fontRid: Godot.RID) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_generate_mipmaps,
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

    private static var __method_binding_font_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_multichannel_signed_distance_field").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetMultichannelSignedDistanceField(fontRid: Godot.RID, msdf: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: msdf) { (__ptr_msdf) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdf) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_multichannel_signed_distance_field,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_multichannel_signed_distance_field").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsMultichannelSignedDistanceField(fontRid: Godot.RID) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_is_multichannel_signed_distance_field,
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

    private static var __method_binding_font_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_pixel_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetMsdfPixelRange(fontRid: Godot.RID, msdfPixelRange: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: msdfPixelRange) { (__ptr_msdfPixelRange) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdfPixelRange) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_msdf_pixel_range,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_pixel_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetMsdfPixelRange(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_msdf_pixel_range,
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

    private static var __method_binding_font_set_msdf_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetMsdfSize(fontRid: Godot.RID, msdfSize: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: msdfSize) { (__ptr_msdfSize) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdfSize) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_msdf_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_msdf_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetMsdfSize(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_msdf_size,
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

    private static var __method_binding_font_set_fixed_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_fixed_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetFixedSize(fontRid: Godot.RID, fixedSize: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: fixedSize) { (__ptr_fixedSize) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_fixedSize) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_fixed_size,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_fixed_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_fixed_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFixedSize(fontRid: Godot.RID) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_fixed_size,
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

    private static var __method_binding_font_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_allow_system_fallback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetAllowSystemFallback(fontRid: Godot.RID, allowSystemFallback: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: allowSystemFallback) { (__ptr_allowSystemFallback) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_allowSystemFallback) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_allow_system_fallback,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_allow_system_fallback").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsAllowSystemFallback(fontRid: Godot.RID) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_is_allow_system_fallback,
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

    private static var __method_binding_font_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_force_autohinter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetForceAutohinter(fontRid: Godot.RID, forceAutohinter: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: forceAutohinter) { (__ptr_forceAutohinter) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_forceAutohinter) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_force_autohinter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_force_autohinter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsForceAutohinter(fontRid: Godot.RID) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_is_force_autohinter,
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

    private static var __method_binding_font_set_hinting: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_hinting").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1520010864)!
        }
        }
    }()
    public func fontSetHinting(fontRid: Godot.RID, hinting: Godot.TextServer.Hinting) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: hinting) { (__ptr_hinting) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_hinting) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_hinting,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_hinting: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_hinting").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3971592737)!
        }
        }
    }()
    public func fontGetHinting(fontRid: Godot.RID) -> Godot.TextServer.Hinting {
        var __temporary = Godot.TextServer.Hinting.RawValue(0)
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_hinting,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.Hinting(rawValue: __temporary)!
    }

    private static var __method_binding_font_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_subpixel_positioning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3830459669)!
        }
        }
    }()
    public func fontSetSubpixelPositioning(fontRid: Godot.RID, subpixelPositioning: Godot.TextServer.SubpixelPositioning) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: subpixelPositioning) { (__ptr_subpixelPositioning) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_subpixelPositioning) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_subpixel_positioning,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_subpixel_positioning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2752233671)!
        }
        }
    }()
    public func fontGetSubpixelPositioning(fontRid: Godot.RID) -> Godot.TextServer.SubpixelPositioning {
        var __temporary = Godot.TextServer.SubpixelPositioning.RawValue(0)
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_subpixel_positioning,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.SubpixelPositioning(rawValue: __temporary)!
    }

    private static var __method_binding_font_set_embolden: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_embolden").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func fontSetEmbolden(fontRid: Godot.RID, strength: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: strength) { (__ptr_strength) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_strength) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_embolden,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_embolden: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_embolden").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func fontGetEmbolden(fontRid: Godot.RID) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_embolden,
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

    private static var __method_binding_font_set_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func fontSetTransform(fontRid: Godot.RID, transform: Godot.Transform2D) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: transform) { (__ptr_transform) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_transform) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_transform,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_transform: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_transform").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 213527486)!
        }
        }
    }()
    public func fontGetTransform(fontRid: Godot.RID) -> Godot.Transform2D {
        var __temporary = Godot.Transform2D()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_transform,
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

    private static var __method_binding_font_set_variation_coordinates: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_variation_coordinates").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()
    public func fontSetVariationCoordinates(fontRid: Godot.RID, variationCoordinates: Godot.GodotDictionary) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            variationCoordinates.withUnsafeRawPointer { (__ptr_variationCoordinates) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_variationCoordinates) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_variation_coordinates,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_variation_coordinates: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_variation_coordinates").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetVariationCoordinates(fontRid: Godot.RID) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_variation_coordinates,
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

    private static var __method_binding_font_set_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func fontSetOversampling(fontRid: Godot.RID, oversampling: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: oversampling) { (__ptr_oversampling) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_oversampling) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_oversampling,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func fontGetOversampling(fontRid: Godot.RID) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_oversampling,
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

    private static var __method_binding_font_get_size_cache_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_size_cache_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func fontGetSizeCacheList(fontRid: Godot.RID) -> Godot.GodotTypedArray<Godot.Vector2i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector2i>()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_size_cache_list,
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

    private static var __method_binding_font_clear_size_cache: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_size_cache").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func fontClearSizeCache(fontRid: Godot.RID) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_font_clear_size_cache,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_font_remove_size_cache: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_size_cache").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontRemoveSizeCache(fontRid: Godot.RID, size: Godot.Vector2i) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_remove_size_cache,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_set_ascent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_ascent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetAscent(fontRid: Godot.RID, size: Int64, ascent: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: ascent) { (__ptr_ascent) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_ascent) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_ascent,
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

    private static var __method_binding_font_get_ascent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ascent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetAscent(fontRid: Godot.RID, size: Int64) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_ascent,
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

    private static var __method_binding_font_set_descent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_descent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetDescent(fontRid: Godot.RID, size: Int64, descent: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: descent) { (__ptr_descent) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_descent) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_descent,
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

    private static var __method_binding_font_get_descent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_descent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetDescent(fontRid: Godot.RID, size: Int64) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_descent,
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

    private static var __method_binding_font_set_underline_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetUnderlinePosition(fontRid: Godot.RID, size: Int64, underlinePosition: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: underlinePosition) { (__ptr_underlinePosition) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_underlinePosition) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_underline_position,
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

    private static var __method_binding_font_get_underline_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetUnderlinePosition(fontRid: Godot.RID, size: Int64) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_underline_position,
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

    private static var __method_binding_font_set_underline_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetUnderlineThickness(fontRid: Godot.RID, size: Int64, underlineThickness: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: underlineThickness) { (__ptr_underlineThickness) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_underlineThickness) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_underline_thickness,
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

    private static var __method_binding_font_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetUnderlineThickness(fontRid: Godot.RID, size: Int64) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_underline_thickness,
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

    private static var __method_binding_font_set_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetScale(fontRid: Godot.RID, size: Int64, scale: Double) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: scale) { (__ptr_scale) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_scale) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_scale,
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

    private static var __method_binding_font_get_scale: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_scale").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetScale(fontRid: Godot.RID, size: Int64) -> Double {
        var __temporary = Double()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_scale,
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

    private static var __method_binding_font_get_texture_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1311001310)!
        }
        }
    }()
    public func fontGetTextureCount(fontRid: Godot.RID, size: Godot.Vector2i) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_texture_count,
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

    private static var __method_binding_font_clear_textures: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_textures").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontClearTextures(fontRid: Godot.RID, size: Godot.Vector2i) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_clear_textures,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_remove_texture: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_texture").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRemoveTexture(fontRid: Godot.RID, size: Godot.Vector2i, textureIndex: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: textureIndex) { (__ptr_textureIndex) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_remove_texture,
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

    private static var __method_binding_font_set_texture_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2354485091)!
        }
        }
    }()
    public func fontSetTextureImage(fontRid: Godot.RID, size: Godot.Vector2i, textureIndex: Int64, image: Godot.Image?) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: textureIndex) { (__ptr_textureIndex) in
                    image.withUnsafeRawPointer { (__ptr_image) in
                        withUnsafePointer(to: __ptr_image) { (_ptr___ptr_image) in
                            withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex, _ptr___ptr_image) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_font_set_texture_image,
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

    private static var __method_binding_font_get_texture_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2451761155)!
        }
        }
    }()
    public func fontGetTextureImage(fontRid: Godot.RID, size: Godot.Vector2i, textureIndex: Int64) -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: textureIndex) { (__ptr_textureIndex) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_texture_image,
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
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_font_set_texture_offsets: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_offsets").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3005398047)!
        }
        }
    }()
    public func fontSetTextureOffsets(fontRid: Godot.RID, size: Godot.Vector2i, textureIndex: Int64, offset: Godot.PackedInt32Array) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: textureIndex) { (__ptr_textureIndex) in
                    offset.withUnsafeRawPointer { (__ptr_offset) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex, __ptr_offset) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_texture_offsets,
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

    private static var __method_binding_font_get_texture_offsets: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_offsets").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3420028887)!
        }
        }
    }()
    public func fontGetTextureOffsets(fontRid: Godot.RID, size: Godot.Vector2i, textureIndex: Int64) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: textureIndex) { (__ptr_textureIndex) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_texture_offsets,
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
        return __temporary
    }

    private static var __method_binding_font_get_glyph_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 46086620)!
        }
        }
    }()
    public func fontGetGlyphList(fontRid: Godot.RID, size: Godot.Vector2i) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_glyph_list,
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

    private static var __method_binding_font_clear_glyphs: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_glyphs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontClearGlyphs(fontRid: Godot.RID, size: Godot.Vector2i) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_clear_glyphs,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_remove_glyph: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_glyph").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRemoveGlyph(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_remove_glyph,
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

    private static var __method_binding_font_get_glyph_advance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_advance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2555689501)!
        }
        }
    }()
    public func fontGetGlyphAdvance(fontRid: Godot.RID, size: Int64, glyph: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_advance,
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
        return __temporary
    }

    private static var __method_binding_font_set_glyph_advance: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_advance").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3219397315)!
        }
        }
    }()
    public func fontSetGlyphAdvance(fontRid: Godot.RID, size: Int64, glyph: Int64, advance: Godot.Vector2) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafePointer(to: advance) { (__ptr_advance) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_advance) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_glyph_advance,
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

    private static var __method_binding_font_get_glyph_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphOffset(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_offset,
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
        return __temporary
    }

    private static var __method_binding_font_set_glyph_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()
    public func fontSetGlyphOffset(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64, offset: Godot.Vector2) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafePointer(to: offset) { (__ptr_offset) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_offset) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_glyph_offset,
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

    private static var __method_binding_font_get_glyph_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphSize(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_size,
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
        return __temporary
    }

    private static var __method_binding_font_set_glyph_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()
    public func fontSetGlyphSize(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64, glSize: Godot.Vector2) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafePointer(to: glSize) { (__ptr_glSize) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_glSize) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_glyph_size,
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

    private static var __method_binding_font_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_uv_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2274268786)!
        }
        }
    }()
    public func fontGetGlyphUvRect(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_uv_rect,
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
        return __temporary
    }

    private static var __method_binding_font_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_uv_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1973324081)!
        }
        }
    }()
    public func fontSetGlyphUvRect(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64, uvRect: Godot.Rect2) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafePointer(to: uvRect) { (__ptr_uvRect) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_uvRect) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_glyph_uv_rect,
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

    private static var __method_binding_font_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_idx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4292800474)!
        }
        }
    }()
    public func fontGetGlyphTextureIdx(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_texture_idx,
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
        return __temporary
    }

    private static var __method_binding_font_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_texture_idx").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()
    public func fontSetGlyphTextureIdx(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64, textureIdx: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafePointer(to: textureIdx) { (__ptr_textureIdx) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_textureIdx) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_glyph_texture_idx,
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

    private static var __method_binding_font_get_glyph_texture_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1451696141)!
        }
        }
    }()
    public func fontGetGlyphTextureRid(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Godot.RID {
        let __temporary = Godot.RID()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_texture_rid,
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
        return __temporary
    }

    private static var __method_binding_font_get_glyph_texture_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphTextureSize(fontRid: Godot.RID, size: Godot.Vector2i, glyph: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyph) { (__ptr_glyph) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_texture_size,
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
        return __temporary
    }

    private static var __method_binding_font_get_glyph_contours: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_contours").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2903964473)!
        }
        }
    }()
    public func fontGetGlyphContours(font: Godot.RID, size: Int64, index: Int64) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        font.withUnsafeRawPointer { (__ptr_font) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: index) { (__ptr_index) in
                    withUnsafeArgumentPackPointer(__ptr_font, __ptr_size, __ptr_index) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_glyph_contours,
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
        return __temporary
    }

    private static var __method_binding_font_get_kerning_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1778388067)!
        }
        }
    }()
    public func fontGetKerningList(fontRid: Godot.RID, size: Int64) -> Godot.GodotTypedArray<Godot.Vector2i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector2i>()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_kerning_list,
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

    private static var __method_binding_font_clear_kerning_map: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_kerning_map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontClearKerningMap(fontRid: Godot.RID, size: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_clear_kerning_map,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_remove_kerning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_kerning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2141860016)!
        }
        }
    }()
    public func fontRemoveKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2i) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyphPair) { (__ptr_glyphPair) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_remove_kerning,
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

    private static var __method_binding_font_set_kerning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_kerning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3630965883)!
        }
        }
    }()
    public func fontSetKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2i, kerning: Godot.Vector2) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyphPair) { (__ptr_glyphPair) in
                    withUnsafePointer(to: kerning) { (__ptr_kerning) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair, __ptr_kerning) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_set_kerning,
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

    private static var __method_binding_font_get_kerning: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1019980169)!
        }
        }
    }()
    public func fontGetKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2i) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyphPair) { (__ptr_glyphPair) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_kerning,
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
        return __temporary
    }

    private static var __method_binding_font_get_glyph_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1765635060)!
        }
        }
    }()
    public func fontGetGlyphIndex(fontRid: Godot.RID, size: Int64, char: Int64, variationSelector: Int64) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: char) { (__ptr_char) in
                    withUnsafePointer(to: variationSelector) { (__ptr_variationSelector) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_char, __ptr_variationSelector) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_font_get_glyph_index,
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

    private static var __method_binding_font_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_char_from_glyph_index").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2156738276)!
        }
        }
    }()
    public func fontGetCharFromGlyphIndex(fontRid: Godot.RID, size: Int64, glyphIndex: Int64) -> Int64 {
        var __temporary = Int64()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: glyphIndex) { (__ptr_glyphIndex) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphIndex) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_get_char_from_glyph_index,
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
        return __temporary
    }

    private static var __method_binding_font_has_char: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_has_char").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3120086654)!
        }
        }
    }()
    public func fontHasChar(fontRid: Godot.RID, char: Int64) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: char) { (__ptr_char) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_char) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_has_char,
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

    private static var __method_binding_font_get_supported_chars: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_supported_chars").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetSupportedChars(fontRid: Godot.RID) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_supported_chars,
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

    private static var __method_binding_font_render_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()
    public func fontRenderRange(fontRid: Godot.RID, size: Godot.Vector2i, start: Int64, end: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: start) { (__ptr_start) in
                    withUnsafePointer(to: end) { (__ptr_end) in
                        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_start, __ptr_end) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_font_render_range,
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

    private static var __method_binding_font_render_glyph: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_glyph").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRenderGlyph(fontRid: Godot.RID, size: Godot.Vector2i, index: Int64) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: index) { (__ptr_index) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_index) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_render_glyph,
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

    private static var __method_binding_font_draw_glyph: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1821196351)!
        }
        }
    }()
    public func fontDrawGlyph(fontRid: Godot.RID, canvas: Godot.RID, size: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            canvas.withUnsafeRawPointer { (__ptr_canvas) in
                withUnsafePointer(to: size) { (__ptr_size) in
                    withUnsafePointer(to: pos) { (__ptr_pos) in
                        withUnsafePointer(to: index) { (__ptr_index) in
                            withUnsafePointer(to: color) { (__ptr_color) in
                                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_font_draw_glyph,
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

    private static var __method_binding_font_draw_glyph_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1124898203)!
        }
        }
    }()
    public func fontDrawGlyphOutline(fontRid: Godot.RID, canvas: Godot.RID, size: Int64, outlineSize: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            canvas.withUnsafeRawPointer { (__ptr_canvas) in
                withUnsafePointer(to: size) { (__ptr_size) in
                    withUnsafePointer(to: outlineSize) { (__ptr_outlineSize) in
                        withUnsafePointer(to: pos) { (__ptr_pos) in
                            withUnsafePointer(to: index) { (__ptr_index) in
                                withUnsafePointer(to: color) { (__ptr_color) in
                                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_canvas, __ptr_size, __ptr_outlineSize, __ptr_pos, __ptr_index, __ptr_color) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_font_draw_glyph_outline,
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

    private static var __method_binding_font_is_language_supported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_language_supported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()
    public func fontIsLanguageSupported(fontRid: Godot.RID, language: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_is_language_supported,
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

    private static var __method_binding_font_set_language_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_language_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()
    public func fontSetLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString, supported: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafePointer(to: supported) { (__ptr_supported) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language, __ptr_supported) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_language_support_override,
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

    private static var __method_binding_font_get_language_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()
    public func fontGetLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_language_support_override,
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

    private static var __method_binding_font_remove_language_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_language_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontRemoveLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_remove_language_support_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_language_support_overrides: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_overrides").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()
    public func fontGetLanguageSupportOverrides(fontRid: Godot.RID) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_language_support_overrides,
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

    private static var __method_binding_font_is_script_supported: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_script_supported").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()
    public func fontIsScriptSupported(fontRid: Godot.RID, script: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            script.withUnsafeRawPointer { (__ptr_script) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_is_script_supported,
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

    private static var __method_binding_font_set_script_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_script_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()
    public func fontSetScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString, supported: Bool) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            script.withUnsafeRawPointer { (__ptr_script) in
                withUnsafePointer(to: supported) { (__ptr_supported) in
                    withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script, __ptr_supported) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_set_script_support_override,
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

    private static var __method_binding_font_get_script_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()
    public func fontGetScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            script.withUnsafeRawPointer { (__ptr_script) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_font_get_script_support_override,
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

    private static var __method_binding_font_remove_script_support_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_script_support_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontRemoveScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            script.withUnsafeRawPointer { (__ptr_script) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_remove_script_support_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_script_support_overrides: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_overrides").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()
    public func fontGetScriptSupportOverrides(fontRid: Godot.RID) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_script_support_overrides,
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

    private static var __method_binding_font_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_opentype_feature_overrides").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()
    public func fontSetOpentypeFeatureOverrides(fontRid: Godot.RID, overrides: Godot.GodotDictionary) {
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            overrides.withUnsafeRawPointer { (__ptr_overrides) in
                withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_overrides) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_set_opentype_feature_overrides,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_font_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_opentype_feature_overrides").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetOpentypeFeatureOverrides(fontRid: Godot.RID) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_get_opentype_feature_overrides,
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

    private static var __method_binding_font_supported_feature_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_feature_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontSupportedFeatureList(fontRid: Godot.RID) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_supported_feature_list,
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

    private static var __method_binding_font_supported_variation_list: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_variation_list").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontSupportedVariationList(fontRid: Godot.RID) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        fontRid.withUnsafeRawPointer { (__ptr_fontRid) in
            withUnsafeArgumentPackPointer(__ptr_fontRid) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_font_supported_variation_list,
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

    private static var __method_binding_font_get_global_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_global_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func fontGetGlobalOversampling() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_font_get_global_oversampling,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_font_set_global_oversampling: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_global_oversampling").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func fontSetGlobalOversampling(_ oversampling: Double) {
        withUnsafePointer(to: oversampling) { (__ptr_oversampling) in
            withUnsafeArgumentPackPointer(__ptr_oversampling) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_font_set_global_oversampling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_hex_code_box_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hex_code_box_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func hexCodeBoxSize(_ size: Int64, index: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafePointer(to: index) { (__ptr_index) in
                withUnsafeArgumentPackPointer(__ptr_size, __ptr_index) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_hex_code_box_size,
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

    private static var __method_binding_draw_hex_code_box: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_hex_code_box").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602046441)!
        }
        }
    }()
    public func drawHexCodeBox(canvas: Godot.RID, size: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color) {
        canvas.withUnsafeRawPointer { (__ptr_canvas) in
            withUnsafePointer(to: size) { (__ptr_size) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    withUnsafePointer(to: index) { (__ptr_index) in
                        withUnsafePointer(to: color) { (__ptr_color) in
                            withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_hex_code_box,
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

    private static var __method_binding_create_shaped_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_shaped_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1231398698)!
        }
        }
    }()
    public func createShapedText(direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: direction) { (__ptr_direction) in
            withUnsafePointer(to: orientation) { (__ptr_orientation) in
                withUnsafeArgumentPackPointer(__ptr_direction, __ptr_orientation) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_create_shaped_text,
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

    private static var __method_binding_shaped_text_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func shapedTextClear(rid: Godot.RID) {
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_shaped_text_clear,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_shaped_text_set_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2616949700)!
        }
        }
    }()
    public func shapedTextSetDirection(shaped: Godot.RID, direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: direction) { (__ptr_direction) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_direction) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_direction,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_get_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()
    public func shapedTextGetDirection(shaped: Godot.RID) -> Godot.TextServer.Direction {
        var __temporary = Godot.TextServer.Direction.RawValue(0)
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_direction,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.Direction(rawValue: __temporary)!
    }

    private static var __method_binding_shaped_text_get_inferred_direction: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_inferred_direction").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()
    public func shapedTextGetInferredDirection(shaped: Godot.RID) -> Godot.TextServer.Direction {
        var __temporary = Godot.TextServer.Direction.RawValue(0)
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_inferred_direction,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.Direction(rawValue: __temporary)!
    }

    private static var __method_binding_shaped_text_set_bidi_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_bidi_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 684822712)!
        }
        }
    }()
    public func shapedTextSetBidiOverride(shaped: Godot.RID, override: Godot.GodotArray) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            override.withUnsafeRawPointer { (__ptr_override) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_override) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_bidi_override,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_set_custom_punctuation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_custom_punctuation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func shapedTextSetCustomPunctuation(shaped: Godot.RID, punct: Godot.GodotString) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            punct.withUnsafeRawPointer { (__ptr_punct) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_punct) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_custom_punctuation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_get_custom_punctuation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_custom_punctuation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func shapedTextGetCustomPunctuation(shaped: Godot.RID) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_custom_punctuation,
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

    private static var __method_binding_shaped_text_set_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 104095128)!
        }
        }
    }()
    public func shapedTextSetOrientation(shaped: Godot.RID, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: orientation) { (__ptr_orientation) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_orientation) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_orientation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_get_orientation: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_orientation").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3142708106)!
        }
        }
    }()
    public func shapedTextGetOrientation(shaped: Godot.RID) -> Godot.TextServer.Orientation {
        var __temporary = Godot.TextServer.Orientation.RawValue(0)
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_orientation,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TextServer.Orientation(rawValue: __temporary)!
    }

    private static var __method_binding_shaped_text_set_preserve_invalid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_invalid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func shapedTextSetPreserveInvalid(shaped: Godot.RID, enabled: Bool) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_preserve_invalid,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_get_preserve_invalid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_invalid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextGetPreserveInvalid(shaped: Godot.RID) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_preserve_invalid,
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

    private static var __method_binding_shaped_text_set_preserve_control: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_control").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func shapedTextSetPreserveControl(shaped: Godot.RID, enabled: Bool) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: enabled) { (__ptr_enabled) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_set_preserve_control,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_shaped_text_get_preserve_control: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_control").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextGetPreserveControl(shaped: Godot.RID) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_preserve_control,
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

    private static var __method_binding_shaped_text_set_spacing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_spacing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1307259930)!
        }
        }
    }()
    public func shapedTextSetSpacing(shaped: Godot.RID, spacing: Godot.TextServer.SpacingType, value: Int64) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: spacing) { (__ptr_spacing) in
                withUnsafePointer(to: value) { (__ptr_value) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing, __ptr_value) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_set_spacing,
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

    private static var __method_binding_shaped_text_get_spacing: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_spacing").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1213653558)!
        }
        }
    }()
    public func shapedTextGetSpacing(shaped: Godot.RID, spacing: Godot.TextServer.SpacingType) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: spacing) { (__ptr_spacing) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_get_spacing,
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

    private static var __method_binding_shaped_text_add_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2621279422)!
        }
        }
    }()
    public func shapedTextAddString<Variant1 : ConvertibleToVariant>(shaped: Godot.RID, text: Godot.GodotString, fonts: Godot.GodotTypedArray<Godot.RID>, size: Int64, opentypeFeatures: Godot.GodotDictionary = [:], language: Godot.GodotString = "", meta: Variant1 = Variant()) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            text.withUnsafeRawPointer { (__ptr_text) in
                fonts.withUnsafeRawPointer { (__ptr_fonts) in
                    withUnsafePointer(to: size) { (__ptr_size) in
                        opentypeFeatures.withUnsafeRawPointer { (__ptr_opentypeFeatures) in
                            language.withUnsafeRawPointer { (__ptr_language) in
                                meta.makeVariant().withUnsafeRawPointer { (__ptr_meta) in
                                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_text, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures, __ptr_language, __ptr_meta) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_shaped_text_add_string,
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

    private static var __method_binding_shaped_text_add_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2838446185)!
        }
        }
    }()
    public func shapedTextAddObject<Variant1 : ConvertibleToVariant>(shaped: Godot.RID, key: Variant1, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, length: Int64 = 1, baseline: Double = 0.0) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
                withUnsafePointer(to: size) { (__ptr_size) in
                    withUnsafePointer(to: inlineAlign) { (__ptr_inlineAlign) in
                        withUnsafePointer(to: length) { (__ptr_length) in
                            withUnsafePointer(to: baseline) { (__ptr_baseline) in
                                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_length, __ptr_baseline) { (__accessPtr) in
                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_shaped_text_add_object,
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

    private static var __method_binding_shaped_text_resize_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_resize_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2353789835)!
        }
        }
    }()
    public func shapedTextResizeObject<Variant1 : ConvertibleToVariant>(shaped: Godot.RID, key: Variant1, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, baseline: Double = 0.0) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
                withUnsafePointer(to: size) { (__ptr_size) in
                    withUnsafePointer(to: inlineAlign) { (__ptr_inlineAlign) in
                        withUnsafePointer(to: baseline) { (__ptr_baseline) in
                            withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_baseline) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_shaped_text_resize_object,
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

    private static var __method_binding_shaped_get_span_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedGetSpanCount(shaped: Godot.RID) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_get_span_count,
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

    private static var __method_binding_shaped_get_span_meta: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_meta").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4069510997)!
        }
        }
    }()
    public func shapedGetSpanMeta(shaped: Godot.RID, index: Int64) -> Godot.Variant {
        let __temporary = Godot.Variant()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: index) { (__ptr_index) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_get_span_meta,
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

    private static var __method_binding_shaped_set_span_update_font: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_set_span_update_font").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1578983057)!
        }
        }
    }()
    public func shapedSetSpanUpdateFont(shaped: Godot.RID, index: Int64, fonts: Godot.GodotTypedArray<Godot.RID>, size: Int64, opentypeFeatures: Godot.GodotDictionary = [:]) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: index) { (__ptr_index) in
                fonts.withUnsafeRawPointer { (__ptr_fonts) in
                    withUnsafePointer(to: size) { (__ptr_size) in
                        opentypeFeatures.withUnsafeRawPointer { (__ptr_opentypeFeatures) in
                            withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_shaped_set_span_update_font,
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

    private static var __method_binding_shaped_text_substr: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_substr").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1937682086)!
        }
        }
    }()
    public func shapedTextSubstr(shaped: Godot.RID, start: Int64, length: Int64) -> Godot.RID {
        let __temporary = Godot.RID()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: start) { (__ptr_start) in
                withUnsafePointer(to: length) { (__ptr_length) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_length) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shaped_text_substr,
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
        return __temporary
    }

    private static var __method_binding_shaped_text_get_parent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_parent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func shapedTextGetParent(shaped: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_parent,
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

    private static var __method_binding_shaped_text_fit_to_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_fit_to_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 603718830)!
        }
        }
    }()
    public func shapedTextFitToWidth(shaped: Godot.RID, width: Double, justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3)) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: width) { (__ptr_width) in
                withUnsafePointer(to: justificationFlags) { (__ptr_justificationFlags) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_justificationFlags) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shaped_text_fit_to_width,
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
        return __temporary
    }

    private static var __method_binding_shaped_text_tab_align: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_tab_align").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1283669550)!
        }
        }
    }()
    public func shapedTextTabAlign(shaped: Godot.RID, tabStops: Godot.PackedFloat32Array) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            tabStops.withUnsafeRawPointer { (__ptr_tabStops) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_tabStops) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_tab_align,
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

    private static var __method_binding_shaped_text_shape: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_shape").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func shapedTextShape(shaped: Godot.RID) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_shape,
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

    private static var __method_binding_shaped_text_is_ready: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_is_ready").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextIsReady(shaped: Godot.RID) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_is_ready,
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

    private static var __method_binding_shaped_text_has_visible_chars: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_has_visible_chars").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextHasVisibleChars(shaped: Godot.RID) -> Bool {
        var __temporary = Bool()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_has_visible_chars,
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

    private static var __method_binding_shaped_text_get_glyphs: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyphs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetGlyphs(shaped: Godot.RID) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_glyphs,
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

    private static var __method_binding_shaped_text_sort_logical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_sort_logical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2670461153)!
        }
        }
    }()
    public func shapedTextSortLogical(shaped: Godot.RID) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_sort_logical,
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

    private static var __method_binding_shaped_text_get_glyph_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyph_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetGlyphCount(shaped: Godot.RID) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_glyph_count,
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

    private static var __method_binding_shaped_text_get_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 733700038)!
        }
        }
    }()
    public func shapedTextGetRange(shaped: Godot.RID) -> Godot.Vector2i {
        var __temporary = Godot.Vector2i()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_range,
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

    private static var __method_binding_shaped_text_get_line_breaks_adv: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks_adv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4206849830)!
        }
        }
    }()
    public func shapedTextGetLineBreaksAdv(shaped: Godot.RID, width: Godot.PackedFloat32Array, start: Int64 = 0, once: Bool = true, breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            width.withUnsafeRawPointer { (__ptr_width) in
                withUnsafePointer(to: start) { (__ptr_start) in
                    withUnsafePointer(to: once) { (__ptr_once) in
                        withUnsafePointer(to: breakFlags) { (__ptr_breakFlags) in
                            withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_once, __ptr_breakFlags) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_shaped_text_get_line_breaks_adv,
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

    private static var __method_binding_shaped_text_get_line_breaks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 303410369)!
        }
        }
    }()
    public func shapedTextGetLineBreaks(shaped: Godot.RID, width: Double, start: Int64 = 0, breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: width) { (__ptr_width) in
                withUnsafePointer(to: start) { (__ptr_start) in
                    withUnsafePointer(to: breakFlags) { (__ptr_breakFlags) in
                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_breakFlags) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_shaped_text_get_line_breaks,
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

    private static var __method_binding_shaped_text_get_word_breaks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_word_breaks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3299477123)!
        }
        }
    }()
    public func shapedTextGetWordBreaks(shaped: Godot.RID, graphemeFlags: Godot.TextServer.GraphemeFlag = TextServer.GraphemeFlag(rawValue: 264)) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: graphemeFlags) { (__ptr_graphemeFlags) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_graphemeFlags) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_get_word_breaks,
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

    private static var __method_binding_shaped_text_get_trim_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_trim_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetTrimPos(shaped: Godot.RID) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_trim_pos,
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

    private static var __method_binding_shaped_text_get_ellipsis_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetEllipsisPos(shaped: Godot.RID) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_pos,
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

    private static var __method_binding_shaped_text_get_ellipsis_glyphs: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyphs").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetEllipsisGlyphs(shaped: Godot.RID) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        let __temporary = Godot.GodotTypedArray<Godot.GodotDictionary>()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_glyphs,
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

    private static var __method_binding_shaped_text_get_ellipsis_glyph_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyph_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetEllipsisGlyphCount(shaped: Godot.RID) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_glyph_count,
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

    private static var __method_binding_shaped_text_overrun_trim_to_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_overrun_trim_to_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1572579718)!
        }
        }
    }()
    public func shapedTextOverrunTrimToWidth(shaped: Godot.RID, width: Double = 0, overrunTrimFlags: Godot.TextServer.TextOverrunFlag = TextServer.TextOverrunFlag(rawValue: 0)) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: width) { (__ptr_width) in
                withUnsafePointer(to: overrunTrimFlags) { (__ptr_overrunTrimFlags) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_overrunTrimFlags) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_overrun_trim_to_width,
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

    private static var __method_binding_shaped_text_get_objects: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_objects").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetObjects(shaped: Godot.RID) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_objects,
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

    private static var __method_binding_shaped_text_get_object_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_object_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 447978354)!
        }
        }
    }()
    public func shapedTextGetObjectRect<Variant1 : ConvertibleToVariant>(shaped: Godot.RID, key: Variant1) -> Godot.Rect2 {
        var __temporary = Godot.Rect2()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_get_object_rect,
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

    private static var __method_binding_shaped_text_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()
    public func shapedTextGetSize(shaped: Godot.RID) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_size,
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

    private static var __method_binding_shaped_text_get_ascent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ascent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetAscent(shaped: Godot.RID) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_ascent,
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

    private static var __method_binding_shaped_text_get_descent: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_descent").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetDescent(shaped: Godot.RID) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_descent,
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

    private static var __method_binding_shaped_text_get_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetWidth(shaped: Godot.RID) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_width,
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

    private static var __method_binding_shaped_text_get_underline_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetUnderlinePosition(shaped: Godot.RID) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_underline_position,
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

    private static var __method_binding_shaped_text_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_thickness").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetUnderlineThickness(shaped: Godot.RID) -> Double {
        var __temporary = Double()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafeArgumentPackPointer(__ptr_shaped) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shaped_text_get_underline_thickness,
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

    private static var __method_binding_shaped_text_get_carets: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_carets").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1574219346)!
        }
        }
    }()
    public func shapedTextGetCarets(shaped: Godot.RID, position: Int64) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_position) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_get_carets,
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

    private static var __method_binding_shaped_text_get_selection: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_selection").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3714187733)!
        }
        }
    }()
    public func shapedTextGetSelection(shaped: Godot.RID, start: Int64, end: Int64) -> Godot.PackedVector2Array {
        let __temporary = Godot.PackedVector2Array()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: start) { (__ptr_start) in
                withUnsafePointer(to: end) { (__ptr_end) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shaped_text_get_selection,
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
        return __temporary
    }

    private static var __method_binding_shaped_text_hit_test_grapheme: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_grapheme").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()
    public func shapedTextHitTestGrapheme(shaped: Godot.RID, coords: Double) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_hit_test_grapheme,
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

    private static var __method_binding_shaped_text_hit_test_position: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_position").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()
    public func shapedTextHitTestPosition(shaped: Godot.RID, coords: Double) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: coords) { (__ptr_coords) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_hit_test_position,
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

    private static var __method_binding_shaped_text_get_grapheme_bounds: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_grapheme_bounds").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2546185844)!
        }
        }
    }()
    public func shapedTextGetGraphemeBounds(shaped: Godot.RID, pos: Int64) -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_get_grapheme_bounds,
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

    private static var __method_binding_shaped_text_next_grapheme_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_next_grapheme_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextNextGraphemePos(shaped: Godot.RID, pos: Int64) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_next_grapheme_pos,
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

    private static var __method_binding_shaped_text_prev_grapheme_pos: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_prev_grapheme_pos").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextPrevGraphemePos(shaped: Godot.RID, pos: Int64) -> Int64 {
        var __temporary = Int64()
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: pos) { (__ptr_pos) in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_shaped_text_prev_grapheme_pos,
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

    private static var __method_binding_shaped_text_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 70679950)!
        }
        }
    }()
    public func shapedTextDraw(shaped: Godot.RID, canvas: Godot.RID, pos: Godot.Vector2, clipL: Double = -1, clipR: Double = -1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            canvas.withUnsafeRawPointer { (__ptr_canvas) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    withUnsafePointer(to: clipL) { (__ptr_clipL) in
                        withUnsafePointer(to: clipR) { (__ptr_clipR) in
                            withUnsafePointer(to: color) { (__ptr_color) in
                                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_color) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_shaped_text_draw,
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

    private static var __method_binding_shaped_text_draw_outline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw_outline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2673671346)!
        }
        }
    }()
    public func shapedTextDrawOutline(shaped: Godot.RID, canvas: Godot.RID, pos: Godot.Vector2, clipL: Double = -1, clipR: Double = -1, outlineSize: Int64 = 1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            canvas.withUnsafeRawPointer { (__ptr_canvas) in
                withUnsafePointer(to: pos) { (__ptr_pos) in
                    withUnsafePointer(to: clipL) { (__ptr_clipL) in
                        withUnsafePointer(to: clipR) { (__ptr_clipR) in
                            withUnsafePointer(to: outlineSize) { (__ptr_outlineSize) in
                                withUnsafePointer(to: color) { (__ptr_color) in
                                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_outlineSize, __ptr_color) { (__accessPtr) in
                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                            gdextension_interface_object_method_bind_ptrcall(
                                                Self.__method_binding_shaped_text_draw_outline,
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

    private static var __method_binding_shaped_text_get_dominant_direction_in_range: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_dominant_direction_in_range").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3326907668)!
        }
        }
    }()
    public func shapedTextGetDominantDirectionInRange(shaped: Godot.RID, start: Int64, end: Int64) -> Godot.TextServer.Direction {
        var __temporary = Godot.TextServer.Direction.RawValue(0)
        shaped.withUnsafeRawPointer { (__ptr_shaped) in
            withUnsafePointer(to: start) { (__ptr_start) in
                withUnsafePointer(to: end) { (__ptr_end) in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shaped_text_get_dominant_direction_in_range,
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
        return Godot.TextServer.Direction(rawValue: __temporary)!
    }

    private static var __method_binding_format_number: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "format_number").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2305636099)!
        }
        }
    }()
    public func formatNumber(_ number: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        number.withUnsafeRawPointer { (__ptr_number) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_format_number,
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

    private static var __method_binding_parse_number: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_number").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2305636099)!
        }
        }
    }()
    public func parseNumber(_ number: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        number.withUnsafeRawPointer { (__ptr_number) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_parse_number,
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

    private static var __method_binding_percent_sign: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "percent_sign").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 993269549)!
        }
        }
    }()
    public func percentSign(language: Godot.GodotString = "") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        language.withUnsafeRawPointer { (__ptr_language) in
            withUnsafeArgumentPackPointer(__ptr_language) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_percent_sign,
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

    private static var __method_binding_string_get_word_breaks: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_get_word_breaks").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1398910359)!
        }
        }
    }()
    public func stringGetWordBreaks(string: Godot.GodotString, language: Godot.GodotString = "", charsPerLine: Int64 = 0) -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        string.withUnsafeRawPointer { (__ptr_string) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafePointer(to: charsPerLine) { (__ptr_charsPerLine) in
                    withUnsafeArgumentPackPointer(__ptr_string, __ptr_language, __ptr_charsPerLine) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_string_get_word_breaks,
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
        return __temporary
    }

    private static var __method_binding_is_confusable: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_confusable").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1433197768)!
        }
        }
    }()
    public func isConfusable(string: Godot.GodotString, dict: Godot.PackedStringArray) -> Int64 {
        var __temporary = Int64()
        string.withUnsafeRawPointer { (__ptr_string) in
            dict.withUnsafeRawPointer { (__ptr_dict) in
                withUnsafeArgumentPackPointer(__ptr_string, __ptr_dict) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_is_confusable,
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

    private static var __method_binding_spoof_check: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "spoof_check").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func spoofCheck(string: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        string.withUnsafeRawPointer { (__ptr_string) in
            withUnsafeArgumentPackPointer(__ptr_string) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_spoof_check,
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

    private static var __method_binding_strip_diacritics: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "strip_diacritics").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func stripDiacritics(string: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        string.withUnsafeRawPointer { (__ptr_string) in
            withUnsafeArgumentPackPointer(__ptr_string) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_strip_diacritics,
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

    private static var __method_binding_is_valid_identifier: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_identifier").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isValidIdentifier(string: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        string.withUnsafeRawPointer { (__ptr_string) in
            withUnsafeArgumentPackPointer(__ptr_string) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_is_valid_identifier,
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

    private static var __method_binding_string_to_upper: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_upper").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2305636099)!
        }
        }
    }()
    public func stringToUpper(string: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        string.withUnsafeRawPointer { (__ptr_string) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_string_to_upper,
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

    private static var __method_binding_string_to_lower: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_lower").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2305636099)!
        }
        }
    }()
    public func stringToLower(string: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        string.withUnsafeRawPointer { (__ptr_string) in
            language.withUnsafeRawPointer { (__ptr_language) in
                withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_string_to_lower,
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

    private static var __method_binding_parse_structured_text: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_structured_text").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3310685015)!
        }
        }
    }()
    public func parseStructuredText(parserType: Godot.TextServer.StructuredTextParser, args: Godot.GodotArray, text: Godot.GodotString) -> Godot.GodotTypedArray<Godot.Vector3i> {
        let __temporary = Godot.GodotTypedArray<Godot.Vector3i>()
        withUnsafePointer(to: parserType) { (__ptr_parserType) in
            args.withUnsafeRawPointer { (__ptr_args) in
                text.withUnsafeRawPointer { (__ptr_text) in
                    withUnsafeArgumentPackPointer(__ptr_parserType, __ptr_args, __ptr_text) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_parse_structured_text,
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