//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorCommandPalette: ConfirmationDialog {
    private static var __method_binding_add_command: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_command").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3664614892)!
        }
        }
    }()
    public func addCommand(commandName: Godot.GodotString, keyName: Godot.GodotString, bindedCallable: Godot.Callable, shortcutText: Godot.GodotString = "None") {
        commandName.withUnsafeRawPointer { (__ptr_commandName) in
            keyName.withUnsafeRawPointer { (__ptr_keyName) in
                bindedCallable.withUnsafeRawPointer { (__ptr_bindedCallable) in
                    shortcutText.withUnsafeRawPointer { (__ptr_shortcutText) in
                        withUnsafeArgumentPackPointer(__ptr_commandName, __ptr_keyName, __ptr_bindedCallable, __ptr_shortcutText) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_command,
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

    private static var __method_binding_remove_command: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_command").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeCommand(keyName: Godot.GodotString) {
        keyName.withUnsafeRawPointer { (__ptr_keyName) in
            withUnsafeArgumentPackPointer(__ptr_keyName) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_command,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
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