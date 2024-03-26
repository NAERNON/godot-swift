//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class ScriptEditorBase: VBoxContainer {

    public func nameChanged() {
        _ = nameChangedSignal.emit()
    }

    public lazy var nameChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "name_changed") { callablePtr, args, _, _, _ in
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

    public func editedScriptChanged() {
        _ = editedScriptChangedSignal.emit()
    }

    public lazy var editedScriptChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "edited_script_changed") { callablePtr, args, _, _, _ in
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

    public struct RequestHelpSignalInput: Godot.SignalInput {
        public let topic: Godot.GodotString

        fileprivate init(
            topic: Godot.GodotString
        ) {
            self.topic = topic
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.topic)]
        }
    }

    public func requestHelp(
        topic: Godot.GodotString
    ) {
        _ = requestHelpSignal.emit(.init(topic: topic))
    }

    public lazy var requestHelpSignal: Godot.SignalEmitter<RequestHelpSignalInput> = {
        .init(object: self, signalName: "request_help") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<RequestHelpSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(topic: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<RequestHelpSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<RequestHelpSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct RequestOpenScriptAtLineSignalInput: Godot.SignalInput {
        public let script: Godot.Object?

        public let line: Int

        fileprivate init(
            script: Godot.Object?,
            line: Int
        ) {
            self.script = script
            self.line = line
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.script), Variant(input.line)]
        }
    }

    public func requestOpenScriptAtLine(
        script: Godot.Object?,
        line: Int
    ) {
        _ = requestOpenScriptAtLineSignal.emit(.init(script: script,
                line: line))
    }

    public lazy var requestOpenScriptAtLineSignal: Godot.SignalEmitter<RequestOpenScriptAtLineSignalInput> = {
        .init(object: self, signalName: "request_open_script_at_line") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<RequestOpenScriptAtLineSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(script: Godot.Object?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    line: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<RequestOpenScriptAtLineSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<RequestOpenScriptAtLineSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func requestSaveHistory() {
        _ = requestSaveHistorySignal.emit()
    }

    public lazy var requestSaveHistorySignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "request_save_history") { callablePtr, args, _, _, _ in
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

    public struct GoToHelpSignalInput: Godot.SignalInput {
        public let what: Godot.GodotString

        fileprivate init(
            what: Godot.GodotString
        ) {
            self.what = what
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.what)]
        }
    }

    public func goToHelp(
        what: Godot.GodotString
    ) {
        _ = goToHelpSignal.emit(.init(what: what))
    }

    public lazy var goToHelpSignal: Godot.SignalEmitter<GoToHelpSignalInput> = {
        .init(object: self, signalName: "go_to_help") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<GoToHelpSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(what: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<GoToHelpSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<GoToHelpSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SearchInFilesRequestedSignalInput: Godot.SignalInput {
        public let text: Godot.GodotString

        fileprivate init(
            text: Godot.GodotString
        ) {
            self.text = text
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.text)]
        }
    }

    public func searchInFilesRequested(
        text: Godot.GodotString
    ) {
        _ = searchInFilesRequestedSignal.emit(.init(text: text))
    }

    public lazy var searchInFilesRequestedSignal: Godot.SignalEmitter<SearchInFilesRequestedSignalInput> = {
        .init(object: self, signalName: "search_in_files_requested") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SearchInFilesRequestedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(text: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SearchInFilesRequestedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SearchInFilesRequestedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ReplaceInFilesRequestedSignalInput: Godot.SignalInput {
        public let text: Godot.GodotString

        fileprivate init(
            text: Godot.GodotString
        ) {
            self.text = text
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.text)]
        }
    }

    public func replaceInFilesRequested(
        text: Godot.GodotString
    ) {
        _ = replaceInFilesRequestedSignal.emit(.init(text: text))
    }

    public lazy var replaceInFilesRequestedSignal: Godot.SignalEmitter<ReplaceInFilesRequestedSignalInput> = {
        .init(object: self, signalName: "replace_in_files_requested") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ReplaceInFilesRequestedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(text: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ReplaceInFilesRequestedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ReplaceInFilesRequestedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct GoToMethodSignalInput: Godot.SignalInput {
        public let script: Godot.Object?

        public let method: Godot.GodotString

        fileprivate init(
            script: Godot.Object?,
            method: Godot.GodotString
        ) {
            self.script = script
            self.method = method
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.script), Variant(input.method)]
        }
    }

    public func goToMethod(
        script: Godot.Object?,
        method: Godot.GodotString
    ) {
        _ = goToMethodSignal.emit(.init(script: script,
                method: method))
    }

    public lazy var goToMethodSignal: Godot.SignalEmitter<GoToMethodSignalInput> = {
        .init(object: self, signalName: "go_to_method") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<GoToMethodSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(script: Godot.Object?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    method: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<GoToMethodSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<GoToMethodSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_base_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_base_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()

    public func baseEditor() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_base_editor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_add_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()

    public func addSyntaxHighlighter(
        _ highlighter: Godot.EditorSyntaxHighlighter?
    ) {
        highlighter.withGodotUnsafeRawPointer { __ptr_highlighter in
        withUnsafePointer(to: __ptr_highlighter) { _ptr___ptr_highlighter in
        withUnsafeArgumentPackPointer(_ptr___ptr_highlighter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_syntax_highlighter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
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