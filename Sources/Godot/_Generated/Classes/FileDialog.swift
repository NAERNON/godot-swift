//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class FileDialog: ConfirmationDialog {
    public enum FileMode: UInt32, GodotEnum {
        case openFile = 0
        case openFiles = 1
        case openDir = 2
        case openAny = 3
        case saveFile = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Open File", 0),
            ("Open Files", 1),
            ("Open Dir", 2),
            ("Open Any", 3),
            ("Save File", 4),]
        }
    }
    public enum Access: UInt32, GodotEnum {
        case resources = 0
        case userdata = 1
        case filesystem = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Resources", 0),
            ("Userdata", 1),
            ("Filesystem", 2),]
        }
    }

    @Emitter(signal: "file_selected", args: ("path", Godot.GodotString))
    public struct FileSelected {
    }

    @Emitter(signal: "files_selected", args: ("paths", Godot.PackedStringArray))
    public struct FilesSelected {
    }

    @Emitter(signal: "dir_selected", args: ("dir", Godot.GodotString))
    public struct DirSelected {
    }

    private static var __method_binding_clear_filters: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_filters").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearFilters() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_clear_filters,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_add_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 233059325)!
        }
        }
    }()
    public func addFilter(_ filter: Godot.GodotString, description: Godot.GodotString = "") {
        filter.withUnsafeRawPointer { (__ptr_filter) in
            description.withUnsafeRawPointer { (__ptr_description) in
                withUnsafeArgumentPackPointer(__ptr_filter, __ptr_description) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_filter,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_filters: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filters").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4015028928)!
        }
        }
    }()
    private func __setFilters(_ filters: Godot.PackedStringArray) {
        filters.withUnsafeRawPointer { (__ptr_filters) in
            withUnsafeArgumentPackPointer(__ptr_filters) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_filters,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_filters: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filters").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    private func __getFilters() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_filters,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_current_dir: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_dir").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getCurrentDir() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_dir,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_current_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getCurrentFile() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_file,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_current_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getCurrentPath() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_path,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_current_dir: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_dir").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setCurrentDir(_ dir: Godot.GodotString) {
        dir.withUnsafeRawPointer { (__ptr_dir) in
            withUnsafeArgumentPackPointer(__ptr_dir) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_current_dir,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_current_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setCurrentFile(_ file: Godot.GodotString) {
        file.withUnsafeRawPointer { (__ptr_file) in
            withUnsafeArgumentPackPointer(__ptr_file) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_current_file,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_current_path: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_path").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setCurrentPath(_ path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_current_path,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_mode_overrides_title: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode_overrides_title").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setModeOverridesTitle(override: Bool) {
        withUnsafePointer(to: override) { (__ptr_override) in
            withUnsafeArgumentPackPointer(__ptr_override) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_mode_overrides_title,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_mode_overriding_title: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_mode_overriding_title").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isModeOverridingTitle() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_mode_overriding_title,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_file_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_file_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3654936397)!
        }
        }
    }()
    private func __setFileMode(_ mode: Godot.FileDialog.FileMode) {
        withUnsafePointer(to: mode) { (__ptr_mode) in
            withUnsafeArgumentPackPointer(__ptr_mode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_file_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_file_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_file_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4074825319)!
        }
        }
    }()
    private func __getFileMode() -> Godot.FileDialog.FileMode {
        var __temporary = Godot.FileDialog.FileMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_file_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.FileDialog.FileMode(rawValue: __temporary)!
    }

    private static var __method_binding_get_vbox: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vbox").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 915758477)!
        }
        }
    }()
    public func vbox() -> Godot.VBoxContainer? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_vbox,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VBoxContainer.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_line_edit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_edit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4071694264)!
        }
        }
    }()
    public func lineEdit() -> Godot.LineEdit? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_line_edit,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.LineEdit.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_access: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_access").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4104413466)!
        }
        }
    }()
    private func __setAccess(_ access: Godot.FileDialog.Access) {
        withUnsafePointer(to: access) { (__ptr_access) in
            withUnsafeArgumentPackPointer(__ptr_access) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_access,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_access: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_access").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3344081076)!
        }
        }
    }()
    private func __getAccess() -> Godot.FileDialog.Access {
        var __temporary = Godot.FileDialog.Access.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_access,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.FileDialog.Access(rawValue: __temporary)!
    }

    private static var __method_binding_set_root_subfolder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_subfolder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setRootSubfolder(dir: Godot.GodotString) {
        dir.withUnsafeRawPointer { (__ptr_dir) in
            withUnsafeArgumentPackPointer(__ptr_dir) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_root_subfolder,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_root_subfolder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_subfolder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getRootSubfolder() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_root_subfolder,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_show_hidden_files: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_hidden_files").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowHiddenFiles(show: Bool) {
        withUnsafePointer(to: show) { (__ptr_show) in
            withUnsafeArgumentPackPointer(__ptr_show) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_show_hidden_files,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_showing_hidden_files: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_hidden_files").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingHiddenFiles() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_showing_hidden_files,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_deselect_all: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "deselect_all").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func deselectAll() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_deselect_all,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_invalidate: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "invalidate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func invalidate() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_invalidate,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    public var isModeOverridingTitle: Bool {
        get {
            __isModeOverridingTitle()
        }
        set {
            __setModeOverridesTitle(
                override: newValue
            )
        }
    }

    public var fileMode: Godot.FileDialog.FileMode {
        get {
            __getFileMode()
        }
        set {
            __setFileMode(
                newValue
            )
        }
    }

    public var access: Godot.FileDialog.Access {
        get {
            __getAccess()
        }
        set {
            __setAccess(
                newValue
            )
        }
    }

    public var rootSubfolder: Godot.GodotString {
        get {
            __getRootSubfolder()
        }
        set {
            __setRootSubfolder(
                dir: newValue
            )
        }
    }

    public var filters: Godot.PackedStringArray {
        get {
            __getFilters()
        }
        set {
            __setFilters(
                newValue
            )
        }
    }

    public var isShowingHiddenFiles: Bool {
        get {
            __isShowingHiddenFiles()
        }
        set {
            __setShowHiddenFiles(
                show: newValue
            )
        }
    }

    public var currentDir: Godot.GodotString {
        get {
            __getCurrentDir()
        }
        set {
            __setCurrentDir(
                newValue
            )
        }
    }

    public var currentFile: Godot.GodotString {
        get {
            __getCurrentFile()
        }
        set {
            __setCurrentFile(
                newValue
            )
        }
    }

    public var currentPath: Godot.GodotString {
        get {
            __getCurrentPath()
        }
        set {
            __setCurrentPath(
                newValue
            )
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