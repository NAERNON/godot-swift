//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptEditor: PanelContainer {
    @Emitter(signal: "editor_script_changed", args: ("script", Godot.Script?))
    public struct EditorScriptChanged {
    }

    @Emitter(signal: "script_close", args: ("script", Godot.Script?))
    public struct ScriptClose {
    }

    private static var __method_binding_get_current_editor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_editor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1906266726)!
        }
        }
    }()
    public func currentEditor() -> Godot.ScriptEditorBase? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_editor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.ScriptEditorBase.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_open_script_editors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_script_editors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func openScriptEditors() -> Godot.GodotArray<Godot.ScriptEditorBase?> {
        let __temporary = Godot.GodotArray<Godot.ScriptEditorBase?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_open_script_editors,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_register_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_syntax_highlighter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func registerSyntaxHighlighter(_ syntaxHighlighter: Godot.EditorSyntaxHighlighter?) {
        syntaxHighlighter.withUnsafeRawPointer { (__ptr_syntaxHighlighter) in
            withUnsafePointer(to: __ptr_syntaxHighlighter) { (_ptr___ptr_syntaxHighlighter) in
                withUnsafeArgumentPackPointer(_ptr___ptr_syntaxHighlighter) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_register_syntax_highlighter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_unregister_syntax_highlighter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unregister_syntax_highlighter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1092774468)!
        }
        }
    }()
    public func unregisterSyntaxHighlighter(_ syntaxHighlighter: Godot.EditorSyntaxHighlighter?) {
        syntaxHighlighter.withUnsafeRawPointer { (__ptr_syntaxHighlighter) in
            withUnsafePointer(to: __ptr_syntaxHighlighter) { (_ptr___ptr_syntaxHighlighter) in
                withUnsafeArgumentPackPointer(_ptr___ptr_syntaxHighlighter) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_unregister_syntax_highlighter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_goto_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "goto_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func gotoLine(lineNumber: Int32) {
        withUnsafePointer(to: lineNumber) { (__ptr_lineNumber) in
            withUnsafeArgumentPackPointer(__ptr_lineNumber) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_goto_line,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_current_script: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_script").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2146468882)!
        }
        }
    }()
    public func currentScript() -> Godot.Script? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_script,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Script.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_open_scripts: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_scripts").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func openScripts() -> Godot.GodotArray<Godot.Script?> {
        let __temporary = Godot.GodotArray<Godot.Script?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_open_scripts,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_open_script_create_dialog: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_script_create_dialog").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func openScriptCreateDialog(baseName: Godot.GodotString, basePath: Godot.GodotString) {
        baseName.withUnsafeRawPointer { (__ptr_baseName) in
            basePath.withUnsafeRawPointer { (__ptr_basePath) in
                withUnsafeArgumentPackPointer(__ptr_baseName, __ptr_basePath) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_open_script_create_dialog,
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