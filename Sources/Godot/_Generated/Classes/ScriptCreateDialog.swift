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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "config").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 869314288)!
        }
        }
    }()
    public func config(inherits: Godot.GodotString, path: Godot.GodotString, builtInEnabled: Bool = true, loadEnabled: Bool = true) {
        inherits.withGodotUnsafeRawPointer { __ptr_inherits in
        path.withGodotUnsafeRawPointer { __ptr_path in
        builtInEnabled.withGodotUnsafeRawPointer { __ptr_builtInEnabled in
        loadEnabled.withGodotUnsafeRawPointer { __ptr_loadEnabled in
        withUnsafeArgumentPackPointer(__ptr_inherits, __ptr_path, __ptr_builtInEnabled, __ptr_loadEnabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_config,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
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