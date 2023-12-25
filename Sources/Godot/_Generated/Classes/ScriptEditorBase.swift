//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptEditorBase: VBoxContainer {
    public func nameChanged() {
        nameChangedConnector.emit()
    }

    public private (set) lazy var nameChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "name_changed")
    }()


    public func editedScriptChanged() {
        editedScriptChangedConnector.emit()
    }

    public private (set) lazy var editedScriptChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "edited_script_changed")
    }()


    public func requestHelp(topic: Godot.GodotString) {
        requestHelpConnector.emit(topic)
    }

    public private (set) lazy var requestHelpConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "request_help")
    }()

    public func requestOpenScriptAtLine(script: Godot.Object?, line: Int) {
        requestOpenScriptAtLineConnector.emit(script, line)
    }

    public private (set) lazy var requestOpenScriptAtLineConnector: Godot.SignalConnector<Godot.Object?, Int> = {
        .init(self, "request_open_script_at_line")
    }()

    public func requestSaveHistory() {
        requestSaveHistoryConnector.emit()
    }

    public private (set) lazy var requestSaveHistoryConnector: Godot.SignalConnector
    <> = {
        .init(self, "request_save_history")
    }()


    public func goToHelp(what: Godot.GodotString) {
        goToHelpConnector.emit(what)
    }

    public private (set) lazy var goToHelpConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "go_to_help")
    }()

    public func searchInFilesRequested(text: Godot.GodotString) {
        searchInFilesRequestedConnector.emit(text)
    }

    public private (set) lazy var searchInFilesRequestedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "search_in_files_requested")
    }()

    public func replaceInFilesRequested(text: Godot.GodotString) {
        replaceInFilesRequestedConnector.emit(text)
    }

    public private (set) lazy var replaceInFilesRequestedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "replace_in_files_requested")
    }()

    public func goToMethod(script: Godot.Object?, method: Godot.GodotString) {
        goToMethodConnector.emit(script, method)
    }

    public private (set) lazy var goToMethodConnector: Godot.SignalConnector<Godot.Object?, Godot.GodotString> = {
        .init(self, "go_to_method")
    }()

    private static var __method_binding_get_base_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_base_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()
    public func baseEditor() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_base_editor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_syntax_highlighter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func addSyntaxHighlighter(_ highlighter: Godot.EditorSyntaxHighlighter?) {
        highlighter.withGodotUnsafeRawPointer { __ptr_highlighter in
        withUnsafePointer(to: __ptr_highlighter) { _ptr___ptr_highlighter in
        withUnsafeArgumentPackPointer(_ptr___ptr_highlighter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
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