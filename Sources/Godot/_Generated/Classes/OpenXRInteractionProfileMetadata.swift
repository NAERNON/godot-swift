//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class OpenXRInteractionProfileMetadata: Object {
    internal static var __method_binding_register_profile_rename: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_profile_rename").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3186203200)!
        }
        }
    }()

    public func registerProfileRename(
        oldName: Godot.GodotString,
        newName: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: oldName) { __ptr_oldName in
            withTransferrableUnsafeRawPointer(to: newName) { __ptr_newName in
                withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_newName) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_register_profile_rename,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_register_top_level_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_top_level_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()

    public func registerTopLevelPath(
        displayName: Godot.GodotString,
        openxrPath: Godot.GodotString,
        openxrExtensionName: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: displayName) { __ptr_displayName in
            withTransferrableUnsafeRawPointer(to: openxrPath) { __ptr_openxrPath in
                withTransferrableUnsafeRawPointer(to: openxrExtensionName) { __ptr_openxrExtensionName in
                    withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_register_top_level_path,
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

    internal static var __method_binding_register_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_interaction_profile").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()

    public func registerInteractionProfile(
        displayName: Godot.GodotString,
        openxrPath: Godot.GodotString,
        openxrExtensionName: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: displayName) { __ptr_displayName in
            withTransferrableUnsafeRawPointer(to: openxrPath) { __ptr_openxrPath in
                withTransferrableUnsafeRawPointer(to: openxrExtensionName) { __ptr_openxrExtensionName in
                    withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_register_interaction_profile,
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

    internal static var __method_binding_register_io_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_io_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3443511926)!
        }
        }
    }()

    public func registerIoPath(
        interactionProfile: Godot.GodotString,
        displayName: Godot.GodotString,
        toplevelPath: Godot.GodotString,
        openxrPath: Godot.GodotString,
        openxrExtensionName: Godot.GodotString,
        actionType: Godot.OpenXRAction.ActionType
    ) {
        withTransferrableUnsafeRawPointer(to: interactionProfile) { __ptr_interactionProfile in
            withTransferrableUnsafeRawPointer(to: displayName) { __ptr_displayName in
                withTransferrableUnsafeRawPointer(to: toplevelPath) { __ptr_toplevelPath in
                    withTransferrableUnsafeRawPointer(to: openxrPath) { __ptr_openxrPath in
                        withTransferrableUnsafeRawPointer(to: openxrExtensionName) { __ptr_openxrExtensionName in
                            withTransferrableUnsafeRawPointer(to: actionType) { __ptr_actionType in
                                withUnsafeArgumentPackPointer(__ptr_interactionProfile, __ptr_displayName, __ptr_toplevelPath, __ptr_openxrPath, __ptr_openxrExtensionName, __ptr_actionType) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_register_io_path,
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