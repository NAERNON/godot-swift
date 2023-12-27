//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class FileSystemDock: VBoxContainer {
    public func inherit(file: Godot.GodotString) {
        inheritConnector.emit(file)
    }

    public private (set) lazy var inheritConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "inherit")
    }()

    public func instantiate(files: Godot.PackedStringArray) {
        instantiateConnector.emit(files)
    }

    public private (set) lazy var instantiateConnector: Godot.SignalConnector<Godot.PackedStringArray> = {
        .init(self, "instantiate")
    }()

    public func resourceRemoved(resource: Godot.Resource?) {
        resourceRemovedConnector.emit(resource)
    }

    public private (set) lazy var resourceRemovedConnector: Godot.SignalConnector<Godot.Resource?> = {
        .init(self, "resource_removed")
    }()

    public func fileRemoved(file: Godot.GodotString) {
        fileRemovedConnector.emit(file)
    }

    public private (set) lazy var fileRemovedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "file_removed")
    }()

    public func folderRemoved(folder: Godot.GodotString) {
        folderRemovedConnector.emit(folder)
    }

    public private (set) lazy var folderRemovedConnector: Godot.SignalConnector<Godot.GodotString> = {
        .init(self, "folder_removed")
    }()

    public func filesMoved(oldFile: Godot.GodotString, newFile: Godot.GodotString) {
        filesMovedConnector.emit(oldFile, newFile)
    }

    public private (set) lazy var filesMovedConnector: Godot.SignalConnector<Godot.GodotString, Godot.GodotString> = {
        .init(self, "files_moved")
    }()

    public func folderMoved(oldFolder: Godot.GodotString, newFolder: Godot.GodotString) {
        folderMovedConnector.emit(oldFolder, newFolder)
    }

    public private (set) lazy var folderMovedConnector: Godot.SignalConnector<Godot.GodotString, Godot.GodotString> = {
        .init(self, "folder_moved")
    }()

    public func displayModeChanged() {
        displayModeChangedConnector.emit()
    }

    public private (set) lazy var displayModeChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "display_mode_changed")
    }()


    private static var __method_binding_navigate_to_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "navigate_to_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func navigateToPath(_ path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_navigate_to_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_tooltip_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2258356838)!
        }
        }
    }()
    public func addResourceTooltipPlugin(_ plugin: Godot.EditorResourceTooltipPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_resource_tooltip_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_resource_tooltip_plugin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_tooltip_plugin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2258356838)!
        }
        }
    }()
    public func removeResourceTooltipPlugin(_ plugin: Godot.EditorResourceTooltipPlugin?) {
        plugin.withGodotUnsafeRawPointer { __ptr_plugin in
        withUnsafePointer(to: __ptr_plugin) { _ptr___ptr_plugin in
        withUnsafeArgumentPackPointer(_ptr___ptr_plugin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_resource_tooltip_plugin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
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