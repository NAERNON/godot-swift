//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class OpenXRInteractionProfileMetadata: Object {
    private static var __method_binding_register_top_level_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_top_level_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()
    public func registerTopLevelPath(displayName: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString) {
        displayName.withUnsafeRawPointer { (__ptr_displayName) in
            openxrPath.withUnsafeRawPointer { (__ptr_openxrPath) in
                openxrExtensionName.withUnsafeRawPointer { (__ptr_openxrExtensionName) in
                    withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_register_interaction_profile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_interaction_profile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 254767734)!
        }
        }
    }()
    public func registerInteractionProfile(displayName: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString) {
        displayName.withUnsafeRawPointer { (__ptr_displayName) in
            openxrPath.withUnsafeRawPointer { (__ptr_openxrPath) in
                openxrExtensionName.withUnsafeRawPointer { (__ptr_openxrExtensionName) in
                    withUnsafeArgumentPackPointer(__ptr_displayName, __ptr_openxrPath, __ptr_openxrExtensionName) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_register_io_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_io_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3443511926)!
        }
        }
    }()
    public func registerIoPath(interactionProfile: Godot.GodotString, displayName: Godot.GodotString, toplevelPath: Godot.GodotString, openxrPath: Godot.GodotString, openxrExtensionName: Godot.GodotString, actionType: Godot.OpenXRAction.ActionType) {
        interactionProfile.withUnsafeRawPointer { (__ptr_interactionProfile) in
            displayName.withUnsafeRawPointer { (__ptr_displayName) in
                toplevelPath.withUnsafeRawPointer { (__ptr_toplevelPath) in
                    openxrPath.withUnsafeRawPointer { (__ptr_openxrPath) in
                        openxrExtensionName.withUnsafeRawPointer { (__ptr_openxrExtensionName) in
                            withUnsafePointer(to: actionType) { (__ptr_actionType) in
                                withUnsafeArgumentPackPointer(__ptr_interactionProfile, __ptr_displayName, __ptr_toplevelPath, __ptr_openxrPath, __ptr_openxrExtensionName, __ptr_actionType) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
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