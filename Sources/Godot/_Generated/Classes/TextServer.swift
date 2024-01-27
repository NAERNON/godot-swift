//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TextServer: RefCounted {
    public enum FontAntialiasing: UInt32, GodotEnum {
        case none = 0
        case gray = 1
        case lcd = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Gray", 1),
            ("Lcd", 2),]
        }
    }
    public enum FontLCDSubpixelLayout: UInt32, GodotEnum {
        case none = 0
        case hrgb = 1
        case hbgr = 2
        case vrgb = 3
        case vbgr = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Hrgb", 1),
            ("Hbgr", 2),
            ("Vrgb", 3),
            ("Vbgr", 4),
            ("Max", 5),]
        }
    }
    public enum Direction: UInt32, GodotEnum {
        case auto = 0
        case ltr = 1
        case rtl = 2
        case inherited = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Auto", 0),
            ("Ltr", 1),
            ("Rtl", 2),
            ("Inherited", 3),]
        }
    }
    public enum Orientation: UInt32, GodotEnum {
        case horizontal = 0
        case vertical = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Horizontal", 0),
            ("Vertical", 1),]
        }
    }
    public struct JustificationFlag: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Kashida", 1),
            ("Word Bound", 2),
            ("Trim Edge Spaces", 4),
            ("After Last Tab", 8),
            ("Constrain Ellipsis", 16),
            ("Skip Last Line", 32),
            ("Skip Last Line With Visible Chars", 64),
            ("Do Not Skip Single Line", 128),]
        }
    }
    public enum AutowrapMode: UInt32, GodotEnum {
        case off = 0
        case arbitrary = 1
        case word = 2
        case wordSmart = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Off", 0),
            ("Arbitrary", 1),
            ("Word", 2),
            ("Word Smart", 3),]
        }
    }
    public struct LineBreakFlag: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let mandatory: Self = .init(rawValue: 1)
        public static let wordBound: Self = .init(rawValue: 2)
        public static let graphemeBound: Self = .init(rawValue: 4)
        public static let adaptive: Self = .init(rawValue: 8)
        public static let trimEdgeSpaces: Self = .init(rawValue: 16)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Mandatory", 1),
            ("Word Bound", 2),
            ("Grapheme Bound", 4),
            ("Adaptive", 8),
            ("Trim Edge Spaces", 16),]
        }
    }
    public enum VisibleCharactersBehavior: UInt32, GodotEnum {
        case charsBeforeShaping = 0
        case charsAfterShaping = 1
        case glyphsAuto = 2
        case glyphsLtr = 3
        case glyphsRtl = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Chars Before Shaping", 0),
            ("Chars After Shaping", 1),
            ("Glyphs Auto", 2),
            ("Glyphs Ltr", 3),
            ("Glyphs Rtl", 4),]
        }
    }
    public enum OverrunBehavior: UInt32, GodotEnum {
        case noTrimming = 0
        case trimChar = 1
        case trimWord = 2
        case trimEllipsis = 3
        case trimWordEllipsis = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("No Trimming", 0),
            ("Trim Char", 1),
            ("Trim Word", 2),
            ("Trim Ellipsis", 3),
            ("Trim Word Ellipsis", 4),]
        }
    }
    public struct TextOverrunFlag: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let noTrim: Self = .init(rawValue: 0)
        public static let trim: Self = .init(rawValue: 1)
        public static let trimWordOnly: Self = .init(rawValue: 2)
        public static let addEllipsis: Self = .init(rawValue: 4)
        public static let enforceEllipsis: Self = .init(rawValue: 8)
        public static let justificationAware: Self = .init(rawValue: 16)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("No Trim", 0),
            ("Trim", 1),
            ("Trim Word Only", 2),
            ("Add Ellipsis", 4),
            ("Enforce Ellipsis", 8),
            ("Justification Aware", 16),]
        }
    }
    public struct GraphemeFlag: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Valid", 1),
            ("Rtl", 2),
            ("Virtual", 4),
            ("Space", 8),
            ("Break Hard", 16),
            ("Break Soft", 32),
            ("Tab", 64),
            ("Elongation", 128),
            ("Punctuation", 256),
            ("Underscore", 512),
            ("Connected", 1024),
            ("Safe To Insert Tatweel", 2048),
            ("Embedded Object", 4096),]
        }
    }
    public enum Hinting: UInt32, GodotEnum {
        case none = 0
        case light = 1
        case normal = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Light", 1),
            ("Normal", 2),]
        }
    }
    public enum SubpixelPositioning: UInt32, GodotEnum {
        case disabled = 0
        case auto = 1
        case oneHalf = 2
        case oneQuarter = 3
        case oneHalfMaxSize = 20
        case oneQuarterMaxSize = 16
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Auto", 1),
            ("One Half", 2),
            ("One Quarter", 3),
            ("One Quarter Max Size", 16),
            ("One Half Max Size", 20),]
        }
    }
    public enum Feature: UInt32, GodotEnum {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Simple Layout", 1),
            ("Bidi Layout", 2),
            ("Vertical Layout", 4),
            ("Shaping", 8),
            ("Kashida Justification", 16),
            ("Break Iterators", 32),
            ("Font Bitmap", 64),
            ("Font Dynamic", 128),
            ("Font Msdf", 256),
            ("Font System", 512),
            ("Font Variable", 1024),
            ("Context Sensitive Case Conversion", 2048),
            ("Use Support Data", 4096),
            ("Unicode Identifiers", 8192),
            ("Unicode Security", 16384),]
        }
    }
    public enum ContourPointTag: UInt32, GodotEnum {
        case on = 1
        case offConic = 0
        case offCubic = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Off Conic", 0),
            ("On", 1),
            ("Off Cubic", 2),]
        }
    }
    public enum SpacingType: UInt32, GodotEnum {
        case glyph = 0
        case space = 1
        case top = 2
        case bottom = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Glyph", 0),
            ("Space", 1),
            ("Top", 2),
            ("Bottom", 3),
            ("Max", 4),]
        }
    }
    public struct FontStyle: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let bold: Self = .init(rawValue: 1)
        public static let italic: Self = .init(rawValue: 2)
        public static let fixedWidth: Self = .init(rawValue: 4)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bold", 1),
            ("Italic", 2),
            ("Fixed Width", 4),]
        }
    }
    public enum StructuredTextParser: UInt32, GodotEnum {
        case `default` = 0
        case uri = 1
        case file = 2
        case email = 3
        case list = 4
        case gdscript = 5
        case custom = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Uri", 1),
            ("File", 2),
            ("Email", 3),
            ("List", 4),
            ("Gdscript", 5),
            ("Custom", 6),]
        }
    }
    public enum FixedSizeScaleMode: UInt32, GodotEnum {
        case disable = 0
        case integerOnly = 1
        case enabled = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disable", 0),
            ("Integer Only", 1),
            ("Enabled", 2),]
        }
    }

    internal static var __method_binding_has_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3967367083)!
        }
        }
    }()
    public func hasFeature(_ feature: Godot.TextServer.Feature) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_feature,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func name() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_features").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func features() -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_features,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_load_support_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_support_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    public func loadSupportData(filename: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        filename.withGodotUnsafeRawPointer { __ptr_filename in
        withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_support_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_support_data_filename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_filename").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func supportDataFilename() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_support_data_filename,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_support_data_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func supportDataInfo() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_support_data_info,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_save_support_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_support_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func saveSupportData(filename: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        filename.withGodotUnsafeRawPointer { __ptr_filename in
        withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_support_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_is_locale_right_to_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_locale_right_to_left").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isLocaleRightToLeft(locale: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        locale.withGodotUnsafeRawPointer { __ptr_locale in
        withUnsafeArgumentPackPointer(__ptr_locale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_locale_right_to_left,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_name_to_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "name_to_tag").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func nameToTag(name: Godot.GodotString) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_name_to_tag,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_tag_to_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tag_to_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func tagToName(tag: Int64) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        tag.withGodotUnsafeRawPointer { __ptr_tag in
        withUnsafeArgumentPackPointer(__ptr_tag) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tag_to_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_has: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func has(rid: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_free_rid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_create_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func createFont() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_font,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_font_linked_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_font_linked_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 41030802)!
        }
        }
    }()
    public func createFontLinkedVariation(fontRid: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_font_linked_variation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1355495400)!
        }
        }
    }()
    public func fontSetData(fontRid: Godot.RID, data: Godot.PackedByteArray) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_set_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_face_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetFaceIndex(fontRid: Godot.RID, faceIndex: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        faceIndex.withGodotUnsafeRawPointer { __ptr_faceIndex in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_faceIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_face_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFaceIndex(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_face_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_get_face_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFaceCount(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_face_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 898466325)!
        }
        }
    }()
    public func fontSetStyle(fontRid: Godot.RID, style: Godot.TextServer.FontStyle) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        style.withGodotUnsafeRawPointer { __ptr_style in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_style) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_style,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3082502592)!
        }
        }
    }()
    public func fontGetStyle(fontRid: Godot.RID) -> Godot.TextServer.FontStyle {
        Godot.TextServer.FontStyle.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_style,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontSetName(fontRid: Godot.RID, name: Godot.GodotString) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetName(fontRid: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_get_ot_name_strings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ot_name_strings").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetOtNameStrings(fontRid: Godot.RID) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_ot_name_strings,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontSetStyleName(fontRid: Godot.RID, name: Godot.GodotString) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_style_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetStyleName(fontRid: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_style_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_weight").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetWeight(fontRid: Godot.RID, weight: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_weight,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_weight").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetWeight(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_weight,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_stretch").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetStretch(fontRid: Godot.RID, weight: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_stretch,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_stretch").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetStretch(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_stretch,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 958337235)!
        }
        }
    }()
    public func fontSetAntialiasing(fontRid: Godot.RID, antialiasing: Godot.TextServer.FontAntialiasing) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        antialiasing.withGodotUnsafeRawPointer { __ptr_antialiasing in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_antialiasing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_antialiasing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_antialiasing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3389420495)!
        }
        }
    }()
    public func fontGetAntialiasing(fontRid: Godot.RID) -> Godot.TextServer.FontAntialiasing {
        Godot.TextServer.FontAntialiasing.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_antialiasing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetGenerateMipmaps(fontRid: Godot.RID, generateMipmaps: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        generateMipmaps.withGodotUnsafeRawPointer { __ptr_generateMipmaps in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_generateMipmaps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_generate_mipmaps,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontGetGenerateMipmaps(fontRid: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_generate_mipmaps,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetMultichannelSignedDistanceField(fontRid: Godot.RID, msdf: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        msdf.withGodotUnsafeRawPointer { __ptr_msdf in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdf) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_multichannel_signed_distance_field,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_multichannel_signed_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsMultichannelSignedDistanceField(fontRid: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_is_multichannel_signed_distance_field,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetMsdfPixelRange(fontRid: Godot.RID, msdfPixelRange: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        msdfPixelRange.withGodotUnsafeRawPointer { __ptr_msdfPixelRange in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdfPixelRange) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_msdf_pixel_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_pixel_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetMsdfPixelRange(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_msdf_pixel_range,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetMsdfSize(fontRid: Godot.RID, msdfSize: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        msdfSize.withGodotUnsafeRawPointer { __ptr_msdfSize in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_msdfSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_msdf_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetMsdfSize(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_msdf_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_fixed_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontSetFixedSize(fontRid: Godot.RID, fixedSize: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        fixedSize.withGodotUnsafeRawPointer { __ptr_fixedSize in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_fixedSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_fixed_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_fixed_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func fontGetFixedSize(fontRid: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_fixed_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_fixed_size_scale_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1029390307)!
        }
        }
    }()
    public func fontSetFixedSizeScaleMode(fontRid: Godot.RID, fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        fixedSizeScaleMode.withGodotUnsafeRawPointer { __ptr_fixedSizeScaleMode in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_fixedSizeScaleMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_fixed_size_scale_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_fixed_size_scale_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4113120379)!
        }
        }
    }()
    public func fontGetFixedSizeScaleMode(fontRid: Godot.RID) -> Godot.TextServer.FixedSizeScaleMode {
        Godot.TextServer.FixedSizeScaleMode.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_fixed_size_scale_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetAllowSystemFallback(fontRid: Godot.RID, allowSystemFallback: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        allowSystemFallback.withGodotUnsafeRawPointer { __ptr_allowSystemFallback in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_allowSystemFallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_allow_system_fallback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_allow_system_fallback").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsAllowSystemFallback(fontRid: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_is_allow_system_fallback,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func fontSetForceAutohinter(fontRid: Godot.RID, forceAutohinter: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        forceAutohinter.withGodotUnsafeRawPointer { __ptr_forceAutohinter in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_forceAutohinter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_force_autohinter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_force_autohinter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func fontIsForceAutohinter(fontRid: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_is_force_autohinter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1520010864)!
        }
        }
    }()
    public func fontSetHinting(fontRid: Godot.RID, hinting: Godot.TextServer.Hinting) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        hinting.withGodotUnsafeRawPointer { __ptr_hinting in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_hinting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_hinting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_hinting").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3971592737)!
        }
        }
    }()
    public func fontGetHinting(fontRid: Godot.RID) -> Godot.TextServer.Hinting {
        Godot.TextServer.Hinting.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_hinting,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3830459669)!
        }
        }
    }()
    public func fontSetSubpixelPositioning(fontRid: Godot.RID, subpixelPositioning: Godot.TextServer.SubpixelPositioning) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        subpixelPositioning.withGodotUnsafeRawPointer { __ptr_subpixelPositioning in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_subpixelPositioning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_subpixel_positioning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_subpixel_positioning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2752233671)!
        }
        }
    }()
    public func fontGetSubpixelPositioning(fontRid: Godot.RID) -> Godot.TextServer.SubpixelPositioning {
        Godot.TextServer.SubpixelPositioning.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_subpixel_positioning,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_embolden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func fontSetEmbolden(fontRid: Godot.RID, strength: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_strength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_embolden,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_embolden").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func fontGetEmbolden(fontRid: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_embolden,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1307259930)!
        }
        }
    }()
    public func fontSetSpacing(fontRid: Godot.RID, spacing: Godot.TextServer.SpacingType, value: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_spacing, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_spacing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1213653558)!
        }
        }
    }()
    public func fontGetSpacing(fontRid: Godot.RID, spacing: Godot.TextServer.SpacingType) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_spacing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_spacing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func fontSetTransform(fontRid: Godot.RID, transform: Godot.Transform2D) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 213527486)!
        }
        }
    }()
    public func fontGetTransform(fontRid: Godot.RID) -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_variation_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()
    public func fontSetVariationCoordinates<Value1: VariantStorable, Value2: VariantStorable>(fontRid: Godot.RID, variationCoordinates: Godot.GodotDictionary<Value1, Value2>) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        variationCoordinates.withGodotUnsafeRawPointer { __ptr_variationCoordinates in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_variationCoordinates) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_variation_coordinates,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_variation_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetVariationCoordinates(fontRid: Godot.RID) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_variation_coordinates,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func fontSetOversampling(fontRid: Godot.RID, oversampling: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        oversampling.withGodotUnsafeRawPointer { __ptr_oversampling in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_oversampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_oversampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func fontGetOversampling(fontRid: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_oversampling,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_get_size_cache_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_size_cache_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func fontGetSizeCacheList(fontRid: Godot.RID) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_size_cache_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_clear_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_size_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func fontClearSizeCache(fontRid: Godot.RID) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_clear_size_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_font_remove_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_size_cache").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontRemoveSizeCache(fontRid: Godot.RID, size: Godot.Vector2I) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_size_cache,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_set_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_ascent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetAscent(fontRid: Godot.RID, size: Int64, ascent: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        ascent.withGodotUnsafeRawPointer { __ptr_ascent in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_ascent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_ascent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ascent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetAscent(fontRid: Godot.RID, size: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_ascent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_descent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetDescent(fontRid: Godot.RID, size: Int64, descent: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        descent.withGodotUnsafeRawPointer { __ptr_descent in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_descent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_descent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_descent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetDescent(fontRid: Godot.RID, size: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_descent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetUnderlinePosition(fontRid: Godot.RID, size: Int64, underlinePosition: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        underlinePosition.withGodotUnsafeRawPointer { __ptr_underlinePosition in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_underlinePosition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_underline_position,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetUnderlinePosition(fontRid: Godot.RID, size: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_underline_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetUnderlineThickness(fontRid: Godot.RID, size: Int64, underlineThickness: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        underlineThickness.withGodotUnsafeRawPointer { __ptr_underlineThickness in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_underlineThickness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_underline_thickness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetUnderlineThickness(fontRid: Godot.RID, size: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_underline_thickness,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func fontSetScale(fontRid: Godot.RID, size: Int64, scale: Double) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()
    public func fontGetScale(fontRid: Godot.RID, size: Int64) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_scale,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_get_texture_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1311001310)!
        }
        }
    }()
    public func fontGetTextureCount(fontRid: Godot.RID, size: Godot.Vector2I) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_texture_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_clear_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_textures").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontClearTextures(fontRid: Godot.RID, size: Godot.Vector2I) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_clear_textures,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_remove_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRemoveTexture(fontRid: Godot.RID, size: Godot.Vector2I, textureIndex: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_set_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2354485091)!
        }
        }
    }()
    public func fontSetTextureImage(fontRid: Godot.RID, size: Godot.Vector2I, textureIndex: Int64, image: Godot.Image?) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex, _ptr___ptr_image) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_texture_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_font_get_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2451761155)!
        }
        }
    }()
    public func fontGetTextureImage(fontRid: Godot.RID, size: Godot.Vector2I, textureIndex: Int64) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_texture_image,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_offsets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3005398047)!
        }
        }
    }()
    public func fontSetTextureOffsets(fontRid: Godot.RID, size: Godot.Vector2I, textureIndex: Int64, offset: Godot.PackedInt32Array) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_texture_offsets,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_offsets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3420028887)!
        }
        }
    }()
    public func fontGetTextureOffsets(fontRid: Godot.RID, size: Godot.Vector2I, textureIndex: Int64) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        textureIndex.withGodotUnsafeRawPointer { __ptr_textureIndex in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_textureIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_texture_offsets,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 46086620)!
        }
        }
    }()
    public func fontGetGlyphList(fontRid: Godot.RID, size: Godot.Vector2I) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_clear_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_glyphs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()
    public func fontClearGlyphs(fontRid: Godot.RID, size: Godot.Vector2I) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_clear_glyphs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_remove_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_glyph").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRemoveGlyph(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_glyph,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_advance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2555689501)!
        }
        }
    }()
    public func fontGetGlyphAdvance(fontRid: Godot.RID, size: Int64, glyph: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_advance,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_advance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3219397315)!
        }
        }
    }()
    public func fontSetGlyphAdvance(fontRid: Godot.RID, size: Int64, glyph: Int64, advance: Godot.Vector2) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        advance.withGodotUnsafeRawPointer { __ptr_advance in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_advance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_glyph_advance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphOffset(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()
    public func fontSetGlyphOffset(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64, offset: Godot.Vector2) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_glyph_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphSize(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()
    public func fontSetGlyphSize(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64, glSize: Godot.Vector2) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        glSize.withGodotUnsafeRawPointer { __ptr_glSize in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_glSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_glyph_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_uv_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2274268786)!
        }
        }
    }()
    public func fontGetGlyphUvRect(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_uv_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_uv_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1973324081)!
        }
        }
    }()
    public func fontSetGlyphUvRect(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64, uvRect: Godot.Rect2) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        uvRect.withGodotUnsafeRawPointer { __ptr_uvRect in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_uvRect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_glyph_uv_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_idx").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4292800474)!
        }
        }
    }()
    public func fontGetGlyphTextureIdx(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_texture_idx,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_texture_idx").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()
    public func fontSetGlyphTextureIdx(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64, textureIdx: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        textureIdx.withGodotUnsafeRawPointer { __ptr_textureIdx in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph, __ptr_textureIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_glyph_texture_idx,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_texture_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1451696141)!
        }
        }
    }()
    public func fontGetGlyphTextureRid(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_texture_rid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_texture_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()
    public func fontGetGlyphTextureSize(fontRid: Godot.RID, size: Godot.Vector2I, glyph: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyph.withGodotUnsafeRawPointer { __ptr_glyph in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyph) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_texture_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_contours: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_contours").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2903964473)!
        }
        }
    }()
    public func fontGetGlyphContours(font: Godot.RID, size: Int64, index: Int64) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        font.withGodotUnsafeRawPointer { __ptr_font in
        size.withGodotUnsafeRawPointer { __ptr_size in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_font, __ptr_size, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_contours,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_get_kerning_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1778388067)!
        }
        }
    }()
    public func fontGetKerningList(fontRid: Godot.RID, size: Int64) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_kerning_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_clear_kerning_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_kerning_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func fontClearKerningMap(fontRid: Godot.RID, size: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_clear_kerning_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_remove_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2141860016)!
        }
        }
    }()
    public func fontRemoveKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2I) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_kerning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_set_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3630965883)!
        }
        }
    }()
    public func fontSetKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2I, kerning: Godot.Vector2) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        kerning.withGodotUnsafeRawPointer { __ptr_kerning in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair, __ptr_kerning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_kerning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_get_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1019980169)!
        }
        }
    }()
    public func fontGetKerning(fontRid: Godot.RID, size: Int64, glyphPair: Godot.Vector2I) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphPair.withGodotUnsafeRawPointer { __ptr_glyphPair in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphPair) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_kerning,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_get_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1765635060)!
        }
        }
    }()
    public func fontGetGlyphIndex(fontRid: Godot.RID, size: Int64, char: Int64, variationSelector: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        char.withGodotUnsafeRawPointer { __ptr_char in
        variationSelector.withGodotUnsafeRawPointer { __ptr_variationSelector in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_char, __ptr_variationSelector) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_glyph_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_font_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_char_from_glyph_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2156738276)!
        }
        }
    }()
    public func fontGetCharFromGlyphIndex(fontRid: Godot.RID, size: Int64, glyphIndex: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        glyphIndex.withGodotUnsafeRawPointer { __ptr_glyphIndex in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_glyphIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_char_from_glyph_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_font_has_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_has_char").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3120086654)!
        }
        }
    }()
    public func fontHasChar(fontRid: Godot.RID, char: Int64) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        char.withGodotUnsafeRawPointer { __ptr_char in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_char) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_has_char,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_get_supported_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_supported_chars").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func fontGetSupportedChars(fontRid: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_supported_chars,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_render_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()
    public func fontRenderRange(fontRid: Godot.RID, size: Godot.Vector2I, start: Int64, end: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        start.withGodotUnsafeRawPointer { __ptr_start in
        end.withGodotUnsafeRawPointer { __ptr_end in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_start, __ptr_end) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_render_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_font_render_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_glyph").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()
    public func fontRenderGlyph(fontRid: Godot.RID, size: Godot.Vector2I, index: Int64) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        size.withGodotUnsafeRawPointer { __ptr_size in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_size, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_render_glyph,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_draw_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1339057948)!
        }
        }
    }()
    public func fontDrawGlyph(fontRid: Godot.RID, canvas: Godot.RID, size: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        size.withGodotUnsafeRawPointer { __ptr_size in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        index.withGodotUnsafeRawPointer { __ptr_index in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_draw_glyph,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_font_draw_glyph_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2626165733)!
        }
        }
    }()
    public func fontDrawGlyphOutline(fontRid: Godot.RID, canvas: Godot.RID, size: Int64, outlineSize: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        size.withGodotUnsafeRawPointer { __ptr_size in
        outlineSize.withGodotUnsafeRawPointer { __ptr_outlineSize in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        index.withGodotUnsafeRawPointer { __ptr_index in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_canvas, __ptr_size, __ptr_outlineSize, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_draw_glyph_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_font_is_language_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_language_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()
    public func fontIsLanguageSupported(fontRid: Godot.RID, language: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_is_language_supported,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()
    public func fontSetLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString, supported: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        language.withGodotUnsafeRawPointer { __ptr_language in
        supported.withGodotUnsafeRawPointer { __ptr_supported in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language, __ptr_supported) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_language_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()
    public func fontGetLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_language_support_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_remove_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_language_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontRemoveLanguageSupportOverride(fontRid: Godot.RID, language: Godot.GodotString) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_language_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_language_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()
    public func fontGetLanguageSupportOverrides(fontRid: Godot.RID) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_language_support_overrides,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_is_script_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_script_supported").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()
    public func fontIsScriptSupported(fontRid: Godot.RID, script: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_is_script_supported,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_set_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()
    public func fontSetScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString, supported: Bool) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        script.withGodotUnsafeRawPointer { __ptr_script in
        supported.withGodotUnsafeRawPointer { __ptr_supported in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script, __ptr_supported) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_script_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_font_get_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()
    public func fontGetScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_script_support_override,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_font_remove_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_script_support_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func fontRemoveScriptSupportOverride(fontRid: Godot.RID, script: Godot.GodotString) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        script.withGodotUnsafeRawPointer { __ptr_script in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_script) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_remove_script_support_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_script_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()
    public func fontGetScriptSupportOverrides(fontRid: Godot.RID) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_script_support_overrides,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_opentype_feature_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()
    public func fontSetOpentypeFeatureOverrides<Value1: VariantStorable, Value2: VariantStorable>(fontRid: Godot.RID, overrides: Godot.GodotDictionary<Value1, Value2>) {
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        overrides.withGodotUnsafeRawPointer { __ptr_overrides in
        withUnsafeArgumentPackPointer(__ptr_fontRid, __ptr_overrides) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_opentype_feature_overrides,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_font_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_opentype_feature_overrides").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontGetOpentypeFeatureOverrides(fontRid: Godot.RID) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_opentype_feature_overrides,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_supported_feature_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_feature_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontSupportedFeatureList(fontRid: Godot.RID) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_supported_feature_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_supported_variation_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_variation_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()
    public func fontSupportedVariationList(fontRid: Godot.RID) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        fontRid.withGodotUnsafeRawPointer { __ptr_fontRid in
        withUnsafeArgumentPackPointer(__ptr_fontRid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_supported_variation_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_font_get_global_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_global_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func fontGetGlobalOversampling() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_get_global_oversampling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_font_set_global_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_global_oversampling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func fontSetGlobalOversampling(_ oversampling: Double) {
        oversampling.withGodotUnsafeRawPointer { __ptr_oversampling in
        withUnsafeArgumentPackPointer(__ptr_oversampling) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_font_set_global_oversampling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_hex_code_box_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hex_code_box_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func hexCodeBoxSize(_ size: Int64, index: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        size.withGodotUnsafeRawPointer { __ptr_size in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hex_code_box_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_draw_hex_code_box: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_hex_code_box").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602046441)!
        }
        }
    }()
    public func drawHexCodeBox(canvas: Godot.RID, size: Int64, pos: Godot.Vector2, index: Int64, color: Godot.Color) {
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        size.withGodotUnsafeRawPointer { __ptr_size in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        index.withGodotUnsafeRawPointer { __ptr_index in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_hex_code_box,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_create_shaped_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_shaped_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1231398698)!
        }
        }
    }()
    public func createShapedText(direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(__ptr_direction, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_shaped_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func shapedTextClear(rid: Godot.RID) {
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_shaped_text_set_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1551430183)!
        }
        }
    }()
    public func shapedTextSetDirection(shaped: Godot.RID, direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()
    public func shapedTextGetDirection(shaped: Godot.RID) -> Godot.TextServer.Direction {
        Godot.TextServer.Direction.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_direction,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_inferred_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_inferred_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()
    public func shapedTextGetInferredDirection(shaped: Godot.RID) -> Godot.TextServer.Direction {
        Godot.TextServer.Direction.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_inferred_direction,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_bidi_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_bidi_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 684822712)!
        }
        }
    }()
    public func shapedTextSetBidiOverride<Value: VariantStorable>(shaped: Godot.RID, override: Godot.GodotArray<Value>) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        override.withGodotUnsafeRawPointer { __ptr_override in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_override) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_bidi_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_custom_punctuation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_custom_punctuation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func shapedTextSetCustomPunctuation(shaped: Godot.RID, punct: Godot.GodotString) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        punct.withGodotUnsafeRawPointer { __ptr_punct in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_punct) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_custom_punctuation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_custom_punctuation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_custom_punctuation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func shapedTextGetCustomPunctuation(shaped: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_custom_punctuation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_orientation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3019609126)!
        }
        }
    }()
    public func shapedTextSetOrientation(shaped: Godot.RID, orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_orientation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_orientation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3142708106)!
        }
        }
    }()
    public func shapedTextGetOrientation(shaped: Godot.RID) -> Godot.TextServer.Orientation {
        Godot.TextServer.Orientation.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_orientation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_preserve_invalid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_invalid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func shapedTextSetPreserveInvalid(shaped: Godot.RID, enabled: Bool) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_preserve_invalid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_preserve_invalid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_invalid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextGetPreserveInvalid(shaped: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_preserve_invalid,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_preserve_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func shapedTextSetPreserveControl(shaped: Godot.RID, enabled: Bool) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_preserve_control,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_preserve_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_control").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextGetPreserveControl(shaped: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_preserve_control,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_set_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1307259930)!
        }
        }
    }()
    public func shapedTextSetSpacing(shaped: Godot.RID, spacing: Godot.TextServer.SpacingType, value: Int64) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_set_spacing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_spacing").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1213653558)!
        }
        }
    }()
    public func shapedTextGetSpacing(shaped: Godot.RID, spacing: Godot.TextServer.SpacingType) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        spacing.withGodotUnsafeRawPointer { __ptr_spacing in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_spacing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_add_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 623473029)!
        }
        }
    }()
    public func shapedTextAddString<Value1: VariantStorable, Value2: VariantStorable, Value3: VariantStorableIn>(shaped: Godot.RID, text: Godot.GodotString, fonts: Godot.GodotArray<Godot.RID>, size: Int64, opentypeFeatures: Godot.GodotDictionary<Value1, Value2> = [:], language: Godot.GodotString = "", meta: Value3 = Variant()) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        text.withGodotUnsafeRawPointer { __ptr_text in
        fonts.withGodotUnsafeRawPointer { __ptr_fonts in
        size.withGodotUnsafeRawPointer { __ptr_size in
        opentypeFeatures.withGodotUnsafeRawPointer { __ptr_opentypeFeatures in
        language.withGodotUnsafeRawPointer { __ptr_language in
        Godot.Variant.withStorageUnsafeRawPointer(to: meta) { __ptr_meta in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_text, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures, __ptr_language, __ptr_meta) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_add_string,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}}
    }

    internal static var __method_binding_shaped_text_add_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3664424789)!
        }
        }
    }()
    public func shapedTextAddObject<Value: VariantStorableIn>(shaped: Godot.RID, key: Value, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, length: Int64 = 1, baseline: Double = 0.0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
        size.withGodotUnsafeRawPointer { __ptr_size in
        inlineAlign.withGodotUnsafeRawPointer { __ptr_inlineAlign in
        length.withGodotUnsafeRawPointer { __ptr_length in
        baseline.withGodotUnsafeRawPointer { __ptr_baseline in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_length, __ptr_baseline) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_add_object,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    internal static var __method_binding_shaped_text_resize_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_resize_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 790361552)!
        }
        }
    }()
    public func shapedTextResizeObject<Value: VariantStorableIn>(shaped: Godot.RID, key: Value, size: Godot.Vector2, inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!, baseline: Double = 0.0) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
        size.withGodotUnsafeRawPointer { __ptr_size in
        inlineAlign.withGodotUnsafeRawPointer { __ptr_inlineAlign in
        baseline.withGodotUnsafeRawPointer { __ptr_baseline in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_baseline) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_resize_object,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_shaped_get_span_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedGetSpanCount(shaped: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_get_span_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_get_span_meta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_meta").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4069510997)!
        }
        }
    }()
    public func shapedGetSpanMeta(shaped: Godot.RID, index: Int64) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_get_span_meta,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_set_span_update_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_set_span_update_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2022725822)!
        }
        }
    }()
    public func shapedSetSpanUpdateFont<Value1: VariantStorable, Value2: VariantStorable>(shaped: Godot.RID, index: Int64, fonts: Godot.GodotArray<Godot.RID>, size: Int64, opentypeFeatures: Godot.GodotDictionary<Value1, Value2> = [:]) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        index.withGodotUnsafeRawPointer { __ptr_index in
        fonts.withGodotUnsafeRawPointer { __ptr_fonts in
        size.withGodotUnsafeRawPointer { __ptr_size in
        opentypeFeatures.withGodotUnsafeRawPointer { __ptr_opentypeFeatures in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_set_span_update_font,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_shaped_text_substr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_substr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1937682086)!
        }
        }
    }()
    public func shapedTextSubstr(shaped: Godot.RID, start: Int64, length: Int64) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        start.withGodotUnsafeRawPointer { __ptr_start in
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_substr,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_shaped_text_get_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func shapedTextGetParent(shaped: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_parent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_fit_to_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_fit_to_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 530670926)!
        }
        }
    }()
    public func shapedTextFitToWidth(shaped: Godot.RID, width: Double, justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3)) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        width.withGodotUnsafeRawPointer { __ptr_width in
        justificationFlags.withGodotUnsafeRawPointer { __ptr_justificationFlags in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_justificationFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_fit_to_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_shaped_text_tab_align: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_tab_align").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1283669550)!
        }
        }
    }()
    public func shapedTextTabAlign(shaped: Godot.RID, tabStops: Godot.PackedFloat32Array) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        tabStops.withGodotUnsafeRawPointer { __ptr_tabStops in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_tabStops) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_tab_align,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func shapedTextShape(shaped: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_shape,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_is_ready: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_is_ready").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextIsReady(shaped: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_is_ready,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_has_visible_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_has_visible_chars").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func shapedTextHasVisibleChars(shaped: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_has_visible_chars,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyphs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetGlyphs(shaped: Godot.RID) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_glyphs,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_sort_logical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_sort_logical").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2670461153)!
        }
        }
    }()
    public func shapedTextSortLogical(shaped: Godot.RID) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_sort_logical,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_glyph_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyph_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetGlyphCount(shaped: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_glyph_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 733700038)!
        }
        }
    }()
    public func shapedTextGetRange(shaped: Godot.RID) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_range,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_line_breaks_adv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks_adv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2376991424)!
        }
        }
    }()
    public func shapedTextGetLineBreaksAdv(shaped: Godot.RID, width: Godot.PackedFloat32Array, start: Int64 = 0, once: Bool = true, breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        width.withGodotUnsafeRawPointer { __ptr_width in
        start.withGodotUnsafeRawPointer { __ptr_start in
        once.withGodotUnsafeRawPointer { __ptr_once in
        breakFlags.withGodotUnsafeRawPointer { __ptr_breakFlags in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_once, __ptr_breakFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_line_breaks_adv,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_shaped_text_get_line_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2651359741)!
        }
        }
    }()
    public func shapedTextGetLineBreaks(shaped: Godot.RID, width: Double, start: Int64 = 0, breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        width.withGodotUnsafeRawPointer { __ptr_width in
        start.withGodotUnsafeRawPointer { __ptr_start in
        breakFlags.withGodotUnsafeRawPointer { __ptr_breakFlags in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_breakFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_line_breaks,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_shaped_text_get_word_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_word_breaks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 185957063)!
        }
        }
    }()
    public func shapedTextGetWordBreaks(shaped: Godot.RID, graphemeFlags: Godot.TextServer.GraphemeFlag = TextServer.GraphemeFlag(rawValue: 264)) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        graphemeFlags.withGodotUnsafeRawPointer { __ptr_graphemeFlags in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_graphemeFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_word_breaks,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_trim_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_trim_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetTrimPos(shaped: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_trim_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_ellipsis_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetEllipsisPos(shaped: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_ellipsis_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_ellipsis_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyphs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetEllipsisGlyphs(shaped: Godot.RID) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_ellipsis_glyphs,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_ellipsis_glyph_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyph_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func shapedTextGetEllipsisGlyphCount(shaped: Godot.RID) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_ellipsis_glyph_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_overrun_trim_to_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_overrun_trim_to_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2723146520)!
        }
        }
    }()
    public func shapedTextOverrunTrimToWidth(shaped: Godot.RID, width: Double = 0, overrunTrimFlags: Godot.TextServer.TextOverrunFlag = TextServer.TextOverrunFlag(rawValue: 0)) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        width.withGodotUnsafeRawPointer { __ptr_width in
        overrunTrimFlags.withGodotUnsafeRawPointer { __ptr_overrunTrimFlags in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_overrunTrimFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_overrun_trim_to_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_objects: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_objects").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shapedTextGetObjects(shaped: Godot.RID) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_objects,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_object_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_object_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 447978354)!
        }
        }
    }()
    public func shapedTextGetObjectRect<Value: VariantStorableIn>(shaped: Godot.RID, key: Value) -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_object_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()
    public func shapedTextGetSize(shaped: Godot.RID) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ascent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetAscent(shaped: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_ascent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_descent").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetDescent(shaped: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_descent,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetWidth(shaped: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetUnderlinePosition(shaped: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_underline_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func shapedTextGetUnderlineThickness(shaped: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_underline_thickness,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_get_carets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_carets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1574219346)!
        }
        }
    }()
    public func shapedTextGetCarets(shaped: Godot.RID, position: Int64) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_carets,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3714187733)!
        }
        }
    }()
    public func shapedTextGetSelection(shaped: Godot.RID, start: Int64, end: Int64) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        start.withGodotUnsafeRawPointer { __ptr_start in
        end.withGodotUnsafeRawPointer { __ptr_end in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_selection,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_shaped_text_hit_test_grapheme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_grapheme").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()
    public func shapedTextHitTestGrapheme(shaped: Godot.RID, coords: Double) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_hit_test_grapheme,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_hit_test_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()
    public func shapedTextHitTestPosition(shaped: Godot.RID, coords: Double) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        coords.withGodotUnsafeRawPointer { __ptr_coords in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_hit_test_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_grapheme_bounds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_grapheme_bounds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2546185844)!
        }
        }
    }()
    public func shapedTextGetGraphemeBounds(shaped: Godot.RID, pos: Int64) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_grapheme_bounds,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_next_grapheme_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_next_grapheme_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextNextGraphemePos(shaped: Godot.RID, pos: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_next_grapheme_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_prev_grapheme_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_prev_grapheme_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextPrevGraphemePos(shaped: Godot.RID, pos: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_prev_grapheme_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_get_character_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_character_breaks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 788230395)!
        }
        }
    }()
    public func shapedTextGetCharacterBreaks(shaped: Godot.RID) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_character_breaks,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_shaped_text_next_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_next_character_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextNextCharacterPos(shaped: Godot.RID, pos: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_next_character_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_prev_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_prev_character_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextPrevCharacterPos(shaped: Godot.RID, pos: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_prev_character_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_closest_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_closest_character_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()
    public func shapedTextClosestCharacterPos(shaped: Godot.RID, pos: Int64) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_closest_character_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_shaped_text_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 880389142)!
        }
        }
    }()
    public func shapedTextDraw(shaped: Godot.RID, canvas: Godot.RID, pos: Godot.Vector2, clipL: Double = -1, clipR: Double = -1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        clipL.withGodotUnsafeRawPointer { __ptr_clipL in
        clipR.withGodotUnsafeRawPointer { __ptr_clipR in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_shaped_text_draw_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw_outline").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2559184194)!
        }
        }
    }()
    public func shapedTextDrawOutline(shaped: Godot.RID, canvas: Godot.RID, pos: Godot.Vector2, clipL: Double = -1, clipR: Double = -1, outlineSize: Int64 = 1, color: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        clipL.withGodotUnsafeRawPointer { __ptr_clipL in
        clipR.withGodotUnsafeRawPointer { __ptr_clipR in
        outlineSize.withGodotUnsafeRawPointer { __ptr_outlineSize in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_outlineSize, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_draw_outline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    internal static var __method_binding_shaped_text_get_dominant_direction_in_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_dominant_direction_in_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3326907668)!
        }
        }
    }()
    public func shapedTextGetDominantDirectionInRange(shaped: Godot.RID, start: Int64, end: Int64) -> Godot.TextServer.Direction {
        Godot.TextServer.Direction.fromMutatingGodotUnsafePointer { __temporary in
        shaped.withGodotUnsafeRawPointer { __ptr_shaped in
        start.withGodotUnsafeRawPointer { __ptr_start in
        end.withGodotUnsafeRawPointer { __ptr_end in
        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shaped_text_get_dominant_direction_in_range,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_format_number: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "format_number").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()
    public func formatNumber(_ number: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        number.withGodotUnsafeRawPointer { __ptr_number in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_format_number,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_parse_number: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_number").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()
    public func parseNumber(_ number: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        number.withGodotUnsafeRawPointer { __ptr_number in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parse_number,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_percent_sign: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "percent_sign").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 993269549)!
        }
        }
    }()
    public func percentSign(language: Godot.GodotString = "") -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_percent_sign,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_string_get_word_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_get_word_breaks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 581857818)!
        }
        }
    }()
    public func stringGetWordBreaks(string: Godot.GodotString, language: Godot.GodotString = "", charsPerLine: Int64 = 0) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        language.withGodotUnsafeRawPointer { __ptr_language in
        charsPerLine.withGodotUnsafeRawPointer { __ptr_charsPerLine in
        withUnsafeArgumentPackPointer(__ptr_string, __ptr_language, __ptr_charsPerLine) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_string_get_word_breaks,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_string_get_character_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_get_character_breaks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2333794773)!
        }
        }
    }()
    public func stringGetCharacterBreaks(string: Godot.GodotString, language: Godot.GodotString = "") -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_string_get_character_breaks,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_is_confusable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_confusable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1433197768)!
        }
        }
    }()
    public func isConfusable(string: Godot.GodotString, dict: Godot.PackedStringArray) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        dict.withGodotUnsafeRawPointer { __ptr_dict in
        withUnsafeArgumentPackPointer(__ptr_string, __ptr_dict) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_confusable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_spoof_check: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "spoof_check").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func spoofCheck(string: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_spoof_check,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_strip_diacritics: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "strip_diacritics").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func stripDiacritics(string: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_strip_diacritics,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_is_valid_identifier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_identifier").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func isValidIdentifier(string: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_valid_identifier,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_string_to_upper: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_upper").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()
    public func stringToUpper(string: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_string_to_upper,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_string_to_lower: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_lower").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()
    public func stringToLower(string: Godot.GodotString, language: Godot.GodotString = "") -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        string.withGodotUnsafeRawPointer { __ptr_string in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_string_to_lower,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_parse_structured_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_structured_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3310685015)!
        }
        }
    }()
    public func parseStructuredText<Value: VariantStorable>(parserType: Godot.TextServer.StructuredTextParser, args: Godot.GodotArray<Value>, text: Godot.GodotString) -> Godot.GodotArray<Godot.Vector3I> {
        Godot.GodotArray<Godot.Vector3I>.fromMutatingGodotUnsafePointer { __temporary in
        parserType.withGodotUnsafeRawPointer { __ptr_parserType in
        args.withGodotUnsafeRawPointer { __ptr_args in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_parserType, __ptr_args, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_parse_structured_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
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