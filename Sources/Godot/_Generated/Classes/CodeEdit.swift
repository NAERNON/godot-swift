//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class CodeEdit: TextEdit {
    public enum CodeCompletionKind: UInt32, GodotEnum {
        case `class` = 0
        case function = 1
        case signal = 2
        case variable = 3
        case member = 4
        case `enum` = 5
        case constant = 6
        case nodePath = 7
        case filePath = 8
        case plainText = 9
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Class", 0),
            ("Function", 1),
            ("Signal", 2),
            ("Variable", 3),
            ("Member", 4),
            ("Enum", 5),
            ("Constant", 6),
            ("Node Path", 7),
            ("File Path", 8),
            ("Plain Text", 9),]
        }
    }
    public enum CodeCompletionLocation: UInt32, GodotEnum {
        case local = 0
        case parentMask = 256
        case otherUserCode = 512
        case other = 1024
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Local", 0),
            ("Parent Mask", 256),
            ("Other User Code", 512),
            ("Other", 1024),]
        }
    }

    @Emitter(signal: "breakpoint_toggled", args: ("line", Int))
    public struct BreakpointToggled {
    }

    @Emitter(signal: "code_completion_requested")
    public struct CodeCompletionRequested {
    }

    @Emitter(signal: "symbol_lookup", args: ("symbol", Godot.GodotString), ("line", Int), ("column", Int))
    public struct SymbolLookup {
    }

    @Emitter(signal: "symbol_validate", args: ("symbol", Godot.GodotString))
    public struct SymbolValidate {
    }

    open func _confirmCodeCompletion(replace: Bool) {
    }

    open func _requestCodeCompletion(force: Bool) {
    }

    open func _filterCodeCompletionCandidates(_ candidates: Godot.GodotArray<Godot.AnyGodotDictionary>) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    private static var __method_binding_set_indent_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_indent_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setIndentSize(_ size: Int32) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_indent_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_indent_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_indent_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getIndentSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_indent_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_indent_using_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_indent_using_spaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setIndentUsingSpaces(useSpaces: Bool) {
        useSpaces.withGodotUnsafeRawPointer { __ptr_useSpaces in
        withUnsafeArgumentPackPointer(__ptr_useSpaces) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_indent_using_spaces,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_indent_using_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_indent_using_spaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isIndentUsingSpaces() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_indent_using_spaces,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_auto_indent_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_indent_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAutoIndentEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_auto_indent_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_auto_indent_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_indent_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAutoIndentEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_auto_indent_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_indent_prefixes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setAutoIndentPrefixes(_ prefixes: Godot.GodotArray<Godot.GodotString>) {
        prefixes.withGodotUnsafeRawPointer { __ptr_prefixes in
        withUnsafeArgumentPackPointer(__ptr_prefixes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_auto_indent_prefixes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_indent_prefixes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getAutoIndentPrefixes() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_auto_indent_prefixes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_do_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "do_indent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func doIndent() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_do_indent,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_indent_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "indent_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func indentLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_indent_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_unindent_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unindent_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func unindentLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_unindent_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_convert_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convert_indent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 423910286)!
        }
        }
    }()
    public func convertIndent(fromLine: Int32 = -1, toLine: Int32 = -1) {
        fromLine.withGodotUnsafeRawPointer { __ptr_fromLine in
        toLine.withGodotUnsafeRawPointer { __ptr_toLine in
        withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_toLine) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_convert_indent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_brace_completion_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAutoBraceCompletionEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_auto_brace_completion_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_brace_completion_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAutoBraceCompletionEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_auto_brace_completion_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_highlight_matching_braces_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHighlightMatchingBracesEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_highlight_matching_braces_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_highlight_matching_braces_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHighlightMatchingBracesEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_highlight_matching_braces_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_auto_brace_completion_pair: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_auto_brace_completion_pair").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func addAutoBraceCompletionPair(startKey: Godot.GodotString, endKey: Godot.GodotString) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        endKey.withGodotUnsafeRawPointer { __ptr_endKey in
        withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_auto_brace_completion_pair,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_brace_completion_pairs").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setAutoBraceCompletionPairs<Value1: VariantStorable, Value2: VariantStorable>(_ pairs: Godot.GodotDictionary<Value1, Value2>) {
        pairs.withGodotUnsafeRawPointer { __ptr_pairs in
        withUnsafeArgumentPackPointer(__ptr_pairs) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_auto_brace_completion_pairs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_brace_completion_pairs").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    private func __getAutoBraceCompletionPairs() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_auto_brace_completion_pairs,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_auto_brace_completion_open_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_auto_brace_completion_open_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasAutoBraceCompletionOpenKey(_ openKey: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        openKey.withGodotUnsafeRawPointer { __ptr_openKey in
        withUnsafeArgumentPackPointer(__ptr_openKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_auto_brace_completion_open_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_has_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_auto_brace_completion_close_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasAutoBraceCompletionCloseKey(_ closeKey: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        closeKey.withGodotUnsafeRawPointer { __ptr_closeKey in
        withUnsafeArgumentPackPointer(__ptr_closeKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_auto_brace_completion_close_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_brace_completion_close_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()
    public func autoBraceCompletionCloseKey(openKey: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        openKey.withGodotUnsafeRawPointer { __ptr_openKey in
        withUnsafeArgumentPackPointer(__ptr_openKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_auto_brace_completion_close_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_draw_breakpoints_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_breakpoints_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawBreakpointsGutter(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draw_breakpoints_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_drawing_breakpoints_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_breakpoints_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawingBreakpointsGutter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_drawing_breakpoints_gutter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_bookmarks_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_bookmarks_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawBookmarksGutter(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draw_bookmarks_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_drawing_bookmarks_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_bookmarks_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawingBookmarksGutter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_drawing_bookmarks_gutter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_executing_lines_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_executing_lines_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawExecutingLinesGutter(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draw_executing_lines_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_drawing_executing_lines_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_executing_lines_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawingExecutingLinesGutter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_drawing_executing_lines_gutter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_as_breakpoint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_breakpoint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setLineAsBreakpoint(line: Int32, breakpointed: Bool) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        breakpointed.withGodotUnsafeRawPointer { __ptr_breakpointed in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_breakpointed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_as_breakpoint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_line_breakpointed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_breakpointed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLineBreakpointed(line: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_breakpointed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_clear_breakpointed_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_breakpointed_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearBreakpointedLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_breakpointed_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_breakpointed_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_breakpointed_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func breakpointedLines() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_breakpointed_lines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_as_bookmarked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_bookmarked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setLineAsBookmarked(line: Int32, bookmarked: Bool) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        bookmarked.withGodotUnsafeRawPointer { __ptr_bookmarked in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_bookmarked) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_as_bookmarked,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_line_bookmarked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_bookmarked").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLineBookmarked(line: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_bookmarked,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_clear_bookmarked_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_bookmarked_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearBookmarkedLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_bookmarked_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_bookmarked_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bookmarked_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func bookmarkedLines() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_bookmarked_lines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_as_executing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_executing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setLineAsExecuting(line: Int32, executing: Bool) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        executing.withGodotUnsafeRawPointer { __ptr_executing in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_executing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_as_executing,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_line_executing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_executing").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLineExecuting(line: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_executing,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_clear_executing_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_executing_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearExecutingLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_executing_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_executing_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_executing_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()
    public func executingLines() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_executing_lines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_line_numbers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_line_numbers").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawLineNumbers(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draw_line_numbers,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_draw_line_numbers_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_line_numbers_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawLineNumbersEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_draw_line_numbers_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_numbers_zero_padded").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setLineNumbersZeroPadded(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_numbers_zero_padded,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_numbers_zero_padded").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isLineNumbersZeroPadded() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_numbers_zero_padded,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_fold_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_fold_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawFoldGutter(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draw_fold_gutter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_drawing_fold_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_fold_gutter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawingFoldGutter() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_drawing_fold_gutter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_folding_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setLineFoldingEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_folding_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_line_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_folding_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isLineFoldingEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_folding_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_can_fold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_fold_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func canFoldLine(_ line: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_can_fold_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_fold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fold_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func foldLine(_ line: Int32) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fold_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_unfold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unfold_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func unfoldLine(_ line: Int32) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_unfold_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_fold_all_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fold_all_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func foldAllLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fold_all_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_unfold_all_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unfold_all_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func unfoldAllLines() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_unfold_all_lines,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_toggle_foldable_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "toggle_foldable_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func toggleFoldableLine(_ line: Int32) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_toggle_foldable_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_line_folded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_folded").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isLineFolded(line: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_line_folded,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_folded_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_folded_lines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func foldedLines() -> Godot.GodotArray<Int> {
        Godot.GodotArray<Int> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_folded_lines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_string_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3146098955)!
        }
        }
    }()
    public func addStringDelimiter(startKey: Godot.GodotString, endKey: Godot.GodotString, lineOnly: Bool = false) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        endKey.withGodotUnsafeRawPointer { __ptr_endKey in
        lineOnly.withGodotUnsafeRawPointer { __ptr_lineOnly in
        withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey, __ptr_lineOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_string_delimiter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_string_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeStringDelimiter(startKey: Godot.GodotString) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_string_delimiter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_string_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasStringDelimiter(startKey: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_string_delimiter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_string_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setStringDelimiters(_ stringDelimiters: Godot.GodotArray<Godot.GodotString>) {
        stringDelimiters.withGodotUnsafeRawPointer { __ptr_stringDelimiters in
        withUnsafeArgumentPackPointer(__ptr_stringDelimiters) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_string_delimiters,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_string_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearStringDelimiters() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_string_delimiters,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_string_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getStringDelimiters() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_string_delimiters,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_in_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_in_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3294126239)!
        }
        }
    }()
    public func isInString(line: Int32, column: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_in_string,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_add_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_comment_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3146098955)!
        }
        }
    }()
    public func addCommentDelimiter(startKey: Godot.GodotString, endKey: Godot.GodotString, lineOnly: Bool = false) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        endKey.withGodotUnsafeRawPointer { __ptr_endKey in
        lineOnly.withGodotUnsafeRawPointer { __ptr_lineOnly in
        withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey, __ptr_lineOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_comment_delimiter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_comment_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeCommentDelimiter(startKey: Godot.GodotString) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_comment_delimiter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_comment_delimiter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasCommentDelimiter(startKey: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_comment_delimiter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_comment_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setCommentDelimiters(_ commentDelimiters: Godot.GodotArray<Godot.GodotString>) {
        commentDelimiters.withGodotUnsafeRawPointer { __ptr_commentDelimiters in
        withUnsafeArgumentPackPointer(__ptr_commentDelimiters) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_comment_delimiters,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_comment_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearCommentDelimiters() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_comment_delimiters,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_comment_delimiters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getCommentDelimiters() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_comment_delimiters,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_in_comment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_in_comment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3294126239)!
        }
        }
    }()
    public func isInComment(line: Int32, column: Int32 = -1) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_in_comment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_delimiter_start_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_start_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func delimiterStartKey(delimiterIndex: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        delimiterIndex.withGodotUnsafeRawPointer { __ptr_delimiterIndex in
        withUnsafeArgumentPackPointer(__ptr_delimiterIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_delimiter_start_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_delimiter_end_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_end_key").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func delimiterEndKey(delimiterIndex: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        delimiterIndex.withGodotUnsafeRawPointer { __ptr_delimiterIndex in
        withUnsafeArgumentPackPointer(__ptr_delimiterIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_delimiter_end_key,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_delimiter_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_start_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func delimiterStartPosition(line: Int32, column: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_delimiter_start_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_delimiter_end_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_end_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()
    public func delimiterEndPosition(line: Int32, column: Int32) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        line.withGodotUnsafeRawPointer { __ptr_line in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_delimiter_end_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_code_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func setCodeHint(_ codeHint: Godot.GodotString) {
        codeHint.withGodotUnsafeRawPointer { __ptr_codeHint in
        withUnsafeArgumentPackPointer(__ptr_codeHint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_code_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_code_hint_draw_below: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_hint_draw_below").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setCodeHintDrawBelow(_ drawBelow: Bool) {
        drawBelow.withGodotUnsafeRawPointer { __ptr_drawBelow in
        withUnsafeArgumentPackPointer(__ptr_drawBelow) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_code_hint_draw_below,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_text_for_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_for_code_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func textForCodeCompletion() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_text_for_code_completion,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_request_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_code_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()
    public func requestCodeCompletion(force: Bool = false) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_request_code_completion,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_code_completion_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_code_completion_option").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1629240608)!
        }
        }
    }()
    public func addCodeCompletionOption<Value: VariantStorableIn>(type: Godot.CodeEdit.CodeCompletionKind, displayText: Godot.GodotString, insertText: Godot.GodotString, textColor: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), icon: Godot.Resource? = nil, value: Value = 0, location: Int32 = 1024) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        displayText.withGodotUnsafeRawPointer { __ptr_displayText in
        insertText.withGodotUnsafeRawPointer { __ptr_insertText in
        textColor.withGodotUnsafeRawPointer { __ptr_textColor in
        icon.withGodotUnsafeRawPointer { __ptr_icon in
        withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        location.withGodotUnsafeRawPointer { __ptr_location in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_displayText, __ptr_insertText, __ptr_textColor, _ptr___ptr_icon, __ptr_value, __ptr_location) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_code_completion_option,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    private static var __method_binding_update_code_completion_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_code_completion_options").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func updateCodeCompletionOptions(force: Bool) {
        force.withGodotUnsafeRawPointer { __ptr_force in
        withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_update_code_completion_options,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_code_completion_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_options").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func codeCompletionOptions() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_code_completion_options,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_code_completion_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_option").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func codeCompletionOption(index: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_code_completion_option,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_code_completion_selected_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_selected_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func codeCompletionSelectedIndex() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_code_completion_selected_index,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_code_completion_selected_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_selected_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func setCodeCompletionSelectedIndex(_ index: Int32) {
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_code_completion_selected_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_confirm_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "confirm_code_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()
    public func confirmCodeCompletion(replace: Bool = false) {
        replace.withGodotUnsafeRawPointer { __ptr_replace in
        withUnsafeArgumentPackPointer(__ptr_replace) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_confirm_code_completion,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_cancel_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cancel_code_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func cancelCodeCompletion() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_cancel_code_completion,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_code_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCodeCompletionEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_code_completion_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_code_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_code_completion_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isCodeCompletionEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_code_completion_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_code_completion_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_prefixes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setCodeCompletionPrefixes(_ prefixes: Godot.GodotArray<Godot.GodotString>) {
        prefixes.withGodotUnsafeRawPointer { __ptr_prefixes in
        withUnsafeArgumentPackPointer(__ptr_prefixes) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_code_completion_prefixes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_code_completion_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_prefixes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getCodeCompletionPrefixes() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_code_completion_prefixes,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_length_guidelines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_length_guidelines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setLineLengthGuidelines(guidelineColumns: Godot.GodotArray<Int>) {
        guidelineColumns.withGodotUnsafeRawPointer { __ptr_guidelineColumns in
        withUnsafeArgumentPackPointer(__ptr_guidelineColumns) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_line_length_guidelines,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_line_length_guidelines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_length_guidelines").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getLineLengthGuidelines() -> Godot.GodotArray<Int> {
        Godot.GodotArray<Int> .fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_line_length_guidelines,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symbol_lookup_on_click_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSymbolLookupOnClickEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_symbol_lookup_on_click_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_symbol_lookup_on_click_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSymbolLookupOnClickEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_symbol_lookup_on_click_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_text_for_symbol_lookup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_for_symbol_lookup").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    public func textForSymbolLookup() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_text_for_symbol_lookup,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_symbol_lookup_word_as_valid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symbol_lookup_word_as_valid").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setSymbolLookupWordAsValid(_ valid: Bool) {
        valid.withGodotUnsafeRawPointer { __ptr_valid in
        withUnsafeArgumentPackPointer(__ptr_valid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_symbol_lookup_word_as_valid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var isSymbolLookupOnClickEnabled: Bool {
        get {
            __isSymbolLookupOnClickEnabled()
        }
        set {
            __setSymbolLookupOnClickEnabled(
                enable: newValue
            )
        }
    }

    public var isLineFoldingEnabled: Bool {
        get {
            __isLineFoldingEnabled()
        }
        set {
            __setLineFoldingEnabled(
                newValue
            )
        }
    }

    public var lineLengthGuidelines: Godot.GodotArray<Int> {
        get {
            __getLineLengthGuidelines()
        }
        set {
            __setLineLengthGuidelines(
                guidelineColumns: newValue
            )
        }
    }

    public var isDrawingBreakpointsGutter: Bool {
        get {
            __isDrawingBreakpointsGutter()
        }
        set {
            __setDrawBreakpointsGutter(
                enable: newValue
            )
        }
    }

    public var isDrawingBookmarksGutter: Bool {
        get {
            __isDrawingBookmarksGutter()
        }
        set {
            __setDrawBookmarksGutter(
                enable: newValue
            )
        }
    }

    public var isDrawingExecutingLinesGutter: Bool {
        get {
            __isDrawingExecutingLinesGutter()
        }
        set {
            __setDrawExecutingLinesGutter(
                enable: newValue
            )
        }
    }

    public var isDrawLineNumbersEnabled: Bool {
        get {
            __isDrawLineNumbersEnabled()
        }
        set {
            __setDrawLineNumbers(
                enable: newValue
            )
        }
    }

    public var isLineNumbersZeroPadded: Bool {
        get {
            __isLineNumbersZeroPadded()
        }
        set {
            __setLineNumbersZeroPadded(
                enable: newValue
            )
        }
    }

    public var isDrawingFoldGutter: Bool {
        get {
            __isDrawingFoldGutter()
        }
        set {
            __setDrawFoldGutter(
                enable: newValue
            )
        }
    }

    public var stringDelimiters: Godot.GodotArray<Godot.GodotString> {
        get {
            __getStringDelimiters()
        }
        set {
            __setStringDelimiters(
                newValue
            )
        }
    }

    public var commentDelimiters: Godot.GodotArray<Godot.GodotString> {
        get {
            __getCommentDelimiters()
        }
        set {
            __setCommentDelimiters(
                newValue
            )
        }
    }

    public var isCodeCompletionEnabled: Bool {
        get {
            __isCodeCompletionEnabled()
        }
        set {
            __setCodeCompletionEnabled(
                enable: newValue
            )
        }
    }

    public var codeCompletionPrefixes: Godot.GodotArray<Godot.GodotString> {
        get {
            __getCodeCompletionPrefixes()
        }
        set {
            __setCodeCompletionPrefixes(
                newValue
            )
        }
    }

    public var indentSize: Int32 {
        get {
            __getIndentSize()
        }
        set {
            __setIndentSize(
                newValue
            )
        }
    }

    public var isIndentUsingSpaces: Bool {
        get {
            __isIndentUsingSpaces()
        }
        set {
            __setIndentUsingSpaces(
                useSpaces: newValue
            )
        }
    }

    public var isAutoIndentEnabled: Bool {
        get {
            __isAutoIndentEnabled()
        }
        set {
            __setAutoIndentEnabled(
                enable: newValue
            )
        }
    }

    public var autoIndentPrefixes: Godot.GodotArray<Godot.GodotString> {
        get {
            __getAutoIndentPrefixes()
        }
        set {
            __setAutoIndentPrefixes(
                newValue
            )
        }
    }

    public var isAutoBraceCompletionEnabled: Bool {
        get {
            __isAutoBraceCompletionEnabled()
        }
        set {
            __setAutoBraceCompletionEnabled(
                enable: newValue
            )
        }
    }

    public var isHighlightMatchingBracesEnabled: Bool {
        get {
            __isHighlightMatchingBracesEnabled()
        }
        set {
            __setHighlightMatchingBracesEnabled(
                enable: newValue
            )
        }
    }

    public var autoBraceCompletionPairs: Godot.AnyGodotDictionary {
        get {
            __getAutoBraceCompletionPairs()
        }
        set {
            __setAutoBraceCompletionPairs(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _confirm_code_completion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CodeEdit> .fromOpaque(instancePtr).takeUnretainedValue()
        ._confirmCodeCompletion(
            replace: Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _request_code_completion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CodeEdit> .fromOpaque(instancePtr).takeUnretainedValue()
        ._requestCodeCompletion(
            force: Bool.fromGodotUnsafePointer(args[0]!)
        )}
        let _filter_code_completion_candidates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CodeEdit> .fromOpaque(instancePtr).takeUnretainedValue()
        ._filterCodeCompletionCandidates(
            Godot.GodotArray<Godot.AnyGodotDictionary> .fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_confirmCodeCompletion" : ("_confirm_code_completion", _confirm_code_completion_call),
            "_requestCodeCompletion" : ("_request_code_completion", _request_code_completion_call),
            "_filterCodeCompletionCandidates" : ("_filter_code_completion_candidates", _filter_code_completion_candidates_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }