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

    public struct BreakpointToggledSignalInput: Godot.SignalInput {
        public let line: Int

        fileprivate init(
            line: Int
        ) {
            self.line = line
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.line)]
        }
    }

    public func breakpointToggled(
        line: Int
    ) {
        _ = breakpointToggledSignal.emit(.init(line: line))
    }

    public lazy var breakpointToggledSignal: Godot.SignalEmitter<BreakpointToggledSignalInput> = {
        .init(object: self, signalName: "breakpoint_toggled") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<BreakpointToggledSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(line: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<BreakpointToggledSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<BreakpointToggledSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func codeCompletionRequested() {
        _ = codeCompletionRequestedSignal.emit()
    }

    public lazy var codeCompletionRequestedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "code_completion_requested") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SymbolLookupSignalInput: Godot.SignalInput {
        public let symbol: Godot.GodotString

        public let line: Int

        public let column: Int

        fileprivate init(
            symbol: Godot.GodotString,
            line: Int,
            column: Int
        ) {
            self.symbol = symbol
            self.line = line
            self.column = column
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.symbol), Variant(input.line), Variant(input.column)]
        }
    }

    public func symbolLookup(
        symbol: Godot.GodotString,
        line: Int,
        column: Int
    ) {
        _ = symbolLookupSignal.emit(.init(symbol: symbol,
                line: line,
                column: column))
    }

    public lazy var symbolLookupSignal: Godot.SignalEmitter<SymbolLookupSignalInput> = {
        .init(object: self, signalName: "symbol_lookup") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SymbolLookupSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(symbol: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    line: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    column: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SymbolLookupSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SymbolLookupSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SymbolValidateSignalInput: Godot.SignalInput {
        public let symbol: Godot.GodotString

        fileprivate init(
            symbol: Godot.GodotString
        ) {
            self.symbol = symbol
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.symbol)]
        }
    }

    public func symbolValidate(
        symbol: Godot.GodotString
    ) {
        _ = symbolValidateSignal.emit(.init(symbol: symbol))
    }

    public lazy var symbolValidateSignal: Godot.SignalEmitter<SymbolValidateSignalInput> = {
        .init(object: self, signalName: "symbol_validate") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SymbolValidateSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(symbol: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SymbolValidateSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SymbolValidateSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _confirmCodeCompletion(
        replace: Bool
    ) {
    }

    open func _requestCodeCompletion(
        force: Bool
    ) {
    }

    open func _filterCodeCompletionCandidates(
        _ candidates: Godot.GodotArray<Godot.AnyGodotDictionary>
    ) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    internal static var __method_binding_set_indent_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_indent_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setIndentSize(
        _ size: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_indent_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_indent_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_indent_size").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getIndentSize() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_indent_size,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_indent_using_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_indent_using_spaces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setIndentUsingSpaces(
        useSpaces: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: useSpaces) { __ptr_useSpaces in
            withUnsafeArgumentPackPointer(__ptr_useSpaces) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_indent_using_spaces,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_indent_using_spaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_indent_using_spaces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isIndentUsingSpaces() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_indent_using_spaces,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_auto_indent_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_indent_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAutoIndentEnabled(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_indent_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_auto_indent_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_indent_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAutoIndentEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_auto_indent_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_indent_prefixes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setAutoIndentPrefixes(
        _ prefixes: Godot.GodotArray<Godot.GodotString>
    ) {
        withTransferrableUnsafeRawPointer(to: prefixes) { __ptr_prefixes in
            withUnsafeArgumentPackPointer(__ptr_prefixes) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_indent_prefixes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_indent_prefixes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getAutoIndentPrefixes() -> Godot.GodotArray<Godot.GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_auto_indent_prefixes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_do_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "do_indent").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func doIndent() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_do_indent,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_indent_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "indent_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func indentLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_indent_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_unindent_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unindent_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func unindentLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_unindent_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_convert_indent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convert_indent").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 423910286)!
        }
        }
    }()

    public func convertIndent(
        fromLine: Int32 = -1,
        toLine: Int32 = -1
    ) {
        withTransferrableUnsafeRawPointer(to: fromLine) { __ptr_fromLine in
            withTransferrableUnsafeRawPointer(to: toLine) { __ptr_toLine in
                withUnsafeArgumentPackPointer(__ptr_fromLine, __ptr_toLine) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_convert_indent,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_brace_completion_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setAutoBraceCompletionEnabled(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_brace_completion_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_auto_brace_completion_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isAutoBraceCompletionEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_auto_brace_completion_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_highlight_matching_braces_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setHighlightMatchingBracesEnabled(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_highlight_matching_braces_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_highlight_matching_braces_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isHighlightMatchingBracesEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_highlight_matching_braces_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_add_auto_brace_completion_pair: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_auto_brace_completion_pair").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()

    public func addAutoBraceCompletionPair(
        startKey: Godot.GodotString,
        endKey: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
            withTransferrableUnsafeRawPointer(to: endKey) { __ptr_endKey in
                withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_auto_brace_completion_pair,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_auto_brace_completion_pairs").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()

    private func __setAutoBraceCompletionPairs<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ pairs: Godot.GodotDictionary<Value1, Value2>
    ) {
        withTransferrableUnsafeRawPointer(to: pairs) { __ptr_pairs in
            withUnsafeArgumentPackPointer(__ptr_pairs) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_auto_brace_completion_pairs,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_brace_completion_pairs").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()

    private func __getAutoBraceCompletionPairs() -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_auto_brace_completion_pairs,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_has_auto_brace_completion_open_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_auto_brace_completion_open_key").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func hasAutoBraceCompletionOpenKey(
        _ openKey: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: openKey) { __ptr_openKey in
                withUnsafeArgumentPackPointer(__ptr_openKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_auto_brace_completion_open_key,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_has_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_auto_brace_completion_close_key").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func hasAutoBraceCompletionCloseKey(
        _ closeKey: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: closeKey) { __ptr_closeKey in
                withUnsafeArgumentPackPointer(__ptr_closeKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_auto_brace_completion_close_key,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_auto_brace_completion_close_key").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3135753539)!
        }
        }
    }()

    public func autoBraceCompletionCloseKey(
        openKey: Godot.GodotString
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: openKey) { __ptr_openKey in
                withUnsafeArgumentPackPointer(__ptr_openKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_auto_brace_completion_close_key,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_draw_breakpoints_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_breakpoints_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawBreakpointsGutter(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_breakpoints_gutter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_drawing_breakpoints_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_breakpoints_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingBreakpointsGutter() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_drawing_breakpoints_gutter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_bookmarks_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_bookmarks_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawBookmarksGutter(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_bookmarks_gutter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_drawing_bookmarks_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_bookmarks_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingBookmarksGutter() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_drawing_bookmarks_gutter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_executing_lines_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_executing_lines_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawExecutingLinesGutter(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_executing_lines_gutter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_drawing_executing_lines_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_executing_lines_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingExecutingLinesGutter() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_drawing_executing_lines_gutter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_as_breakpoint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_breakpoint").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLineAsBreakpoint(
        line: Int32,
        breakpointed: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withTransferrableUnsafeRawPointer(to: breakpointed) { __ptr_breakpointed in
                withUnsafeArgumentPackPointer(__ptr_line, __ptr_breakpointed) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_line_as_breakpoint,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_line_breakpointed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_breakpointed").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineBreakpointed(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_breakpointed,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_breakpointed_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_breakpointed_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearBreakpointedLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_breakpointed_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_breakpointed_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_breakpointed_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()

    public func breakpointedLines() -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_breakpointed_lines,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_as_bookmarked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_bookmarked").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLineAsBookmarked(
        line: Int32,
        bookmarked: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withTransferrableUnsafeRawPointer(to: bookmarked) { __ptr_bookmarked in
                withUnsafeArgumentPackPointer(__ptr_line, __ptr_bookmarked) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_line_as_bookmarked,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_line_bookmarked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_bookmarked").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineBookmarked(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_bookmarked,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_bookmarked_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_bookmarked_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearBookmarkedLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_bookmarked_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_bookmarked_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bookmarked_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()

    public func bookmarkedLines() -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_bookmarked_lines,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_as_executing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_as_executing").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setLineAsExecuting(
        line: Int32,
        executing: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withTransferrableUnsafeRawPointer(to: executing) { __ptr_executing in
                withUnsafeArgumentPackPointer(__ptr_line, __ptr_executing) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_line_as_executing,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_line_executing: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_executing").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineExecuting(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_executing,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_clear_executing_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_executing_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearExecutingLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_executing_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_executing_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_executing_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1930428628)!
        }
        }
    }()

    public func executingLines() -> Godot.PackedInt32Array {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_executing_lines,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_line_numbers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_line_numbers").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawLineNumbers(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_line_numbers,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_draw_line_numbers_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_line_numbers_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawLineNumbersEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_draw_line_numbers_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_numbers_zero_padded").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setLineNumbersZeroPadded(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_line_numbers_zero_padded,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_numbers_zero_padded").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isLineNumbersZeroPadded() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_line_numbers_zero_padded,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_draw_fold_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_fold_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setDrawFoldGutter(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_draw_fold_gutter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_drawing_fold_gutter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_drawing_fold_gutter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isDrawingFoldGutter() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_drawing_fold_gutter,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_folding_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setLineFoldingEnabled(
        _ enabled: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enabled) { __ptr_enabled in
            withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_line_folding_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_line_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_folding_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isLineFoldingEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_line_folding_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_can_fold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "can_fold_line").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func canFoldLine(
        _ line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_can_fold_line,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_fold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fold_line").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func foldLine(
        _ line: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_fold_line,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_unfold_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unfold_line").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func unfoldLine(
        _ line: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_unfold_line,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_fold_all_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fold_all_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func foldAllLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_fold_all_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_unfold_all_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unfold_all_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func unfoldAllLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_unfold_all_lines,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_toggle_foldable_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "toggle_foldable_line").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func toggleFoldableLine(
        _ line: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
            withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_toggle_foldable_line,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_line_folded: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_folded").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineFolded(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_folded,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_folded_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_folded_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func foldedLines() -> Godot.GodotArray<Int> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_folded_lines,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_create_code_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_code_region").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func createCodeRegion() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_create_code_region,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_code_region_start_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_region_start_tag").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func codeRegionStartTag() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_code_region_start_tag,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_code_region_end_tag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_region_end_tag").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func codeRegionEndTag() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_code_region_end_tag,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_code_region_tags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_region_tags").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 708800718)!
        }
        }
    }()

    public func setCodeRegionTags(
        start: Godot.GodotString = "region",
        end: Godot.GodotString = "endregion"
    ) {
        withTransferrableUnsafeRawPointer(to: start) { __ptr_start in
            withTransferrableUnsafeRawPointer(to: end) { __ptr_end in
                withUnsafeArgumentPackPointer(__ptr_start, __ptr_end) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_code_region_tags,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_line_code_region_start: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_code_region_start").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineCodeRegionStart(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_code_region_start,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_is_line_code_region_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_line_code_region_end").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isLineCodeRegionEnd(
        line: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_line_code_region_end,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_add_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_string_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3146098955)!
        }
        }
    }()

    public func addStringDelimiter(
        startKey: Godot.GodotString,
        endKey: Godot.GodotString,
        lineOnly: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
            withTransferrableUnsafeRawPointer(to: endKey) { __ptr_endKey in
                withTransferrableUnsafeRawPointer(to: lineOnly) { __ptr_lineOnly in
                    withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey, __ptr_lineOnly) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_string_delimiter,
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

    internal static var __method_binding_remove_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_string_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func removeStringDelimiter(
        startKey: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
            withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_string_delimiter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_has_string_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_string_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func hasStringDelimiter(
        startKey: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
                withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_string_delimiter,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_string_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setStringDelimiters(
        _ stringDelimiters: Godot.GodotArray<Godot.GodotString>
    ) {
        withTransferrableUnsafeRawPointer(to: stringDelimiters) { __ptr_stringDelimiters in
            withUnsafeArgumentPackPointer(__ptr_stringDelimiters) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_string_delimiters,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_clear_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_string_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearStringDelimiters() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_string_delimiters,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_string_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_string_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getStringDelimiters() -> Godot.GodotArray<Godot.GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_string_delimiters,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_in_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_in_string").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 688195400)!
        }
        }
    }()

    public func isInString(
        line: Int32,
        column: Int32 = -1
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_is_in_string,
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

    internal static var __method_binding_add_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_comment_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3146098955)!
        }
        }
    }()

    public func addCommentDelimiter(
        startKey: Godot.GodotString,
        endKey: Godot.GodotString,
        lineOnly: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
            withTransferrableUnsafeRawPointer(to: endKey) { __ptr_endKey in
                withTransferrableUnsafeRawPointer(to: lineOnly) { __ptr_lineOnly in
                    withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey, __ptr_lineOnly) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_add_comment_delimiter,
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

    internal static var __method_binding_remove_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_comment_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func removeCommentDelimiter(
        startKey: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
            withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_remove_comment_delimiter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_has_comment_delimiter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_comment_delimiter").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()

    public func hasCommentDelimiter(
        startKey: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: startKey) { __ptr_startKey in
                withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_has_comment_delimiter,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_comment_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setCommentDelimiters(
        _ commentDelimiters: Godot.GodotArray<Godot.GodotString>
    ) {
        withTransferrableUnsafeRawPointer(to: commentDelimiters) { __ptr_commentDelimiters in
            withUnsafeArgumentPackPointer(__ptr_commentDelimiters) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_comment_delimiters,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_clear_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_comment_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearCommentDelimiters() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_comment_delimiters,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_get_comment_delimiters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_comment_delimiters").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getCommentDelimiters() -> Godot.GodotArray<Godot.GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_comment_delimiters,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_is_in_comment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_in_comment").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 688195400)!
        }
        }
    }()

    public func isInComment(
        line: Int32,
        column: Int32 = -1
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_is_in_comment,
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

    internal static var __method_binding_get_delimiter_start_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_start_key").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func delimiterStartKey(
        delimiterIndex: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiterIndex) { __ptr_delimiterIndex in
                withUnsafeArgumentPackPointer(__ptr_delimiterIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_delimiter_start_key,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_delimiter_end_key: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_end_key").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()

    public func delimiterEndKey(
        delimiterIndex: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiterIndex) { __ptr_delimiterIndex in
                withUnsafeArgumentPackPointer(__ptr_delimiterIndex) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_delimiter_end_key,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_delimiter_start_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_start_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func delimiterStartPosition(
        line: Int32,
        column: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_delimiter_start_position,
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

    internal static var __method_binding_get_delimiter_end_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_delimiter_end_position").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3016396712)!
        }
        }
    }()

    public func delimiterEndPosition(
        line: Int32,
        column: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_delimiter_end_position,
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

    internal static var __method_binding_set_code_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_hint").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    public func setCodeHint(
        _ codeHint: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: codeHint) { __ptr_codeHint in
            withUnsafeArgumentPackPointer(__ptr_codeHint) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_code_hint,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_code_hint_draw_below: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_hint_draw_below").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func setCodeHintDrawBelow(
        _ drawBelow: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: drawBelow) { __ptr_drawBelow in
            withUnsafeArgumentPackPointer(__ptr_drawBelow) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_code_hint_draw_below,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_text_for_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_for_code_completion").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func textForCodeCompletion() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_text_for_code_completion,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_request_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_code_completion").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()

    public func requestCodeCompletion(
        force: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_request_code_completion,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_add_code_completion_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_code_completion_option").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 947964390)!
        }
        }
    }()

    public func addCodeCompletionOption<Value: Variant.Storable>(
        type: Godot.CodeEdit.CodeCompletionKind,
        displayText: Godot.GodotString,
        insertText: Godot.GodotString,
        textColor: Godot.Color = .white,
        icon: Godot.Resource? = nil,
        value: Value = 0,
        location: Int32 = 1024
    ) {
        withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
            withTransferrableUnsafeRawPointer(to: displayText) { __ptr_displayText in
                withTransferrableUnsafeRawPointer(to: insertText) { __ptr_insertText in
                    withTransferrableUnsafeRawPointer(to: textColor) { __ptr_textColor in
                        withTransferrableUnsafeRawPointer(to: icon) { __ptr_icon in
                            withUnsafePointer(to: __ptr_icon) { _ptr___ptr_icon in
                                Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                                    withTransferrableUnsafeRawPointer(to: location) { __ptr_location in
                                        withUnsafeArgumentPackPointer(__ptr_type, __ptr_displayText, __ptr_insertText, __ptr_textColor, _ptr___ptr_icon, __ptr_value, __ptr_location) { __accessPtr in
                                            self.withUnsafeMutableRawPointer { __ptr_self in
                                                GodotExtension.Interface.objectMethodBindPtrcall(
                                                    Self.__method_binding_add_code_completion_option,
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

    internal static var __method_binding_update_code_completion_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_code_completion_options").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func updateCodeCompletionOptions(
        force: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: force) { __ptr_force in
            withUnsafeArgumentPackPointer(__ptr_force) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_update_code_completion_options,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_code_completion_options: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_options").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func codeCompletionOptions() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_code_completion_options,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_code_completion_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_option").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()

    public func codeCompletionOption(
        index: Int32
    ) -> Godot.AnyGodotDictionary {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_code_completion_option,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_code_completion_selected_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_selected_index").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func codeCompletionSelectedIndex() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_code_completion_selected_index,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_code_completion_selected_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_selected_index").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func setCodeCompletionSelectedIndex(
        _ index: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_code_completion_selected_index,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_confirm_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "confirm_code_completion").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 107499316)!
        }
        }
    }()

    public func confirmCodeCompletion(
        replace: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: replace) { __ptr_replace in
            withUnsafeArgumentPackPointer(__ptr_replace) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_confirm_code_completion,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_cancel_code_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "cancel_code_completion").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func cancelCodeCompletion() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_cancel_code_completion,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_set_code_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setCodeCompletionEnabled(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_code_completion_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_code_completion_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_code_completion_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isCodeCompletionEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_code_completion_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_code_completion_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_code_completion_prefixes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setCodeCompletionPrefixes(
        _ prefixes: Godot.GodotArray<Godot.GodotString>
    ) {
        withTransferrableUnsafeRawPointer(to: prefixes) { __ptr_prefixes in
            withUnsafeArgumentPackPointer(__ptr_prefixes) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_code_completion_prefixes,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_code_completion_prefixes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_code_completion_prefixes").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getCodeCompletionPrefixes() -> Godot.GodotArray<Godot.GodotString> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_code_completion_prefixes,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_line_length_guidelines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_length_guidelines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setLineLengthGuidelines(
        guidelineColumns: Godot.GodotArray<Int>
    ) {
        withTransferrableUnsafeRawPointer(to: guidelineColumns) { __ptr_guidelineColumns in
            withUnsafeArgumentPackPointer(__ptr_guidelineColumns) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_line_length_guidelines,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_line_length_guidelines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_length_guidelines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getLineLengthGuidelines() -> Godot.GodotArray<Int> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_line_length_guidelines,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symbol_lookup_on_click_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setSymbolLookupOnClickEnabled(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_symbol_lookup_on_click_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_symbol_lookup_on_click_enabled").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isSymbolLookupOnClickEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_symbol_lookup_on_click_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_text_for_symbol_lookup: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_for_symbol_lookup").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    public func textForSymbolLookup() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_text_for_symbol_lookup,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_text_with_cursor_char: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_text_with_cursor_char").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1391810591)!
        }
        }
    }()

    public func textWithCursorChar(
        line: Int32,
        column: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: line) { __ptr_line in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(__ptr_line, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_text_with_cursor_char,
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

    internal static var __method_binding_set_symbol_lookup_word_as_valid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symbol_lookup_word_as_valid").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    public func setSymbolLookupWordAsValid(
        _ valid: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: valid) { __ptr_valid in
            withUnsafeArgumentPackPointer(__ptr_valid) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_symbol_lookup_word_as_valid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_duplicate_lines: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "duplicate_lines").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func duplicateLines() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_duplicate_lines,
                __ptr_self,
                nil,
                nil
            )
        }
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
            replace: Bool.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _request_code_completion_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CodeEdit> .fromOpaque(instancePtr).takeUnretainedValue()
        ._requestCodeCompletion(
            force: Bool.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _filter_code_completion_candidates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<CodeEdit> .fromOpaque(instancePtr).takeUnretainedValue()
        ._filterCodeCompletionCandidates(
            Godot.GodotArray<Godot.AnyGodotDictionary> .transferFromGodot(unsafePointer: args[0]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
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