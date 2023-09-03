//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptEditorBase: VBoxContainer {
    @Emitter(signal: "name_changed")
    public struct NameChanged {
    }

    @Emitter(signal: "edited_script_changed")
    public struct EditedScriptChanged {
    }

    @Emitter(signal: "request_help", args: ("topic", Godot.GodotString))
    public struct RequestHelp {
    }

    @Emitter(signal: "request_open_script_at_line", args: ("script", Godot.Object?), ("line", Int))
    public struct RequestOpenScriptAtLine {
    }

    @Emitter(signal: "request_save_history")
    public struct RequestSaveHistory {
    }

    @Emitter(signal: "go_to_help", args: ("what", Godot.GodotString))
    public struct GoToHelp {
    }

    @Emitter(signal: "search_in_files_requested", args: ("text", Godot.GodotString))
    public struct SearchInFilesRequested {
    }

    @Emitter(signal: "replace_in_files_requested", args: ("text", Godot.GodotString))
    public struct ReplaceInFilesRequested {
    }

    @Emitter(signal: "go_to_method", args: ("script", Godot.Object?), ("method", Godot.GodotString))
    public struct GoToMethod {
    }

    private static var __method_binding_get_base_editor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_base_editor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()
    public func baseEditor() -> Godot.Control? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_base_editor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Control.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_add_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_syntax_highlighter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func addSyntaxHighlighter(_ highlighter: Godot.EditorSyntaxHighlighter?) {
        highlighter.withUnsafeRawPointer { (__ptr_highlighter) in
            withUnsafePointer(to: __ptr_highlighter) { (_ptr___ptr_highlighter) in
                withUnsafeArgumentPackPointer(_ptr___ptr_highlighter) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_syntax_highlighter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
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