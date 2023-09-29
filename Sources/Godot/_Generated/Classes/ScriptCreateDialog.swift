//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptCreateDialog: ConfirmationDialog {
    @Emitter(signal: "script_created", args: ("script", Godot.Script?))
    public struct ScriptCreated {
    }

    private static var __method_binding_config: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "config").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4210001628)!
        }
        }
    }()
    public func config(inherits: Godot.GodotString, path: Godot.GodotString, builtInEnabled: Bool = true, loadEnabled: Bool = true) {
        inherits.withUnsafeRawPointer { (__ptr_inherits) in
            path.withUnsafeRawPointer { (__ptr_path) in
                withUnsafePointer(to: builtInEnabled) { (__ptr_builtInEnabled) in
                    withUnsafePointer(to: loadEnabled) { (__ptr_loadEnabled) in
                        withUnsafeArgumentPackPointer(__ptr_inherits, __ptr_path, __ptr_builtInEnabled, __ptr_loadEnabled) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_config,
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