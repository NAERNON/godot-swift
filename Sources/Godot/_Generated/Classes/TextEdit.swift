//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class TextEdit: Control {
    public enum MenuItems: UInt32, GodotEnum {
        case cut = 0
        case copy = 1
        case paste = 2
        case clear = 3
        case selectAll = 4
        case undo = 5
        case redo = 6
        case submenuTextDir = 7
        case dirInherited = 8
        case dirAuto = 9
        case dirLtr = 10
        case dirRtl = 11
        case displayUcc = 12
        case submenuInsertUcc = 13
        case insertLrm = 14
        case insertRlm = 15
        case insertLre = 16
        case insertRle = 17
        case insertLro = 18
        case insertRlo = 19
        case insertPdf = 20
        case insertAlm = 21
        case insertLri = 22
        case insertRli = 23
        case insertFsi = 24
        case insertPdi = 25
        case insertZwj = 26
        case insertZwnj = 27
        case insertWj = 28
        case insertShy = 29
        case max = 30

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Cut", 0),
            ("Copy", 1),
            ("Paste", 2),
            ("Clear", 3),
            ("Select All", 4),
            ("Undo", 5),
            ("Redo", 6),
            ("Submenu Text Dir", 7),
            ("Dir Inherited", 8),
            ("Dir Auto", 9),
            ("Dir Ltr", 10),
            ("Dir Rtl", 11),
            ("Display Ucc", 12),
            ("Submenu Insert Ucc", 13),
            ("Insert Lrm", 14),
            ("Insert Rlm", 15),
            ("Insert Lre", 16),
            ("Insert Rle", 17),
            ("Insert Lro", 18),
            ("Insert Rlo", 19),
            ("Insert Pdf", 20),
            ("Insert Alm", 21),
            ("Insert Lri", 22),
            ("Insert Rli", 23),
            ("Insert Fsi", 24),
            ("Insert Pdi", 25),
            ("Insert Zwj", 26),
            ("Insert Zwnj", 27),
            ("Insert Wj", 28),
            ("Insert Shy", 29),
            ("Max", 30),]
        }
    }

    public enum EditAction: UInt32, GodotEnum {
        case none = 0
        case typing = 1
        case backspace = 2
        case delete = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Typing", 1),
            ("Backspace", 2),
            ("Delete", 3),]
        }
    }

    public enum SearchFlags: UInt32, GodotEnum {
        case matchCase = 1
        case wholeWords = 2
        case backwards = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Match Case", 1),
            ("Whole Words", 2),
            ("Backwards", 4),]
        }
    }

    public enum CaretType: UInt32, GodotEnum {
        case line = 0
        case block = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Line", 0),
            ("Block", 1),]
        }
    }

    public enum SelectionMode: UInt32, GodotEnum {
        case none = 0
        case shift = 1
        case pointer = 2
        case word = 3
        case line = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Shift", 1),
            ("Pointer", 2),
            ("Word", 3),
            ("Line", 4),]
        }
    }

    public enum LineWrappingMode: UInt32, GodotEnum {
        case none = 0
        case boundary = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Boundary", 1),]
        }
    }

    public enum GutterType: UInt32, GodotEnum {
        case string = 0
        case icon = 1
        case custom = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("String", 0),
            ("Icon", 1),
            ("Custom", 2),]
        }
    }

    public func textSet() {
        _ = textSetSignal.emit()
    }

    public lazy var textSetSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "text_set") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func textChanged() {
        _ = textChangedSignal.emit()
    }

    public lazy var textChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "text_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct LinesEditedFromSignalInput: Godot.SignalInput {
        public let fromLine: Int

        public let toLine: Int

        fileprivate init(
            fromLine: Int,
            toLine: Int
        ) {
            self.fromLine = fromLine
            self.toLine = toLine
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.fromLine), Variant(input.toLine)]
        }
    }

    public func linesEditedFrom(
        fromLine: Int,
        toLine: Int
    ) {
        _ = linesEditedFromSignal.emit(.init(fromLine: fromLine,
                toLine: toLine))
    }

    public lazy var linesEditedFromSignal: Godot.SignalEmitter<LinesEditedFromSignalInput> = {
        .init(object: self, signalName: "lines_edited_from") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<LinesEditedFromSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(fromLine: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    toLine: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<LinesEditedFromSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<LinesEditedFromSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func caretChanged() {
        _ = caretChangedSignal.emit()
    }

    public lazy var caretChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "caret_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct GutterClickedSignalInput: Godot.SignalInput {
        public let line: Int

        public let gutter: Int

        fileprivate init(
            line: Int,
            gutter: Int
        ) {
            self.line = line
            self.gutter = gutter
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.line), Variant(input.gutter)]
        }
    }

    public func gutterClicked(
        line: Int,
        gutter: Int
    ) {
        _ = gutterClickedSignal.emit(.init(line: line,
                gutter: gutter))
    }

    public lazy var gutterClickedSignal: Godot.SignalEmitter<GutterClickedSignalInput> = {
        .init(object: self, signalName: "gutter_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<GutterClickedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(line: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    gutter: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<GutterClickedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<GutterClickedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func gutterAdded() {
        _ = gutterAddedSignal.emit()
    }

    public lazy var gutterAddedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "gutter_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func gutterRemoved() {
        _ = gutterRemovedSignal.emit()
    }

    public lazy var gutterRemovedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "gutter_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _handleUnicodeInput(
        unicodeChar: Int32,
        caretIndex: Int32
    ) {
    }

    open func _backspace(
        caretIndex: Int32
    ) {
    }

    open func _cut(
        caretIndex: Int32
    ) {
    }

    open func _copy(
        caretIndex: Int32
    ) {
    }

    open func _paste(
        caretIndex: Int32
    ) {
    }

    open func _pastePrimaryClipboard(
        caretIndex: Int32
    ) {
    }

    internal static var __method_binding_has_ime_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_ime_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasImeText() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_ime_text,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_editable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEditable(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_editable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_editable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isEditable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_editable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_text_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 119160795)!
        }
        }
    }()

    private func __setTextDirection(
        _ direction: Godot.Control.TextDirection
    ) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_text_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_text_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 797257663)!
        }
        }
    }()

    private func __getTextDirection() -> Godot.Control.TextDirection {
        Godot.Control.TextDirection.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_text_direction,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setLanguage(
        _ language: Godot.GodotString
    ) {
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_language,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getLanguage() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_language,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_structured_text_bidi_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 55961453)!
        }
        }
    }()

    private func __setStructuredTextBidiOverride(
        parser: Godot.TextServer.StructuredTextParser
    ) {
        parser.withGodotUnsafeRawPointer { __ptr_parser in
        withUnsafeArgumentPackPointer(__ptr_parser) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_structured_text_bidi_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_structured_text_bidi_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3385126229)!
        }
        }
    }()

    private func __getStructuredTextBidiOverride() -> Godot.TextServer.StructuredTextParser {
        Godot.TextServer.StructuredTextParser.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_structured_text_bidi_override,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_structured_text_bidi_override_options").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setStructuredTextBidiOverrideOptions<Value: VariantStorable>(
        args: Godot.GodotArray<Value>
    ) {
        args.withGodotUnsafeRawPointer { __ptr_args in
        withUnsafeArgumentPackPointer(__ptr_args) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_structured_text_bidi_override_options,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_structured_text_bidi_override_options").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getStructuredTextBidiOverrideOptions() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_structured_text_bidi_override_options,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tab_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tab_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func setTabSize(
        _ size: Int32
    ) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tab_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tab_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tab_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func tabSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tab_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_overtype_mode_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_overtype_mode_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func setOvertypeModeEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_overtype_mode_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_overtype_mode_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_overtype_mode_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isOvertypeModeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_overtype_mode_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_context_menu_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_context_menu_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setContextMenuEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_context_menu_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_context_menu_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_context_menu_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isContextMenuEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_context_menu_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_shortcut_keys_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setShortcutKeysEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_shortcut_keys_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_shortcut_keys_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isShortcutKeysEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_shortcut_keys_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_virtual_keyboard_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setVirtualKeyboardEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_virtual_keyboard_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_virtual_keyboard_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isVirtualKeyboardEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_virtual_keyboard_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_middle_mouse_paste_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setMiddleMousePasteEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_middle_mouse_paste_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_middle_mouse_paste_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isMiddleMousePasteEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_middle_mouse_paste_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_set_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setText(
        _ text: Godot.GodotString
    ) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getText() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_text,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_line_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func lineCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setPlaceholder(
        text: Godot.GodotString
    ) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_placeholder,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getPlaceholder() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_placeholder,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func setLine(
        _ line: Int32,
        newText: Godot.GodotString
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        newText.withGodotUnsafeRawPointer { __ptr_newText in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_newText) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func line(
        _ line: Int32
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_line_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 688195400)!
        }
        }
    }()

    public func lineWidth(
        line: Int32,
        wrapIndex: Int32 = -1
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_line_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func lineHeight() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_indent_level: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_indent_level").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func indentLevel(
        line: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_indent_level,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_first_non_whitespace_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_first_non_whitespace_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func firstNonWhitespaceColumn(
        line: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_first_non_whitespace_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_swap_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "swap_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func swapLines(
        fromLine: Int32,
        toLine: Int32
    ) {
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_toLine) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_swap_lines,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_insert_line_at: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "insert_line_at").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func insertLineAt(
        line: Int32,
        text: Godot.GodotString
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_insert_line_at,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_insert_text_at_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "insert_text_at_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2697778442)!
        }
        }
    }()

    public func insertTextAtCaret(
        text: Godot.GodotString,
        caretIndex: Int32 = -1
    ) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_text, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_insert_text_at_caret,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4275841770)!
        }
        }
    }()

    public func removeText(
        fromLine: Int32,
        fromColumn: Int32,
        toLine: Int32,
        toColumn: Int32
    ) {
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        fromColumn.withGodotUnsafeRawPointer { __ptr_fromColumn in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        toColumn.withGodotUnsafeRawPointer { __ptr_toColumn in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_fromColumn, __ptr_toLine, __ptr_toColumn) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_last_unhidden_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_unhidden_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func lastUnhiddenLine() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_unhidden_line,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_next_visible_line_offset_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_visible_line_offset_from").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()

    public func nextVisibleLineOffsetFrom(
        line: Int32,
        visibleAmount: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        visibleAmount.withGodotUnsafeRawPointer { __ptr_visibleAmount in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_visibleAmount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_next_visible_line_offset_from,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_next_visible_line_index_offset_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_visible_line_index_offset_from").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3386475622)!
        }
        }
    }()

    public func nextVisibleLineIndexOffsetFrom(
        line: Int32,
        wrapIndex: Int32,
        visibleAmount: Int32
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        visibleAmount.withGodotUnsafeRawPointer { __ptr_visibleAmount in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex, __ptr_visibleAmount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_next_visible_line_index_offset_from,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_backspace: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "backspace").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func backspace(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_backspace,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_cut: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cut").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func cut(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_cut,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_copy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "copy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func copy(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_copy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_paste: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "paste").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func paste(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_paste,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_paste_primary_clipboard: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "paste_primary_clipboard").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func pastePrimaryClipboard(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_paste_primary_clipboard,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_start_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "start_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2834827583)!
        }
        }
    }()

    public func startAction(
        _ action: Godot.TextEdit.EditAction
    ) {
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_start_action,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_end_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "end_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func endAction() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_end_action,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_begin_complex_operation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "begin_complex_operation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func beginComplexOperation() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_begin_complex_operation,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_end_complex_operation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "end_complex_operation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func endComplexOperation() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_end_complex_operation,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_has_undo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_undo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasUndo() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_undo,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_has_redo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_redo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasRedo() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_redo,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_undo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "undo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func undo() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_undo,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_redo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "redo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func redo() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_redo,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_clear_undo_history: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_undo_history").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearUndoHistory() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_undo_history,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_tag_saved_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "tag_saved_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func tagSavedVersion() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_tag_saved_version,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func version() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_version,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_saved_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_saved_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func savedVersion() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_saved_version,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_search_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_search_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func setSearchText(
        _ searchText: Godot.GodotString
    ) {
        searchText.withGodotUnsafeRawPointer { __ptr_searchText in
        withUnsafeArgumentPackPointer(__ptr_searchText) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_search_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_search_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_search_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func setSearchFlags(
        _ flags: UInt32
    ) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_search_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "search").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1203739136)!
        }
        }
    }()

    public func search(
        text: Godot.GodotString,
        flags: UInt32,
        fromLine line: Int32,
        fromColum colum: Int32
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        text.withGodotUnsafeRawPointer { __ptr_text in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        line.withGodotUnsafeRawPointer { __ptr_line in
        colum.withGodotUnsafeRawPointer { __ptr_colum in
        withUnsafeArgumentPackPointer(__ptr_text, __ptr_flags, __ptr_line, __ptr_colum) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_search,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_set_tooltip_request_func: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tooltip_request_func").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()

    public func setTooltipRequestFunc(
        callback: Godot.Callable
    ) {
        callback.withGodotUnsafeRawPointer { __ptr_callback in
        withUnsafeArgumentPackPointer(__ptr_callback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tooltip_request_func,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_local_mouse_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_mouse_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func localMousePos() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_local_mouse_pos,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_word_at_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_word_at_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3674420000)!
        }
        }
    }()

    public func wordAtPos(
        position: Godot.Vector2
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_word_at_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_line_column_at_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_column_at_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 239517838)!
        }
        }
    }()

    public func lineColumnAtPos(
        position: Godot.Vector2I,
        allowOutOfBounds: Bool = true
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        allowOutOfBounds.withGodotUnsafeRawPointer { __ptr_allowOutOfBounds in
        withUnsafeArgumentPackPointer(__ptr_position, __ptr_allowOutOfBounds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_column_at_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_pos_at_line_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pos_at_line_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410388347)!
        }
        }
    }()

    public func posAtLineColumn(
        line: Int32,
        column: Int32
    ) -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pos_at_line_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_rect_at_line_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rect_at_line_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3256618057)!
        }
        }
    }()

    public func rectAtLineColumn(
        line: Int32,
        column: Int32
    ) -> Godot.Rect2I {
        Godot.Rect2I.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rect_at_line_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_minimap_line_at_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_line_at_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2485466453)!
        }
        }
    }()

    public func minimapLineAtPos(
        position: Godot.Vector2I
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimap_line_at_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_is_dragging_cursor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_dragging_cursor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isDraggingCursor() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_dragging_cursor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_mouse_over_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_mouse_over_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1840282309)!
        }
        }
    }()

    public func isMouseOverSelection(
        edges: Bool,
        caretIndex: Int32 = -1
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        edges.withGodotUnsafeRawPointer { __ptr_edges in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_edges, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_mouse_over_selection,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_caret_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1211596914)!
        }
        }
    }()

    private func __setCaretType(
        _ type: Godot.TextEdit.CaretType
    ) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_caret_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2830252959)!
        }
        }
    }()

    private func __getCaretType() -> Godot.TextEdit.CaretType {
        Godot.TextEdit.CaretType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_caret_blink_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_blink_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCaretBlinkEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_blink_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_caret_blink_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_caret_blink_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCaretBlinkEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_caret_blink_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_caret_blink_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_blink_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setCaretBlinkInterval(
        _ interval: Double
    ) {
        interval.withGodotUnsafeRawPointer { __ptr_interval in
        withUnsafeArgumentPackPointer(__ptr_interval) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_blink_interval,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_caret_blink_interval: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_blink_interval").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getCaretBlinkInterval() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_blink_interval,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_draw_caret_when_editable_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_caret_when_editable_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawCaretWhenEditableDisabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_caret_when_editable_disabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_drawing_caret_when_editable_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_caret_when_editable_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingCaretWhenEditableDisabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drawing_caret_when_editable_disabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_move_caret_on_right_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_move_caret_on_right_click_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setMoveCaretOnRightClickEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_move_caret_on_right_click_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_move_caret_on_right_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_move_caret_on_right_click_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isMoveCaretOnRightClickEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_move_caret_on_right_click_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_mid_grapheme_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCaretMidGraphemeEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_mid_grapheme_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_caret_mid_grapheme_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCaretMidGraphemeEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_caret_mid_grapheme_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_multiple_carets_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_multiple_carets_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setMultipleCaretsEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_multiple_carets_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_multiple_carets_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_multiple_carets_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isMultipleCaretsEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_multiple_carets_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 50157827)!
        }
        }
    }()

    public func addCaret(
        line: Int32,
        col: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        col.withGodotUnsafeRawPointer { __ptr_col in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_col) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_caret,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_remove_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeCaret(
        _ caret: Int32
    ) {
        caret.withGodotUnsafeRawPointer { __ptr_caret in
        withUnsafeArgumentPackPointer(__ptr_caret) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_caret,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_secondary_carets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_secondary_carets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func removeSecondaryCarets() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_secondary_carets,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_merge_overlapping_carets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "merge_overlapping_carets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func mergeOverlappingCarets() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_merge_overlapping_carets,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_get_caret_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func caretCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_caret_at_carets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_caret_at_carets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func addCaretAtCarets(
        below: Bool
    ) {
        below.withGodotUnsafeRawPointer { __ptr_below in
        withUnsafeArgumentPackPointer(__ptr_below) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_caret_at_carets,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_caret_index_edit_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_index_edit_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()

    public func caretIndexEditOrder() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_index_edit_order,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_adjust_carets_after_edit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "adjust_carets_after_edit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1770277138)!
        }
        }
    }()

    public func adjustCaretsAfterEdit(
        caret: Int32,
        fromLine: Int32,
        fromCol: Int32,
        toLine: Int32,
        toCol: Int32
    ) {
        caret.withGodotUnsafeRawPointer { __ptr_caret in
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        fromCol.withGodotUnsafeRawPointer { __ptr_fromCol in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        toCol.withGodotUnsafeRawPointer { __ptr_toCol in
        withUnsafeArgumentPackPointer(__ptr_caret, __ptr_fromLine, __ptr_fromCol, __ptr_toLine, __ptr_toCol) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_adjust_carets_after_edit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_is_caret_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_caret_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1051549951)!
        }
        }
    }()

    public func isCaretVisible(
        caretIndex: Int32 = 0
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_caret_visible,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_caret_draw_pos: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_draw_pos").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 478253731)!
        }
        }
    }()

    public func caretDrawPos(
        caretIndex: Int32 = 0
    ) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_draw_pos,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_caret_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1302582944)!
        }
        }
    }()

    public func setCaretLine(
        _ line: Int32,
        adjustViewport: Bool = true,
        canBeHidden: Bool = true,
        wrapIndex: Int32 = 0,
        caretIndex: Int32 = 0
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        adjustViewport.withGodotUnsafeRawPointer { __ptr_adjustViewport in
        canBeHidden.withGodotUnsafeRawPointer { __ptr_canBeHidden in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_adjustViewport, __ptr_canBeHidden, __ptr_wrapIndex, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_get_caret_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func caretLine(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_caret_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_caret_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3796796178)!
        }
        }
    }()

    public func setCaretColumn(
        _ column: Int32,
        adjustViewport: Bool = true,
        caretIndex: Int32 = 0
    ) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        adjustViewport.withGodotUnsafeRawPointer { __ptr_adjustViewport in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_adjustViewport, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_caret_column,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_caret_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func caretColumn(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_caret_wrap_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_caret_wrap_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func caretWrapIndex(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_caret_wrap_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_word_under_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_word_under_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3929349208)!
        }
        }
    }()

    public func wordUnderCaret(
        caretIndex: Int32 = -1
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_word_under_caret,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_selecting_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selecting_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setSelectingEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_selecting_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_selecting_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_selecting_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isSelectingEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_selecting_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_deselect_on_focus_loss_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDeselectOnFocusLossEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_deselect_on_focus_loss_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_deselect_on_focus_loss_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDeselectOnFocusLossEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_deselect_on_focus_loss_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drag_and_drop_selection_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDragAndDropSelectionEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_drag_and_drop_selection_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drag_and_drop_selection_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDragAndDropSelectionEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drag_and_drop_selection_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_selection_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selection_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1443345937)!
        }
        }
    }()

    public func setSelectionMode(
        _ mode: Godot.TextEdit.SelectionMode,
        line: Int32 = -1,
        column: Int32 = -1,
        caretIndex: Int32 = 0
    ) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_mode, __ptr_line, __ptr_column, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_selection_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_selection_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3750106938)!
        }
        }
    }()

    public func selectionMode() -> Godot.TextEdit.SelectionMode {
        Godot.TextEdit.SelectionMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_select_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func selectAll() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_select_all,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_select_word_under_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select_word_under_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func selectWordUnderCaret(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_select_word_under_caret,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_add_selection_for_next_occurrence: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_selection_for_next_occurrence").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func addSelectionForNextOccurrence() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_selection_for_next_occurrence,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_select: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "select").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2560984452)!
        }
        }
    }()

    public func select(
        fromLine: Int32,
        fromColumn: Int32,
        toLine: Int32,
        toColumn: Int32,
        caretIndex: Int32 = 0
    ) {
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        fromColumn.withGodotUnsafeRawPointer { __ptr_fromColumn in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        toColumn.withGodotUnsafeRawPointer { __ptr_toColumn in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_fromColumn, __ptr_toLine, __ptr_toColumn, __ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_select,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_has_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2824505868)!
        }
        }
    }()

    public func hasSelection(
        caretIndex: Int32 = -1
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_selection,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selected_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2309358862)!
        }
        }
    }()

    public func selectedText(
        caretIndex: Int32 = -1
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selected_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionLine(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionColumn(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_from_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_from_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionFromLine(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_from_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_from_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_from_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionFromColumn(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_from_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_to_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_to_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionToLine(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_to_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_selection_to_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selection_to_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()

    public func selectionToColumn(
        caretIndex: Int32 = 0
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selection_to_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_deselect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "deselect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func deselect(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_deselect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_delete_selection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "delete_selection").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func deleteSelection(
        caretIndex: Int32 = -1
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_delete_selection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_line_wrapping_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_wrapping_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2525115309)!
        }
        }
    }()

    private func __setLineWrappingMode(
        _ mode: Godot.TextEdit.LineWrappingMode
    ) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_wrapping_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_line_wrapping_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_wrapping_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3562716114)!
        }
        }
    }()

    private func __getLineWrappingMode() -> Godot.TextEdit.LineWrappingMode {
        Godot.TextEdit.LineWrappingMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_wrapping_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_autowrap_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_autowrap_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3289138044)!
        }
        }
    }()

    private func __setAutowrapMode(
        _ autowrapMode: Godot.TextServer.AutowrapMode
    ) {
        autowrapMode.withGodotUnsafeRawPointer { __ptr_autowrapMode in
        withUnsafeArgumentPackPointer(__ptr_autowrapMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_autowrap_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_autowrap_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_autowrap_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1549071663)!
        }
        }
    }()

    private func __getAutowrapMode() -> Godot.TextServer.AutowrapMode {
        Godot.TextServer.AutowrapMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_autowrap_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_line_wrapped: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_wrapped").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineWrapped(
        line: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_line_wrapped,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_line_wrap_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_wrap_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func lineWrapCount(
        line: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_wrap_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_line_wrap_index_at_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_wrap_index_at_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()

    public func lineWrapIndexAtColumn(
        line: Int32,
        column: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_wrap_index_at_column,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_line_wrapped_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_wrapped_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 647634434)!
        }
        }
    }()

    public func lineWrappedText(
        line: Int32
    ) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_wrapped_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_smooth_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_smooth_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setSmoothScrollEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_smooth_scroll_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_smooth_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_smooth_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isSmoothScrollEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_smooth_scroll_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_v_scroll_bar: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_scroll_bar").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3226026593)!
        }
        }
    }()

    public func vScrollBar() -> Godot.VScrollBar? {
        Godot.VScrollBar?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_scroll_bar,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_h_scroll_bar: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_scroll_bar").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3774687988)!
        }
        }
    }()

    public func hScrollBar() -> Godot.HScrollBar? {
        Godot.HScrollBar?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_h_scroll_bar,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_v_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_scroll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVScroll(
        value: Double
    ) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_v_scroll,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_v_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_scroll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVScroll() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_scroll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_h_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_scroll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setHScroll(
        value: Int32
    ) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_h_scroll,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_h_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_scroll").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getHScroll() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_h_scroll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_scroll_past_end_of_file_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scroll_past_end_of_file_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setScrollPastEndOfFileEnabled(
        enable: Bool
    ) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scroll_past_end_of_file_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_scroll_past_end_of_file_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_scroll_past_end_of_file_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isScrollPastEndOfFileEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_scroll_past_end_of_file_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_v_scroll_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_scroll_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setVScrollSpeed(
        _ speed: Double
    ) {
        speed.withGodotUnsafeRawPointer { __ptr_speed in
        withUnsafeArgumentPackPointer(__ptr_speed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_v_scroll_speed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_v_scroll_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_scroll_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getVScrollSpeed() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_scroll_speed,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_fit_content_height_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fit_content_height_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setFitContentHeightEnabled(
        _ enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fit_content_height_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_fit_content_height_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_fit_content_height_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isFitContentHeightEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_fit_content_height_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_scroll_pos_for_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scroll_pos_for_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3929084198)!
        }
        }
    }()

    public func scrollPosForLine(
        _ line: Int32,
        wrapIndex: Int32 = 0
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scroll_pos_for_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_as_first_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_first_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2230941749)!
        }
        }
    }()

    public func setLineAsFirstVisible(
        line: Int32,
        wrapIndex: Int32 = 0
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_as_first_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_first_visible_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_first_visible_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func firstVisibleLine() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_first_visible_line,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_line_as_center_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_center_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2230941749)!
        }
        }
    }()

    public func setLineAsCenterVisible(
        line: Int32,
        wrapIndex: Int32 = 0
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_as_center_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_line_as_last_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_last_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2230941749)!
        }
        }
    }()

    public func setLineAsLastVisible(
        line: Int32,
        wrapIndex: Int32 = 0
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        wrapIndex.withGodotUnsafeRawPointer { __ptr_wrapIndex in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_wrapIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_as_last_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_last_full_visible_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_full_visible_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func lastFullVisibleLine() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_full_visible_line,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_last_full_visible_line_wrap_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_last_full_visible_line_wrap_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func lastFullVisibleLineWrapIndex() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_last_full_visible_line_wrap_index,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_visible_line_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visible_line_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func visibleLineCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visible_line_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_visible_line_count_in_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visible_line_count_in_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3175239445)!
        }
        }
    }()

    public func visibleLineCountInRange(
        fromLine: Int32,
        toLine: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_toLine) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visible_line_count_in_range,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_get_total_visible_line_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_visible_line_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func totalVisibleLineCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_visible_line_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_adjust_viewport_to_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "adjust_viewport_to_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()

    public func adjustViewportToCaret(
        caretIndex: Int32 = 0
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_adjust_viewport_to_caret,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_center_viewport_to_caret: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "center_viewport_to_caret").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()

    public func centerViewportToCaret(
        caretIndex: Int32 = 0
    ) {
        caretIndex.withGodotUnsafeRawPointer { __ptr_caretIndex in
        withUnsafeArgumentPackPointer(__ptr_caretIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_center_viewport_to_caret,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_draw_minimap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_minimap").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawMinimap(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_minimap,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_drawing_minimap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_minimap").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingMinimap() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drawing_minimap,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_minimap_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setMinimapWidth(
        _ width: Int32
    ) {
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_minimap_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_minimap_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getMinimapWidth() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimap_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_minimap_visible_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_visible_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func minimapVisibleLines() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimap_visible_lines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1025054187)!
        }
        }
    }()

    public func addGutter(
        at: Int32 = -1
    ) {
        at.withGodotUnsafeRawPointer { __ptr_at in
        withUnsafeArgumentPackPointer(__ptr_at) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_remove_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func removeGutter(
        _ gutter: Int32
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_gutter_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gutter_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func gutterCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gutter_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_gutter_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()

    public func setGutterName(
        gutter: Int32,
        name: Godot.GodotString
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_gutter_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gutter_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func gutterName(
        gutter: Int32
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gutter_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_gutter_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1088959071)!
        }
        }
    }()

    public func setGutterType(
        gutter: Int32,
        type: Godot.TextEdit.GutterType
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_gutter_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gutter_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1159699127)!
        }
        }
    }()

    public func gutterType(
        gutter: Int32
    ) -> Godot.TextEdit.GutterType {
        Godot.TextEdit.GutterType.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gutter_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_gutter_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setGutterWidth(
        gutter: Int32,
        width: Int32
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_gutter_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gutter_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func gutterWidth(
        gutter: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gutter_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_gutter_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setGutterDraw(
        gutter: Int32,
        draw: Bool
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        draw.withGodotUnsafeRawPointer { __ptr_draw in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_draw) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_gutter_drawn: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_gutter_drawn").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isGutterDrawn(
        gutter: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_gutter_drawn,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_gutter_clickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_clickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setGutterClickable(
        gutter: Int32,
        clickable: Bool
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        clickable.withGodotUnsafeRawPointer { __ptr_clickable in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_clickable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_clickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_gutter_clickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_gutter_clickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isGutterClickable(
        gutter: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_gutter_clickable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_gutter_overwritable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_overwritable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setGutterOverwritable(
        gutter: Int32,
        overwritable: Bool
    ) {
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        overwritable.withGodotUnsafeRawPointer { __ptr_overwritable in
        withUnsafeArgumentPackPointer(__ptr_gutter, __ptr_overwritable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_overwritable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_gutter_overwritable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_gutter_overwritable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isGutterOverwritable(
        gutter: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_gutter_overwritable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_merge_gutters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "merge_gutters").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func mergeGutters(
        fromLine: Int32,
        toLine: Int32
    ) {
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_toLine) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_merge_gutters,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_gutter_custom_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gutter_custom_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 957362965)!
        }
        }
    }()

    public func setGutterCustomDraw(
        column: Int32,
        drawCallback: Godot.Callable
    ) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        drawCallback.withGodotUnsafeRawPointer { __ptr_drawCallback in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_drawCallback) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gutter_custom_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_total_gutter_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_total_gutter_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func totalGutterWidth() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_total_gutter_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_line_gutter_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_gutter_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2060538656)!
        }
        }
    }()

    public func setLineGutterMetadata<Value: VariantStorableIn>(
        line: Int32,
        gutter: Int32,
        metadata: Value
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        Godot.Variant.withStorageUnsafeRawPointer(to: metadata) { __ptr_metadata in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter, __ptr_metadata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_gutter_metadata,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_line_gutter_metadata: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_gutter_metadata").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 678354945)!
        }
        }
    }()

    public func lineGutterMetadata(
        line: Int32,
        gutter: Int32
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_gutter_metadata,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_gutter_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_gutter_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2285447957)!
        }
        }
    }()

    public func setLineGutterText(
        line: Int32,
        gutter: Int32,
        text: Godot.GodotString
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter, __ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_gutter_text,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_line_gutter_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_gutter_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1391810591)!
        }
        }
    }()

    public func lineGutterText(
        line: Int32,
        gutter: Int32
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_gutter_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_gutter_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_gutter_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 176101966)!
        }
        }
    }()

    public func setLineGutterIcon(
        line: Int32,
        gutter: Int32,
        icon: Godot.Texture2D?
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter, _ptr___ptr_icon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_gutter_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_get_line_gutter_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_gutter_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2584904275)!
        }
        }
    }()

    public func lineGutterIcon(
        line: Int32,
        gutter: Int32
    ) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_gutter_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_gutter_item_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_gutter_item_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3733378741)!
        }
        }
    }()

    public func setLineGutterItemColor(
        line: Int32,
        gutter: Int32,
        color: Godot.Color
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_gutter_item_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_get_line_gutter_item_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_gutter_item_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2165839948)!
        }
        }
    }()

    public func lineGutterItemColor(
        line: Int32,
        gutter: Int32
    ) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_gutter_item_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_gutter_clickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_gutter_clickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1383440665)!
        }
        }
    }()

    public func setLineGutterClickable(
        line: Int32,
        gutter: Int32,
        clickable: Bool
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        clickable.withGodotUnsafeRawPointer { __ptr_clickable in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter, __ptr_clickable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_gutter_clickable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_is_line_gutter_clickable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_gutter_clickable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()

    public func isLineGutterClickable(
        line: Int32,
        gutter: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        gutter.withGodotUnsafeRawPointer { __ptr_gutter in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_gutter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_line_gutter_clickable,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_line_background_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_background_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()

    public func setLineBackgroundColor(
        line: Int32,
        color: Godot.Color
    ) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_background_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_line_background_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_background_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3457211756)!
        }
        }
    }()

    public func lineBackgroundColor(
        line: Int32
    ) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_background_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2765644541)!
        }
        }
    }()

    private func __setSyntaxHighlighter(
        _ syntaxHighlighter: Godot.SyntaxHighlighter?
    ) {
        syntaxHighlighter.withGodotUnsafeRawPointer { __ptr_syntaxHighlighter in
        withUnsafePointer(to: __ptr_syntaxHighlighter) { _ptr___ptr_syntaxHighlighter in
        withUnsafeArgumentPackPointer(_ptr___ptr_syntaxHighlighter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_syntax_highlighter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2721131626)!
        }
        }
    }()

    private func __getSyntaxHighlighter() -> Godot.SyntaxHighlighter? {
        Godot.SyntaxHighlighter?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_syntax_highlighter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_highlight_current_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_highlight_current_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setHighlightCurrentLine(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_highlight_current_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_highlight_current_line_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_highlight_current_line_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isHighlightCurrentLineEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_highlight_current_line_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_highlight_all_occurrences: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_highlight_all_occurrences").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setHighlightAllOccurrences(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_highlight_all_occurrences,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_highlight_all_occurrences_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_highlight_all_occurrences_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isHighlightAllOccurrencesEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_highlight_all_occurrences_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_draw_control_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_draw_control_chars").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getDrawControlChars() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_draw_control_chars,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_draw_control_chars: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_control_chars").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawControlChars(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_control_chars,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_set_draw_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_tabs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawTabs(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_tabs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_drawing_tabs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_tabs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingTabs() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drawing_tabs,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_draw_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_spaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawSpaces(
        enabled: Bool
    ) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_spaces,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_drawing_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_spaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingSpaces() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_drawing_spaces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_menu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_menu").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 229722558)!
        }
        }
    }()

    public func menu() -> Godot.PopupMenu? {
        Godot.PopupMenu?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_menu,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_menu_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_menu_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func isMenuVisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_menu_visible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_menu_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "menu_option").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func menuOption(
        _ option: Int32
    ) {
        option.withGodotUnsafeRawPointer { __ptr_option in
        withUnsafeArgumentPackPointer(__ptr_option) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_menu_option,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var text: Godot.GodotString {
        get {
            __getText()
        }
        set {
            __setText(
                newValue
            )
        }
    }

    public var placeholder: Godot.GodotString {
        get {
            __getPlaceholder()
        }
        set {
            __setPlaceholder(
                text: newValue
            )
        }
    }

    public var isEditable: Bool {
        get {
            __isEditable()
        }
        set {
            __setEditable(
                enabled: newValue
            )
        }
    }

    public var isContextMenuEnabled: Bool {
        get {
            __isContextMenuEnabled()
        }
        set {
            __setContextMenuEnabled(
                newValue
            )
        }
    }

    public var isShortcutKeysEnabled: Bool {
        get {
            __isShortcutKeysEnabled()
        }
        set {
            __setShortcutKeysEnabled(
                newValue
            )
        }
    }

    public var isSelectingEnabled: Bool {
        get {
            __isSelectingEnabled()
        }
        set {
            __setSelectingEnabled(
                enable: newValue
            )
        }
    }

    public var isDeselectOnFocusLossEnabled: Bool {
        get {
            __isDeselectOnFocusLossEnabled()
        }
        set {
            __setDeselectOnFocusLossEnabled(
                enable: newValue
            )
        }
    }

    public var isDragAndDropSelectionEnabled: Bool {
        get {
            __isDragAndDropSelectionEnabled()
        }
        set {
            __setDragAndDropSelectionEnabled(
                enable: newValue
            )
        }
    }

    public var isVirtualKeyboardEnabled: Bool {
        get {
            __isVirtualKeyboardEnabled()
        }
        set {
            __setVirtualKeyboardEnabled(
                newValue
            )
        }
    }

    public var isMiddleMousePasteEnabled: Bool {
        get {
            __isMiddleMousePasteEnabled()
        }
        set {
            __setMiddleMousePasteEnabled(
                newValue
            )
        }
    }

    public var lineWrappingMode: Godot.TextEdit.LineWrappingMode {
        get {
            __getLineWrappingMode()
        }
        set {
            __setLineWrappingMode(
                newValue
            )
        }
    }

    public var autowrapMode: Godot.TextServer.AutowrapMode {
        get {
            __getAutowrapMode()
        }
        set {
            __setAutowrapMode(
                newValue
            )
        }
    }

    public var isSmoothScrollEnabled: Bool {
        get {
            __isSmoothScrollEnabled()
        }
        set {
            __setSmoothScrollEnabled(
                enable: newValue
            )
        }
    }

    public var vScrollSpeed: Double {
        get {
            __getVScrollSpeed()
        }
        set {
            __setVScrollSpeed(
                newValue
            )
        }
    }

    public var isScrollPastEndOfFileEnabled: Bool {
        get {
            __isScrollPastEndOfFileEnabled()
        }
        set {
            __setScrollPastEndOfFileEnabled(
                enable: newValue
            )
        }
    }

    public var vScroll: Double {
        get {
            __getVScroll()
        }
        set {
            __setVScroll(
                value: newValue
            )
        }
    }

    public var hScroll: Int32 {
        get {
            __getHScroll()
        }
        set {
            __setHScroll(
                value: newValue
            )
        }
    }

    public var isFitContentHeightEnabled: Bool {
        get {
            __isFitContentHeightEnabled()
        }
        set {
            __setFitContentHeightEnabled(
                newValue
            )
        }
    }

    public var isDrawingMinimap: Bool {
        get {
            __isDrawingMinimap()
        }
        set {
            __setDrawMinimap(
                enabled: newValue
            )
        }
    }

    public var minimapWidth: Int32 {
        get {
            __getMinimapWidth()
        }
        set {
            __setMinimapWidth(
                newValue
            )
        }
    }

    public var caretType: Godot.TextEdit.CaretType {
        get {
            __getCaretType()
        }
        set {
            __setCaretType(
                newValue
            )
        }
    }

    public var isCaretBlinkEnabled: Bool {
        get {
            __isCaretBlinkEnabled()
        }
        set {
            __setCaretBlinkEnabled(
                enable: newValue
            )
        }
    }

    public var caretBlinkInterval: Double {
        get {
            __getCaretBlinkInterval()
        }
        set {
            __setCaretBlinkInterval(
                newValue
            )
        }
    }

    public var isDrawingCaretWhenEditableDisabled: Bool {
        get {
            __isDrawingCaretWhenEditableDisabled()
        }
        set {
            __setDrawCaretWhenEditableDisabled(
                enable: newValue
            )
        }
    }

    public var isMoveCaretOnRightClickEnabled: Bool {
        get {
            __isMoveCaretOnRightClickEnabled()
        }
        set {
            __setMoveCaretOnRightClickEnabled(
                enable: newValue
            )
        }
    }

    public var isCaretMidGraphemeEnabled: Bool {
        get {
            __isCaretMidGraphemeEnabled()
        }
        set {
            __setCaretMidGraphemeEnabled(
                newValue
            )
        }
    }

    public var isMultipleCaretsEnabled: Bool {
        get {
            __isMultipleCaretsEnabled()
        }
        set {
            __setMultipleCaretsEnabled(
                newValue
            )
        }
    }

    public var syntaxHighlighter: Godot.SyntaxHighlighter? {
        get {
            __getSyntaxHighlighter()
        }
        set {
            __setSyntaxHighlighter(
                newValue
            )
        }
    }

    public var isHighlightAllOccurrencesEnabled: Bool {
        get {
            __isHighlightAllOccurrencesEnabled()
        }
        set {
            __setHighlightAllOccurrences(
                enabled: newValue
            )
        }
    }

    public var isHighlightCurrentLineEnabled: Bool {
        get {
            __isHighlightCurrentLineEnabled()
        }
        set {
            __setHighlightCurrentLine(
                enabled: newValue
            )
        }
    }

    public var drawControlChars: Bool {
        get {
            __getDrawControlChars()
        }
        set {
            __setDrawControlChars(
                enabled: newValue
            )
        }
    }

    public var isDrawingTabs: Bool {
        get {
            __isDrawingTabs()
        }
        set {
            __setDrawTabs(
                enabled: newValue
            )
        }
    }

    public var isDrawingSpaces: Bool {
        get {
            __isDrawingSpaces()
        }
        set {
            __setDrawSpaces(
                enabled: newValue
            )
        }
    }

    public var textDirection: Godot.Control.TextDirection {
        get {
            __getTextDirection()
        }
        set {
            __setTextDirection(
                newValue
            )
        }
    }

    public var language: Godot.GodotString {
        get {
            __getLanguage()
        }
        set {
            __setLanguage(
                newValue
            )
        }
    }

    public var structuredTextBidiOverride: Godot.TextServer.StructuredTextParser {
        get {
            __getStructuredTextBidiOverride()
        }
        set {
            __setStructuredTextBidiOverride(
                parser: newValue
            )
        }
    }

    public var structuredTextBidiOverrideOptions: Godot.AnyGodotArray {
        get {
            __getStructuredTextBidiOverrideOptions()
        }
        set {
            __setStructuredTextBidiOverrideOptions(
                args: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _handle_unicode_input_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._handleUnicodeInput(
            unicodeChar: Int32.fromGodotUnsafePointer(args[0]!),
            caretIndex: Int32.fromGodotUnsafePointer(args[1]!)
        )}
        let _backspace_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._backspace(
            caretIndex: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _cut_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._cut(
            caretIndex: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _copy_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._copy(
            caretIndex: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _paste_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._paste(
            caretIndex: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _paste_primary_clipboard_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._pastePrimaryClipboard(
            caretIndex: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_handleUnicodeInput" : ("_handle_unicode_input", _handle_unicode_input_call),
            "_backspace" : ("_backspace", _backspace_call),
            "_cut" : ("_cut", _cut_call),
            "_copy" : ("_copy", _copy_call),
            "_paste" : ("_paste", _paste_call),
            "_pastePrimaryClipboard" : ("_paste_primary_clipboard", _paste_primary_clipboard_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}