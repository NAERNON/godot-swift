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

        public init(
            rawValue: Int64
        ) {
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

        public init(
            rawValue: Int64
        ) {
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

        public init(
            rawValue: Int64
        ) {
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

        public init(
            rawValue: Int64
        ) {
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

        public init(
            rawValue: Int64
        ) {
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
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3967367083)!
        }
        }
    }()

    public func hasFeature(
        _ feature: Godot.TextServer.Feature
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: feature) { __ptr_feature in
                withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_feature,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func name() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_name,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_features: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_features").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func features() -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_features,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_load_support_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_support_data").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()

    public func loadSupportData(
        filename: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: filename) { __ptr_filename in
                withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_load_support_data,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_support_data_filename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_filename").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func supportDataFilename() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_support_data_filename,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_support_data_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_support_data_info").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func supportDataInfo() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_support_data_info,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_save_support_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_support_data").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func saveSupportData(
        filename: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: filename) { __ptr_filename in
                withUnsafeArgumentPackPointer(__ptr_filename) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_save_support_data,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_locale_right_to_left: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_locale_right_to_left").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func isLocaleRightToLeft(
        locale: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: locale) { __ptr_locale in
                withUnsafeArgumentPackPointer(__ptr_locale) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_locale_right_to_left,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_name_to_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "name_to_tag").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()

    public func nameToTag(
        name: Godot.GodotString
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_name_to_tag,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_tag_to_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tag_to_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func tagToName(
        tag: Int64
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: tag) { __ptr_tag in
                withUnsafeArgumentPackPointer(__ptr_tag) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_tag_to_name,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_has: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()

    public func has(
        rid: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: rid) { __ptr_rid in
                withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()

    public func freeRID(
        _ rid: Godot.RID
    ) {
        withTransferrableUnsafeRawPointer(to: rid) { __ptr_rid in
            withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_free_rid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_create_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_font").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()

    public func createFont() -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_create_font,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_create_font_linked_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_font_linked_variation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 41030802)!
        }
        }
    }()

    public func createFontLinkedVariation(
        fontRID: Godot.RID
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_create_font_linked_variation,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_data").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1355495400)!
        }
        }
    }()

    public func fontSetData(
        fontRID: Godot.RID,
        data: Godot.PackedByteArray
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: data) { __ptr_data in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_data) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_set_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_face_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetFaceIndex(
        fontRID: Godot.RID,
        faceIndex: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: faceIndex) { __ptr_faceIndex in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_faceIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_face_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetFaceIndex(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_face_index,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_get_face_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_face_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetFaceCount(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_face_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 898466325)!
        }
        }
    }()

    public func fontSetStyle(
        fontRID: Godot.RID,
        style: Godot.TextServer.FontStyle
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: style) { __ptr_style in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_style) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_style: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3082502592)!
        }
        }
    }()

    public func fontGetStyle(
        fontRID: Godot.RID
    ) -> Godot.TextServer.FontStyle {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_style,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()

    public func fontSetName(
        fontRID: Godot.RID,
        name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()

    public func fontGetName(
        fontRID: Godot.RID
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_name,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_get_ot_name_strings: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ot_name_strings").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()

    public func fontGetOtNameStrings(
        fontRID: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_ot_name_strings,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_style_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()

    public func fontSetStyleName(
        fontRID: Godot.RID,
        name: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_style_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_style_name").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()

    public func fontGetStyleName(
        fontRID: Godot.RID
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_style_name,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_weight").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetWeight(
        fontRID: Godot.RID,
        weight: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: weight) { __ptr_weight in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_weight) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_weight").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetWeight(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_weight,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_stretch").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetStretch(
        fontRID: Godot.RID,
        weight: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: weight) { __ptr_weight in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_weight) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_stretch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_stretch").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetStretch(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_stretch,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_antialiasing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 958337235)!
        }
        }
    }()

    public func fontSetAntialiasing(
        fontRID: Godot.RID,
        antialiasing: Godot.TextServer.FontAntialiasing
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: antialiasing) { __ptr_antialiasing in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_antialiasing) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_antialiasing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_antialiasing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3389420495)!
        }
        }
    }()

    public func fontGetAntialiasing(
        fontRID: Godot.RID
    ) -> Godot.TextServer.FontAntialiasing {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_antialiasing,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_generate_mipmaps").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func fontSetGenerateMipmaps(
        fontRID: Godot.RID,
        generateMipmaps: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: generateMipmaps) { __ptr_generateMipmaps in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_generateMipmaps) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_generate_mipmaps").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func fontGetGenerateMipmaps(
        fontRID: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_generate_mipmaps,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_multichannel_signed_distance_field").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func fontSetMultichannelSignedDistanceField(
        fontRID: Godot.RID,
        msdf: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: msdf) { __ptr_msdf in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_msdf) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_multichannel_signed_distance_field").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func fontIsMultichannelSignedDistanceField(
        fontRID: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_is_multichannel_signed_distance_field,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_pixel_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetMsdfPixelRange(
        fontRID: Godot.RID,
        msdfPixelRange: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: msdfPixelRange) { __ptr_msdfPixelRange in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_msdfPixelRange) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_pixel_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetMsdfPixelRange(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_msdf_pixel_range,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_msdf_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetMsdfSize(
        fontRID: Godot.RID,
        msdfSize: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: msdfSize) { __ptr_msdfSize in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_msdfSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_msdf_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_msdf_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetMsdfSize(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_msdf_size,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_fixed_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontSetFixedSize(
        fontRID: Godot.RID,
        fixedSize: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: fixedSize) { __ptr_fixedSize in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_fixedSize) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_fixed_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_fixed_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func fontGetFixedSize(
        fontRID: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_fixed_size,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_fixed_size_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1029390307)!
        }
        }
    }()

    public func fontSetFixedSizeScaleMode(
        fontRID: Godot.RID,
        fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: fixedSizeScaleMode) { __ptr_fixedSizeScaleMode in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_fixedSizeScaleMode) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_set_fixed_size_scale_mode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_get_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_fixed_size_scale_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4113120379)!
        }
        }
    }()

    public func fontGetFixedSizeScaleMode(
        fontRID: Godot.RID
    ) -> Godot.TextServer.FixedSizeScaleMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_fixed_size_scale_mode,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_allow_system_fallback").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func fontSetAllowSystemFallback(
        fontRID: Godot.RID,
        allowSystemFallback: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: allowSystemFallback) { __ptr_allowSystemFallback in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_allowSystemFallback) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_allow_system_fallback").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func fontIsAllowSystemFallback(
        fontRID: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_is_allow_system_fallback,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_force_autohinter").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func fontSetForceAutohinter(
        fontRID: Godot.RID,
        forceAutohinter: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: forceAutohinter) { __ptr_forceAutohinter in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_forceAutohinter) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_is_force_autohinter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_force_autohinter").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func fontIsForceAutohinter(
        fontRID: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_is_force_autohinter,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_hinting").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1520010864)!
        }
        }
    }()

    public func fontSetHinting(
        fontRID: Godot.RID,
        hinting: Godot.TextServer.Hinting
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: hinting) { __ptr_hinting in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_hinting) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_hinting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_hinting").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3971592737)!
        }
        }
    }()

    public func fontGetHinting(
        fontRID: Godot.RID
    ) -> Godot.TextServer.Hinting {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_hinting,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_subpixel_positioning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3830459669)!
        }
        }
    }()

    public func fontSetSubpixelPositioning(
        fontRID: Godot.RID,
        subpixelPositioning: Godot.TextServer.SubpixelPositioning
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: subpixelPositioning) { __ptr_subpixelPositioning in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_subpixelPositioning) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_subpixel_positioning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2752233671)!
        }
        }
    }()

    public func fontGetSubpixelPositioning(
        fontRID: Godot.RID
    ) -> Godot.TextServer.SubpixelPositioning {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_subpixel_positioning,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_embolden").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()

    public func fontSetEmbolden(
        fontRID: Godot.RID,
        strength: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: strength) { __ptr_strength in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_strength) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_embolden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_embolden").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func fontGetEmbolden(
        fontRID: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_embolden,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1307259930)!
        }
        }
    }()

    public func fontSetSpacing(
        fontRID: Godot.RID,
        spacing: Godot.TextServer.SpacingType,
        value: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_spacing, __ptr_value) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_set_spacing,
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

    internal static var __method_binding_font_get_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1213653558)!
        }
        }
    }()

    public func fontGetSpacing(
        fontRID: Godot.RID,
        spacing: Godot.TextServer.SpacingType
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_spacing) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_spacing,
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

    internal static var __method_binding_font_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()

    public func fontSetTransform(
        fontRID: Godot.RID,
        transform: Godot.Transform2D
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: transform) { __ptr_transform in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_transform) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_transform").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 213527486)!
        }
        }
    }()

    public func fontGetTransform(
        fontRID: Godot.RID
    ) -> Godot.Transform2D {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_transform,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_variation_coordinates").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()

    public func fontSetVariationCoordinates<Value1: Variant.Storable, Value2: Variant.Storable>(
        fontRID: Godot.RID,
        variationCoordinates: Godot.GodotDictionary<Value1, Value2>
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: variationCoordinates) { __ptr_variationCoordinates in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_variationCoordinates) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_variation_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_variation_coordinates").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()

    public func fontGetVariationCoordinates(
        fontRID: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_variation_coordinates,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()

    public func fontSetOversampling(
        fontRID: Godot.RID,
        oversampling: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: oversampling) { __ptr_oversampling in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_oversampling) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func fontGetOversampling(
        fontRID: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_oversampling,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_get_size_cache_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_size_cache_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()

    public func fontGetSizeCacheList(
        fontRID: Godot.RID
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_size_cache_list,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_clear_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_size_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()

    public func fontClearSizeCache(
        fontRID: Godot.RID
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_font_clear_size_cache,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_font_remove_size_cache: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_size_cache").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()

    public func fontRemoveSizeCache(
        fontRID: Godot.RID,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_set_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_ascent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()

    public func fontSetAscent(
        fontRID: Godot.RID,
        size: Int64,
        ascent: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: ascent) { __ptr_ascent in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_ascent) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_ascent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()

    public func fontGetAscent(
        fontRID: Godot.RID,
        size: Int64
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_ascent,
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

    internal static var __method_binding_font_set_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_descent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()

    public func fontSetDescent(
        fontRID: Godot.RID,
        size: Int64,
        descent: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: descent) { __ptr_descent in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_descent) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_descent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()

    public func fontGetDescent(
        fontRID: Godot.RID,
        size: Int64
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_descent,
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

    internal static var __method_binding_font_set_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()

    public func fontSetUnderlinePosition(
        fontRID: Godot.RID,
        size: Int64,
        underlinePosition: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: underlinePosition) { __ptr_underlinePosition in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_underlinePosition) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()

    public func fontGetUnderlinePosition(
        fontRID: Godot.RID,
        size: Int64
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_underline_position,
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

    internal static var __method_binding_font_set_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_underline_thickness").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()

    public func fontSetUnderlineThickness(
        fontRID: Godot.RID,
        size: Int64,
        underlineThickness: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: underlineThickness) { __ptr_underlineThickness in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_underlineThickness) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_underline_thickness").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()

    public func fontGetUnderlineThickness(
        fontRID: Godot.RID,
        size: Int64
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_underline_thickness,
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

    internal static var __method_binding_font_set_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_scale").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()

    public func fontSetScale(
        fontRID: Godot.RID,
        size: Int64,
        scale: Double
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: scale) { __ptr_scale in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_scale) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_scale").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 755457166)!
        }
        }
    }()

    public func fontGetScale(
        fontRID: Godot.RID,
        size: Int64
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_scale,
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

    internal static var __method_binding_font_get_texture_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1311001310)!
        }
        }
    }()

    public func fontGetTextureCount(
        fontRID: Godot.RID,
        size: Godot.Vector2I
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_texture_count,
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

    internal static var __method_binding_font_clear_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_textures").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()

    public func fontClearTextures(
        fontRID: Godot.RID,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_remove_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_texture").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()

    public func fontRemoveTexture(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_textureIndex) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_set_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_image").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2354485091)!
        }
        }
    }()

    public func fontSetTextureImage(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64,
        image: Godot.Image?
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withTransferrableUnsafeRawPointer(to: image) { __ptr_image in
                        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
                            withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_textureIndex, _ptr___ptr_image) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_texture_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_image").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2451761155)!
        }
        }
    }()

    public func fontGetTextureImage(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) -> Godot.Image? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_textureIndex) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_texture_image,
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

    internal static var __method_binding_font_set_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_texture_offsets").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3005398047)!
        }
        }
    }()

    public func fontSetTextureOffsets(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64,
        offset: Godot.PackedInt32Array
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                    withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_textureIndex, __ptr_offset) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_texture_offsets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_texture_offsets").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3420028887)!
        }
        }
    }()

    public func fontGetTextureOffsets(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: textureIndex) { __ptr_textureIndex in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_textureIndex) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_texture_offsets,
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

    internal static var __method_binding_font_get_glyph_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 46086620)!
        }
        }
    }()

    public func fontGetGlyphList(
        fontRID: Godot.RID,
        size: Godot.Vector2I
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_glyph_list,
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

    internal static var __method_binding_font_clear_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_glyphs").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2450610377)!
        }
        }
    }()

    public func fontClearGlyphs(
        fontRID: Godot.RID,
        size: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_remove_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_glyph").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()

    public func fontRemoveGlyph(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_advance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2555689501)!
        }
        }
    }()

    public func fontGetGlyphAdvance(
        fontRID: Godot.RID,
        size: Int64,
        glyph: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_advance,
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

    internal static var __method_binding_font_set_glyph_advance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_advance").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3219397315)!
        }
        }
    }()

    public func fontSetGlyphAdvance(
        fontRID: Godot.RID,
        size: Int64,
        glyph: Int64,
        advance: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: advance) { __ptr_advance in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph, __ptr_advance) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()

    public func fontGetGlyphOffset(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_offset,
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

    internal static var __method_binding_font_set_glyph_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_offset").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()

    public func fontSetGlyphOffset(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        offset: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: offset) { __ptr_offset in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph, __ptr_offset) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()

    public func fontGetGlyphSize(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_size,
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

    internal static var __method_binding_font_set_glyph_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1812632090)!
        }
        }
    }()

    public func fontSetGlyphSize(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        glSize: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: glSize) { __ptr_glSize in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph, __ptr_glSize) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_uv_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2274268786)!
        }
        }
    }()

    public func fontGetGlyphUvRect(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_uv_rect,
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

    internal static var __method_binding_font_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_uv_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1973324081)!
        }
        }
    }()

    public func fontSetGlyphUvRect(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        uvRect: Godot.Rect2
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: uvRect) { __ptr_uvRect in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph, __ptr_uvRect) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_idx").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4292800474)!
        }
        }
    }()

    public func fontGetGlyphTextureIdx(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_texture_idx,
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

    internal static var __method_binding_font_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_glyph_texture_idx").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()

    public func fontSetGlyphTextureIdx(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        textureIdx: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                    withTransferrableUnsafeRawPointer(to: textureIdx) { __ptr_textureIdx in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph, __ptr_textureIdx) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_glyph_texture_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_rid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1451696141)!
        }
        }
    }()

    public func fontGetGlyphTextureRID(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_texture_rid,
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

    internal static var __method_binding_font_get_glyph_texture_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_texture_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 513728628)!
        }
        }
    }()

    public func fontGetGlyphTextureSize(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyph) { __ptr_glyph in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyph) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_texture_size,
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

    internal static var __method_binding_font_get_glyph_contours: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_contours").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2903964473)!
        }
        }
    }()

    public func fontGetGlyphContours(
        font: Godot.RID,
        size: Int64,
        index: Int64
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: font) { __ptr_font in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withUnsafeArgumentPackPointer(__ptr_font, __ptr_size, __ptr_index) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_glyph_contours,
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

    internal static var __method_binding_font_get_kerning_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1778388067)!
        }
        }
    }()

    public func fontGetKerningList(
        fontRID: Godot.RID,
        size: Int64
    ) -> Godot.GodotArray<Godot.Vector2I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_kerning_list,
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

    internal static var __method_binding_font_clear_kerning_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_clear_kerning_map").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()

    public func fontClearKerningMap(
        fontRID: Godot.RID,
        size: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_remove_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2141860016)!
        }
        }
    }()

    public func fontRemoveKerning(
        fontRID: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyphPair) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_set_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3630965883)!
        }
        }
    }()

    public func fontSetKerning(
        fontRID: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I,
        kerning: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                    withTransferrableUnsafeRawPointer(to: kerning) { __ptr_kerning in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyphPair, __ptr_kerning) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_kerning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_kerning").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1019980169)!
        }
        }
    }()

    public func fontGetKerning(
        fontRID: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyphPair) { __ptr_glyphPair in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyphPair) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_kerning,
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

    internal static var __method_binding_font_get_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_glyph_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1765635060)!
        }
        }
    }()

    public func fontGetGlyphIndex(
        fontRID: Godot.RID,
        size: Int64,
        char: Int64,
        variationSelector: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                        withTransferrableUnsafeRawPointer(to: variationSelector) { __ptr_variationSelector in
                            withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_char, __ptr_variationSelector) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_font_get_glyph_index,
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

    internal static var __method_binding_font_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_char_from_glyph_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2156738276)!
        }
        }
    }()

    public func fontGetCharFromGlyphIndex(
        fontRID: Godot.RID,
        size: Int64,
        glyphIndex: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: glyphIndex) { __ptr_glyphIndex in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_glyphIndex) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_font_get_char_from_glyph_index,
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

    internal static var __method_binding_font_has_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_has_char").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3120086654)!
        }
        }
    }()

    public func fontHasChar(
        fontRID: Godot.RID,
        char: Int64
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_char) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_has_char,
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

    internal static var __method_binding_font_get_supported_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_supported_chars").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()

    public func fontGetSupportedChars(
        fontRID: Godot.RID
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_supported_chars,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_render_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4254580980)!
        }
        }
    }()

    public func fontRenderRange(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        start: Int64,
        end: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                    withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                        withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_start, __ptr_end) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_render_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_render_glyph").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3810512262)!
        }
        }
    }()

    public func fontRenderGlyph(
        fontRID: Godot.RID,
        size: Godot.Vector2I,
        index: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_size, __ptr_index) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_draw_glyph: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1339057948)!
        }
        }
    }()

    public func fontDrawGlyph(
        fontRID: Godot.RID,
        canvas: Godot.RID,
        size: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color = .white
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: canvas) { __ptr_canvas in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                            withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_draw_glyph_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_draw_glyph_outline").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2626165733)!
        }
        }
    }()

    public func fontDrawGlyphOutline(
        fontRID: Godot.RID,
        canvas: Godot.RID,
        size: Int64,
        outlineSize: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color = .white
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: canvas) { __ptr_canvas in
                withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                    withTransferrableUnsafeRawPointer(to: outlineSize) { __ptr_outlineSize in
                        withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                                withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_canvas, __ptr_size, __ptr_outlineSize, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_is_language_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_language_supported").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()

    public func fontIsLanguageSupported(
        fontRID: Godot.RID,
        language: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_is_language_supported,
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

    internal static var __method_binding_font_set_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()

    public func fontSetLanguageSupportOverride(
        fontRID: Godot.RID,
        language: Godot.GodotString,
        supported: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withTransferrableUnsafeRawPointer(to: supported) { __ptr_supported in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_language, __ptr_supported) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()

    public func fontGetLanguageSupportOverride(
        fontRID: Godot.RID,
        language: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_language_support_override,
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

    internal static var __method_binding_font_remove_language_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_language_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()

    public func fontRemoveLanguageSupportOverride(
        fontRID: Godot.RID,
        language: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_language_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_language_support_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()

    public func fontGetLanguageSupportOverrides(
        fontRID: Godot.RID
    ) -> Godot.PackedStringArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_language_support_overrides,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_is_script_supported: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_is_script_supported").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3199320846)!
        }
        }
    }()

    public func fontIsScriptSupported(
        fontRID: Godot.RID,
        script: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_script) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_is_script_supported,
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

    internal static var __method_binding_font_set_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2313957094)!
        }
        }
    }()

    public func fontSetScriptSupportOverride(
        fontRID: Godot.RID,
        script: Godot.GodotString,
        supported: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                withTransferrableUnsafeRawPointer(to: supported) { __ptr_supported in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_script, __ptr_supported) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2829184646)!
        }
        }
    }()

    public func fontGetScriptSupportOverride(
        fontRID: Godot.RID,
        script: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                    withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_script) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_font_get_script_support_override,
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

    internal static var __method_binding_font_remove_script_support_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_remove_script_support_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()

    public func fontRemoveScriptSupportOverride(
        fontRID: Godot.RID,
        script: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: script) { __ptr_script in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_script) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_script_support_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_script_support_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2801473409)!
        }
        }
    }()

    public func fontGetScriptSupportOverrides(
        fontRID: Godot.RID
    ) -> Godot.PackedStringArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_script_support_overrides,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_opentype_feature_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()

    public func fontSetOpentypeFeatureOverrides<Value1: Variant.Storable, Value2: Variant.Storable>(
        fontRID: Godot.RID,
        overrides: Godot.GodotDictionary<Value1, Value2>
    ) {
        withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
            withTransferrableUnsafeRawPointer(to: overrides) { __ptr_overrides in
                withUnsafeArgumentPackPointer(__ptr_fontRID, __ptr_overrides) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_font_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_opentype_feature_overrides").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()

    public func fontGetOpentypeFeatureOverrides(
        fontRID: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_get_opentype_feature_overrides,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_supported_feature_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_feature_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()

    public func fontSupportedFeatureList(
        fontRID: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_supported_feature_list,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_supported_variation_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_supported_variation_list").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1882737106)!
        }
        }
    }()

    public func fontSupportedVariationList(
        fontRID: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: fontRID) { __ptr_fontRID in
                withUnsafeArgumentPackPointer(__ptr_fontRID) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_font_supported_variation_list,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_font_get_global_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_get_global_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    public func fontGetGlobalOversampling() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_font_get_global_oversampling,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_font_set_global_oversampling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "font_set_global_oversampling").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    public func fontSetGlobalOversampling(
        _ oversampling: Double
    ) {
        withTransferrableUnsafeRawPointer(to: oversampling) { __ptr_oversampling in
            withUnsafeArgumentPackPointer(__ptr_oversampling) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_font_set_global_oversampling,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_hex_code_box_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hex_code_box_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func hexCodeBoxSize(
        _ size: Int64,
        index: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                    withUnsafeArgumentPackPointer(__ptr_size, __ptr_index) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_hex_code_box_size,
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

    internal static var __method_binding_draw_hex_code_box: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_hex_code_box").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602046441)!
        }
        }
    }()

    public func drawHexCodeBox(
        canvas: Godot.RID,
        size: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color
    ) {
        withTransferrableUnsafeRawPointer(to: canvas) { __ptr_canvas in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                            withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_size, __ptr_pos, __ptr_index, __ptr_color) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_create_shaped_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_shaped_text").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1231398698)!
        }
        }
    }()

    public func createShapedText(
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                    withUnsafeArgumentPackPointer(__ptr_direction, __ptr_orientation) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_create_shaped_text,
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

    internal static var __method_binding_shaped_text_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_clear").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()

    public func shapedTextClear(
        rid: Godot.RID
    ) {
        withTransferrableUnsafeRawPointer(to: rid) { __ptr_rid in
            withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_shaped_text_clear,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_direction").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1551430183)!
        }
        }
    }()

    public func shapedTextSetDirection(
        shaped: Godot.RID,
        direction: Godot.TextServer.Direction = TextServer.Direction(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_direction) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_direction").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()

    public func shapedTextGetDirection(
        shaped: Godot.RID
    ) -> Godot.TextServer.Direction {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_direction,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_inferred_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_inferred_direction").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3065904362)!
        }
        }
    }()

    public func shapedTextGetInferredDirection(
        shaped: Godot.RID
    ) -> Godot.TextServer.Direction {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_inferred_direction,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_bidi_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_bidi_override").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 684822712)!
        }
        }
    }()

    public func shapedTextSetBidiOverride<Value: Variant.Storable>(
        shaped: Godot.RID,
        override: Godot.GodotArray<Value>
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: override) { __ptr_override in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_override) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_set_custom_punctuation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_custom_punctuation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()

    public func shapedTextSetCustomPunctuation(
        shaped: Godot.RID,
        punct: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: punct) { __ptr_punct in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_punct) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_custom_punctuation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_custom_punctuation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()

    public func shapedTextGetCustomPunctuation(
        shaped: Godot.RID
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_custom_punctuation,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_orientation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3019609126)!
        }
        }
    }()

    public func shapedTextSetOrientation(
        shaped: Godot.RID,
        orientation: Godot.TextServer.Orientation = TextServer.Orientation(rawValue: 0)!
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: orientation) { __ptr_orientation in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_orientation) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_orientation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3142708106)!
        }
        }
    }()

    public func shapedTextGetOrientation(
        shaped: Godot.RID
    ) -> Godot.TextServer.Orientation {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_orientation,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_preserve_invalid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_invalid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func shapedTextSetPreserveInvalid(
        shaped: Godot.RID,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_preserve_invalid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_invalid").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func shapedTextGetPreserveInvalid(
        shaped: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_preserve_invalid,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_preserve_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_preserve_control").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()

    public func shapedTextSetPreserveControl(
        shaped: Godot.RID,
        enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_enabled) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_preserve_control: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_preserve_control").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func shapedTextGetPreserveControl(
        shaped: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_preserve_control,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_set_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_set_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1307259930)!
        }
        }
    }()

    public func shapedTextSetSpacing(
        shaped: Godot.RID,
        spacing: Godot.TextServer.SpacingType,
        value: Int64
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing, __ptr_value) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_spacing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_spacing").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1213653558)!
        }
        }
    }()

    public func shapedTextGetSpacing(
        shaped: Godot.RID,
        spacing: Godot.TextServer.SpacingType
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: spacing) { __ptr_spacing in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_spacing) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_get_spacing,
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

    internal static var __method_binding_shaped_text_add_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_string").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 623473029)!
        }
        }
    }()

    public func shapedTextAddString<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        shaped: Godot.RID,
        text: Godot.GodotString,
        fonts: Godot.GodotArray<Godot.RID>,
        size: Int64,
        opentypeFeatures: Godot.GodotDictionary<Value1, Value2> = [:],
        language: Godot.GodotString = "",
        meta: Value3 = Variant()
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                    withTransferrableUnsafeRawPointer(to: fonts) { __ptr_fonts in
                        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                            withTransferrableUnsafeRawPointer(to: opentypeFeatures) { __ptr_opentypeFeatures in
                                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                                    Godot.Variant.withStorageUnsafeRawPointer(to: meta) { __ptr_meta in
                                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_text, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures, __ptr_language, __ptr_meta) { __accessPtr in
                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                    Self.__method_binding_shaped_text_add_string,
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

    internal static var __method_binding_shaped_text_add_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_add_object").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3664424789)!
        }
        }
    }()

    public func shapedTextAddObject<Value: Variant.Storable>(
        shaped: Godot.RID,
        key: Value,
        size: Godot.Vector2,
        inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!,
        length: Int64 = 1,
        baseline: Double = 0.0
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
                    withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                        withTransferrableUnsafeRawPointer(to: inlineAlign) { __ptr_inlineAlign in
                            withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
                                withTransferrableUnsafeRawPointer(to: baseline) { __ptr_baseline in
                                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_length, __ptr_baseline) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
                                                Self.__method_binding_shaped_text_add_object,
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

    internal static var __method_binding_shaped_text_resize_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_resize_object").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 790361552)!
        }
        }
    }()

    public func shapedTextResizeObject<Value: Variant.Storable>(
        shaped: Godot.RID,
        key: Value,
        size: Godot.Vector2,
        inlineAlign: Godot.InlineAlignment = InlineAlignment(rawValue: 5)!,
        baseline: Double = 0.0
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
                    withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                        withTransferrableUnsafeRawPointer(to: inlineAlign) { __ptr_inlineAlign in
                            withTransferrableUnsafeRawPointer(to: baseline) { __ptr_baseline in
                                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key, __ptr_size, __ptr_inlineAlign, __ptr_baseline) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_shaped_text_resize_object,
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

    internal static var __method_binding_shaped_get_span_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func shapedGetSpanCount(
        shaped: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_get_span_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_get_span_meta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_get_span_meta").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4069510997)!
        }
        }
    }()

    public func shapedGetSpanMeta(
        shaped: Godot.RID,
        index: Int64
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_get_span_meta,
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

    internal static var __method_binding_shaped_set_span_update_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_set_span_update_font").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2022725822)!
        }
        }
    }()

    public func shapedSetSpanUpdateFont<Value1: Variant.Storable, Value2: Variant.Storable>(
        shaped: Godot.RID,
        index: Int64,
        fonts: Godot.GodotArray<Godot.RID>,
        size: Int64,
        opentypeFeatures: Godot.GodotDictionary<Value1, Value2> = [:]
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withTransferrableUnsafeRawPointer(to: fonts) { __ptr_fonts in
                    withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                        withTransferrableUnsafeRawPointer(to: opentypeFeatures) { __ptr_opentypeFeatures in
                            withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_index, __ptr_fonts, __ptr_size, __ptr_opentypeFeatures) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_substr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_substr").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1937682086)!
        }
        }
    }()

    public func shapedTextSubstr(
        shaped: Godot.RID,
        start: Int64,
        length: Int64
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                    withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_length) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_shaped_text_substr,
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

    internal static var __method_binding_shaped_text_get_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_parent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()

    public func shapedTextGetParent(
        shaped: Godot.RID
    ) -> Godot.RID {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_parent,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_fit_to_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_fit_to_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 530670926)!
        }
        }
    }()

    public func shapedTextFitToWidth(
        shaped: Godot.RID,
        width: Double,
        justificationFlags: Godot.TextServer.JustificationFlag = TextServer.JustificationFlag(rawValue: 3)
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                    withTransferrableUnsafeRawPointer(to: justificationFlags) { __ptr_justificationFlags in
                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_justificationFlags) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_shaped_text_fit_to_width,
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

    internal static var __method_binding_shaped_text_tab_align: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_tab_align").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1283669550)!
        }
        }
    }()

    public func shapedTextTabAlign(
        shaped: Godot.RID,
        tabStops: Godot.PackedFloat32Array
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: tabStops) { __ptr_tabStops in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_tabStops) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_tab_align,
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

    internal static var __method_binding_shaped_text_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_shape").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()

    public func shapedTextShape(
        shaped: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_shape,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_is_ready: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_is_ready").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func shapedTextIsReady(
        shaped: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_is_ready,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_has_visible_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_has_visible_chars").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()

    public func shapedTextHasVisibleChars(
        shaped: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_has_visible_chars,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyphs").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()

    public func shapedTextGetGlyphs(
        shaped: Godot.RID
    ) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_glyphs,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_sort_logical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_sort_logical").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2670461153)!
        }
        }
    }()

    public func shapedTextSortLogical(
        shaped: Godot.RID
    ) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_sort_logical,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_glyph_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_glyph_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func shapedTextGetGlyphCount(
        shaped: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_glyph_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 733700038)!
        }
        }
    }()

    public func shapedTextGetRange(
        shaped: Godot.RID
    ) -> Godot.Vector2I {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_range,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_line_breaks_adv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks_adv").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2376991424)!
        }
        }
    }()

    public func shapedTextGetLineBreaksAdv(
        shaped: Godot.RID,
        width: Godot.PackedFloat32Array,
        start: Int64 = 0,
        once: Bool = true,
        breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                    withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                        withTransferrableUnsafeRawPointer(to: once) { __ptr_once in
                            withTransferrableUnsafeRawPointer(to: breakFlags) { __ptr_breakFlags in
                                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_once, __ptr_breakFlags) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_shaped_text_get_line_breaks_adv,
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

    internal static var __method_binding_shaped_text_get_line_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_line_breaks").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2651359741)!
        }
        }
    }()

    public func shapedTextGetLineBreaks(
        shaped: Godot.RID,
        width: Double,
        start: Int64 = 0,
        breakFlags: Godot.TextServer.LineBreakFlag = TextServer.LineBreakFlag(rawValue: 3)
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                    withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                        withTransferrableUnsafeRawPointer(to: breakFlags) { __ptr_breakFlags in
                            withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_start, __ptr_breakFlags) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_shaped_text_get_line_breaks,
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

    internal static var __method_binding_shaped_text_get_word_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_word_breaks").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 185957063)!
        }
        }
    }()

    public func shapedTextGetWordBreaks(
        shaped: Godot.RID,
        graphemeFlags: Godot.TextServer.GraphemeFlag = TextServer.GraphemeFlag(rawValue: 264)
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: graphemeFlags) { __ptr_graphemeFlags in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_graphemeFlags) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_get_word_breaks,
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

    internal static var __method_binding_shaped_text_get_trim_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_trim_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func shapedTextGetTrimPos(
        shaped: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_trim_pos,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_ellipsis_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func shapedTextGetEllipsisPos(
        shaped: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_pos,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_ellipsis_glyphs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyphs").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()

    public func shapedTextGetEllipsisGlyphs(
        shaped: Godot.RID
    ) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_glyphs,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_ellipsis_glyph_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ellipsis_glyph_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()

    public func shapedTextGetEllipsisGlyphCount(
        shaped: Godot.RID
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_ellipsis_glyph_count,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_overrun_trim_to_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_overrun_trim_to_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2723146520)!
        }
        }
    }()

    public func shapedTextOverrunTrimToWidth(
        shaped: Godot.RID,
        width: Double = 0,
        overrunTrimFlags: Godot.TextServer.TextOverrunFlag = TextServer.TextOverrunFlag(rawValue: 0)
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: width) { __ptr_width in
                withTransferrableUnsafeRawPointer(to: overrunTrimFlags) { __ptr_overrunTrimFlags in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_width, __ptr_overrunTrimFlags) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_objects: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_objects").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()

    public func shapedTextGetObjects(
        shaped: Godot.RID
    ) -> Godot.AnyGodotArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_objects,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_object_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_object_rect").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 447978354)!
        }
        }
    }()

    public func shapedTextGetObjectRect<Value: Variant.Storable>(
        shaped: Godot.RID,
        key: Value
    ) -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                Godot.Variant.withStorageUnsafeRawPointer(to: key) { __ptr_key in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_key) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_get_object_rect,
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

    internal static var __method_binding_shaped_text_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_size").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2440833711)!
        }
        }
    }()

    public func shapedTextGetSize(
        shaped: Godot.RID
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_size,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_ascent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_ascent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func shapedTextGetAscent(
        shaped: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_ascent,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_descent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_descent").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func shapedTextGetDescent(
        shaped: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_descent,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_width").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func shapedTextGetWidth(
        shaped: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_width,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_underline_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func shapedTextGetUnderlinePosition(
        shaped: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_underline_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_underline_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_underline_thickness").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()

    public func shapedTextGetUnderlineThickness(
        shaped: Godot.RID
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_underline_thickness,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_get_carets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_carets").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1574219346)!
        }
        }
    }()

    public func shapedTextGetCarets(
        shaped: Godot.RID,
        position: Int64
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_position) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_get_carets,
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

    internal static var __method_binding_shaped_text_get_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_selection").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3714187733)!
        }
        }
    }()

    public func shapedTextGetSelection(
        shaped: Godot.RID,
        start: Int64,
        end: Int64
    ) -> Godot.PackedVector2Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                    withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_shaped_text_get_selection,
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

    internal static var __method_binding_shaped_text_hit_test_grapheme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_grapheme").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()

    public func shapedTextHitTestGrapheme(
        shaped: Godot.RID,
        coords: Double
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_hit_test_grapheme,
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

    internal static var __method_binding_shaped_text_hit_test_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_hit_test_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3149310417)!
        }
        }
    }()

    public func shapedTextHitTestPosition(
        shaped: Godot.RID,
        coords: Double
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: coords) { __ptr_coords in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_coords) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_hit_test_position,
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

    internal static var __method_binding_shaped_text_get_grapheme_bounds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_grapheme_bounds").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2546185844)!
        }
        }
    }()

    public func shapedTextGetGraphemeBounds(
        shaped: Godot.RID,
        pos: Int64
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_get_grapheme_bounds,
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

    internal static var __method_binding_shaped_text_next_grapheme_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_next_grapheme_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()

    public func shapedTextNextGraphemePos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_next_grapheme_pos,
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

    internal static var __method_binding_shaped_text_prev_grapheme_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_prev_grapheme_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()

    public func shapedTextPrevGraphemePos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_prev_grapheme_pos,
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

    internal static var __method_binding_shaped_text_get_character_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_character_breaks").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 788230395)!
        }
        }
    }()

    public func shapedTextGetCharacterBreaks(
        shaped: Godot.RID
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withUnsafeArgumentPackPointer(__ptr_shaped) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_shaped_text_get_character_breaks,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_shaped_text_next_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_next_character_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()

    public func shapedTextNextCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_next_character_pos,
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

    internal static var __method_binding_shaped_text_prev_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_prev_character_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()

    public func shapedTextPrevCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_prev_character_pos,
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

    internal static var __method_binding_shaped_text_closest_character_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_closest_character_pos").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1120910005)!
        }
        }
    }()

    public func shapedTextClosestCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_pos) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_shaped_text_closest_character_pos,
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

    internal static var __method_binding_shaped_text_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 880389142)!
        }
        }
    }()

    public func shapedTextDraw(
        shaped: Godot.RID,
        canvas: Godot.RID,
        pos: Godot.Vector2,
        clipL: Double = -1,
        clipR: Double = -1,
        color: Godot.Color = .white
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: canvas) { __ptr_canvas in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: clipL) { __ptr_clipL in
                        withTransferrableUnsafeRawPointer(to: clipR) { __ptr_clipR in
                            withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                                withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_color) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_draw_outline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_draw_outline").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2559184194)!
        }
        }
    }()

    public func shapedTextDrawOutline(
        shaped: Godot.RID,
        canvas: Godot.RID,
        pos: Godot.Vector2,
        clipL: Double = -1,
        clipR: Double = -1,
        outlineSize: Int64 = 1,
        color: Godot.Color = .white
    ) {
        withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
            withTransferrableUnsafeRawPointer(to: canvas) { __ptr_canvas in
                withTransferrableUnsafeRawPointer(to: pos) { __ptr_pos in
                    withTransferrableUnsafeRawPointer(to: clipL) { __ptr_clipL in
                        withTransferrableUnsafeRawPointer(to: clipR) { __ptr_clipR in
                            withTransferrableUnsafeRawPointer(to: outlineSize) { __ptr_outlineSize in
                                withTransferrableUnsafeRawPointer(to: color) { __ptr_color in
                                    withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_canvas, __ptr_pos, __ptr_clipL, __ptr_clipR, __ptr_outlineSize, __ptr_color) { __accessPtr in
                                        self.withUnsafeMutableRawPointer { __ptr_self in
                                            GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_shaped_text_get_dominant_direction_in_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shaped_text_get_dominant_direction_in_range").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3326907668)!
        }
        }
    }()

    public func shapedTextGetDominantDirectionInRange(
        shaped: Godot.RID,
        start: Int64,
        end: Int64
    ) -> Godot.TextServer.Direction {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: shaped) { __ptr_shaped in
                withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
                    withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                        withUnsafeArgumentPackPointer(__ptr_shaped, __ptr_start, __ptr_end) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_shaped_text_get_dominant_direction_in_range,
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

    internal static var __method_binding_format_number: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "format_number").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()

    public func formatNumber(
        _ number: Godot.GodotString,
        language: Godot.GodotString = ""
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_format_number,
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

    internal static var __method_binding_parse_number: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_number").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()

    public func parseNumber(
        _ number: Godot.GodotString,
        language: Godot.GodotString = ""
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_number, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_parse_number,
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

    internal static var __method_binding_percent_sign: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "percent_sign").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 993269549)!
        }
        }
    }()

    public func percentSign(
        language: Godot.GodotString = ""
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_percent_sign,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_string_get_word_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_get_word_breaks").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 581857818)!
        }
        }
    }()

    public func stringGetWordBreaks(
        string: Godot.GodotString,
        language: Godot.GodotString = "",
        charsPerLine: Int64 = 0
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withTransferrableUnsafeRawPointer(to: charsPerLine) { __ptr_charsPerLine in
                        withUnsafeArgumentPackPointer(__ptr_string, __ptr_language, __ptr_charsPerLine) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_string_get_word_breaks,
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

    internal static var __method_binding_string_get_character_breaks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_get_character_breaks").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2333794773)!
        }
        }
    }()

    public func stringGetCharacterBreaks(
        string: Godot.GodotString,
        language: Godot.GodotString = ""
    ) -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_string_get_character_breaks,
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

    internal static var __method_binding_is_confusable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_confusable").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1433197768)!
        }
        }
    }()

    public func isConfusable(
        string: Godot.GodotString,
        dict: Godot.PackedStringArray
    ) -> Int64 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withTransferrableUnsafeRawPointer(to: dict) { __ptr_dict in
                    withUnsafeArgumentPackPointer(__ptr_string, __ptr_dict) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_is_confusable,
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

    internal static var __method_binding_spoof_check: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "spoof_check").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func spoofCheck(
        string: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_spoof_check,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_strip_diacritics: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "strip_diacritics").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()

    public func stripDiacritics(
        string: Godot.GodotString
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_strip_diacritics,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_valid_identifier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_identifier").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func isValidIdentifier(
        string: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_valid_identifier,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_string_to_upper: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_upper").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()

    public func stringToUpper(
        string: Godot.GodotString,
        language: Godot.GodotString = ""
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_string_to_upper,
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

    internal static var __method_binding_string_to_lower: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "string_to_lower").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2664628024)!
        }
        }
    }()

    public func stringToLower(
        string: Godot.GodotString,
        language: Godot.GodotString = ""
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: string) { __ptr_string in
                withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                    withUnsafeArgumentPackPointer(__ptr_string, __ptr_language) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_string_to_lower,
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

    internal static var __method_binding_parse_structured_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "parse_structured_text").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3310685015)!
        }
        }
    }()

    public func parseStructuredText<Value: Variant.Storable>(
        parserType: Godot.TextServer.StructuredTextParser,
        args: Godot.GodotArray<Value>,
        text: Godot.GodotString
    ) -> Godot.GodotArray<Godot.Vector3I> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: parserType) { __ptr_parserType in
                withTransferrableUnsafeRawPointer(to: args) { __ptr_args in
                    withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                        withUnsafeArgumentPackPointer(__ptr_parserType, __ptr_args, __ptr_text) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_parse_structured_text,
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