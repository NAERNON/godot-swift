//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorCommandPalette: ConfirmationDialog {
    private static var __method_binding_add_command: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_command").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 864043298)!
        }
        }
    }()
    public func addCommand(commandName: Godot.GodotString, keyName: Godot.GodotString, bindedCallable: Godot.Callable, shortcutText: Godot.GodotString = "None") {
        commandName.withGodotUnsafeRawPointer { __ptr_commandName in
        keyName.withGodotUnsafeRawPointer { __ptr_keyName in
        bindedCallable.withGodotUnsafeRawPointer { __ptr_bindedCallable in
        shortcutText.withGodotUnsafeRawPointer { __ptr_shortcutText in
        withUnsafeArgumentPackPointer(__ptr_commandName, __ptr_keyName, __ptr_bindedCallable, __ptr_shortcutText) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_command,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_remove_command: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_command").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeCommand(keyName: Godot.GodotString) {
        keyName.withGodotUnsafeRawPointer { __ptr_keyName in
        withUnsafeArgumentPackPointer(__ptr_keyName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_command,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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