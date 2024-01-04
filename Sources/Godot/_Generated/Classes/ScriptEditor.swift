//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptEditor: PanelContainer {
    public struct EditorScriptChangedSignalInput: Godot.SignalInput {
        public let script: Godot.Script?
        fileprivate init(script: Godot.Script?) {
            self.script = script
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.script)]
        }
    }
    public func editorScriptChanged(script: Godot.Script?) {
        _ = editorScriptChangedSignal.emit(.init(script: script))
    }
    public lazy var editorScriptChangedSignal: Godot.SignalEmitter<EditorScriptChangedSignalInput> = {
        .init(object: self, signalName: "editor_script_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<EditorScriptChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(script: Godot.Script?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<EditorScriptChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<EditorScriptChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ScriptCloseSignalInput: Godot.SignalInput {
        public let script: Godot.Script?
        fileprivate init(script: Godot.Script?) {
            self.script = script
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.script)]
        }
    }
    public func scriptClose(script: Godot.Script?) {
        _ = scriptCloseSignal.emit(.init(script: script))
    }
    public lazy var scriptCloseSignal: Godot.SignalEmitter<ScriptCloseSignalInput> = {
        .init(object: self, signalName: "script_close") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ScriptCloseSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(script: Godot.Script?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ScriptCloseSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ScriptCloseSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_current_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1906266726)!
        }
        }
    }()
    public func currentEditor() -> Godot.ScriptEditorBase? {
        Godot.ScriptEditorBase?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_current_editor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_open_script_editors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_script_editors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func openScriptEditors() -> Godot.GodotArray<Godot.ScriptEditorBase?> {
        Godot.GodotArray<Godot.ScriptEditorBase?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_open_script_editors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_register_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func registerSyntaxHighlighter(_ syntaxHighlighter: Godot.EditorSyntaxHighlighter?) {
        syntaxHighlighter.withGodotUnsafeRawPointer { __ptr_syntaxHighlighter in
        withUnsafePointer(to: __ptr_syntaxHighlighter) { _ptr___ptr_syntaxHighlighter in
        withUnsafeArgumentPackPointer(_ptr___ptr_syntaxHighlighter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_syntax_highlighter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_unregister_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unregister_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func unregisterSyntaxHighlighter(_ syntaxHighlighter: Godot.EditorSyntaxHighlighter?) {
        syntaxHighlighter.withGodotUnsafeRawPointer { __ptr_syntaxHighlighter in
        withUnsafePointer(to: __ptr_syntaxHighlighter) { _ptr___ptr_syntaxHighlighter in
        withUnsafeArgumentPackPointer(_ptr___ptr_syntaxHighlighter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_unregister_syntax_highlighter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_goto_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "goto_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func gotoLine(lineNumber: Int32) {
        lineNumber.withGodotUnsafeRawPointer { __ptr_lineNumber in
        withUnsafeArgumentPackPointer(__ptr_lineNumber) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_goto_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_current_script: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_script").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2146468882)!
        }
        }
    }()
    public func currentScript() -> Godot.Script? {
        Godot.Script?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_current_script,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_open_scripts: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_scripts").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func openScripts() -> Godot.GodotArray<Godot.Script?> {
        Godot.GodotArray<Godot.Script?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_open_scripts,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_open_script_create_dialog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_script_create_dialog").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func openScriptCreateDialog(baseName: Godot.GodotString, basePath: Godot.GodotString) {
        baseName.withGodotUnsafeRawPointer { __ptr_baseName in
        basePath.withGodotUnsafeRawPointer { __ptr_basePath in
        withUnsafeArgumentPackPointer(__ptr_baseName, __ptr_basePath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_open_script_create_dialog,
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