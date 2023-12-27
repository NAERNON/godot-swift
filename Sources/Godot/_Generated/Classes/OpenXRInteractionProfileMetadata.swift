//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class OpenXRInteractionProfileMetadata: Object {
    private static var __method_binding_register_profile_rename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_profile_rename").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()
    public func registerProfileRename(oldName: Godot.GodotString, newName: Godot.GodotString) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        newName.withGodotUnsafeRawPointer { __ptr_newName in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_newName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_profile_rename,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_register_top_level_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_top_level_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()
    public func registerTopLevelPath(displayName: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString) {
        displayName.withGodotUnsafeRawPointer { __ptr_displayName in
        openxrPath.withGodotUnsafeRawPointer { __ptr_openxrPath in
        openxrExtensionName.withGodotUnsafeRawPointer { __ptr_openxrExtensionName in
        withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_top_level_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_register_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_interaction_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()
    public func registerInteractionProfile(displayName: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString) {
        displayName.withGodotUnsafeRawPointer { __ptr_displayName in
        openxrPath.withGodotUnsafeRawPointer { __ptr_openxrPath in
        openxrExtensionName.withGodotUnsafeRawPointer { __ptr_openxrExtensionName in
        withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_interaction_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_register_io_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_io_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3443511926)!
        }
        }
    }()
    public func registerIoPath(interactionProfile: Godot.GodotString, displayName: Godot.GodotString, toplevelPath: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString, actionType: Godot.OpenXRAction.ActionType) {
        interactionProfile.withGodotUnsafeRawPointer { __ptr_interactionProfile in
        displayName.withGodotUnsafeRawPointer { __ptr_displayName in
        toplevelPath.withGodotUnsafeRawPointer { __ptr_toplevelPath in
        openxrPath.withGodotUnsafeRawPointer { __ptr_openxrPath in
        openxrExtensionName.withGodotUnsafeRawPointer { __ptr_openxrExtensionName in
        actionType.withGodotUnsafeRawPointer { __ptr_actionType in
        withUnsafeArgumentPackPointer(__ptr_interactionProfile, __ptr_displayName, __ptr_toplevelPath, __ptr_openxrPath, __ptr_openxrExtensionName, __ptr_actionType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_register_io_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
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