//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class FileSystemDock: VBoxContainer {
    @Emitter(signal: "inherit", args: ("file", Godot.GodotString))
    public struct Inherit {
    }

    @Emitter(signal: "instantiate", args: ("files", Godot.PackedStringArray))
    public struct Instantiate {
    }

    @Emitter(signal: "resource_removed", args: ("resource", Godot.Resource?))
    public struct ResourceRemoved {
    }

    @Emitter(signal: "file_removed", args: ("file", Godot.GodotString))
    public struct FileRemoved {
    }

    @Emitter(signal: "folder_removed", args: ("folder", Godot.GodotString))
    public struct FolderRemoved {
    }

    @Emitter(signal: "files_moved", args: ("oldFile", Godot.GodotString), ("newFile", Godot.GodotString))
    public struct FilesMoved {
    }

    @Emitter(signal: "folder_moved", args: ("oldFolder", Godot.GodotString), ("newFolder", Godot.GodotString))
    public struct FolderMoved {
    }

    @Emitter(signal: "display_mode_changed")
    public struct DisplayModeChanged {
    }

    private static var __method_binding_navigate_to_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "navigate_to_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func navigateToPath(_ path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_navigate_to_path,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_tooltip_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2258356838)!
        }
        }
    }()
    public func addResourceTooltipPlugin(_ plugin: Godot.EditorResourceTooltipPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_resource_tooltip_plugin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_tooltip_plugin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2258356838)!
        }
        }
    }()
    public func removeResourceTooltipPlugin(_ plugin: Godot.EditorResourceTooltipPlugin?) {
        plugin.withUnsafeRawPointer { (__ptr_plugin) in
            withUnsafePointer(to: __ptr_plugin) { (_ptr___ptr_plugin) in
                withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_remove_resource_tooltip_plugin,
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