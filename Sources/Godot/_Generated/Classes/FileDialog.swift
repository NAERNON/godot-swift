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

    public struct FileSelectedSignalInput: Godot.SignalInput {
        public let path: Godot.GodotString

        fileprivate init(
            path: Godot.GodotString
        ) {
            self.path = path
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.path)]
        }
    }

    public func fileSelected(
        path: Godot.GodotString
    ) {
        _ = fileSelectedSignal.emit(.init(path: path))
    }

    public lazy var fileSelectedSignal: Godot.SignalEmitter<FileSelectedSignalInput> = {
        .init(object: self, signalName: "file_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FileSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(path: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FileSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FileSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct FilesSelectedSignalInput: Godot.SignalInput {
        public let paths: Godot.PackedStringArray

        fileprivate init(
            paths: Godot.PackedStringArray
        ) {
            self.paths = paths
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.paths)]
        }
    }

    public func filesSelected(
        paths: Godot.PackedStringArray
    ) {
        _ = filesSelectedSignal.emit(.init(paths: paths))
    }

    public lazy var filesSelectedSignal: Godot.SignalEmitter<FilesSelectedSignalInput> = {
        .init(object: self, signalName: "files_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FilesSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(paths: Godot.PackedStringArray.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FilesSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FilesSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct DirSelectedSignalInput: Godot.SignalInput {
        public let dir: Godot.GodotString

        fileprivate init(
            dir: Godot.GodotString
        ) {
            self.dir = dir
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.dir)]
        }
    }

    public func dirSelected(
        dir: Godot.GodotString
    ) {
        _ = dirSelectedSignal.emit(.init(dir: dir))
    }

    public lazy var dirSelectedSignal: Godot.SignalEmitter<DirSelectedSignalInput> = {
        .init(object: self, signalName: "dir_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<DirSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(dir: Godot.GodotString.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<DirSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<DirSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_clear_filters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_filters").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func clearFilters() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear_filters,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_add_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_filter").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3388804757)!
        }
        }
    }()

    public func addFilter(
        _ filter: Godot.GodotString,
        description: Godot.GodotString = ""
    ) {
        withTransferrableUnsafeRawPointer(to: filter) { __ptr_filter in
            withTransferrableUnsafeRawPointer(to: description) { __ptr_description in
                withUnsafeArgumentPackPointer(__ptr_filter, __ptr_description) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_set_filters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_filters").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4015028928)!
        }
        }
    }()

    private func __setFilters(
        _ filters: Godot.PackedStringArray
    ) {
        withTransferrableUnsafeRawPointer(to: filters) { __ptr_filters in
            withUnsafeArgumentPackPointer(__ptr_filters) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_filters,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_filters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_filters").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()

    private func __getFilters() -> Godot.PackedStringArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_filters,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_current_dir: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_dir").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getCurrentDir() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_dir,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_current_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_file").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getCurrentFile() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_file,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_current_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getCurrentPath() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_current_path,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_current_dir: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_dir").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setCurrentDir(
        _ dir: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: dir) { __ptr_dir in
            withUnsafeArgumentPackPointer(__ptr_dir) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current_dir,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_current_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_file").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setCurrentFile(
        _ file: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: file) { __ptr_file in
            withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current_file,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_current_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_current_path").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setCurrentPath(
        _ path: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
            withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_current_path,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_set_mode_overrides_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mode_overrides_title").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setModeOverridesTitle(
        override: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: override) { __ptr_override in
            withUnsafeArgumentPackPointer(__ptr_override) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_mode_overrides_title,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_mode_overriding_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_mode_overriding_title").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isModeOverridingTitle() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_mode_overriding_title,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_file_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_file_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3654936397)!
        }
        }
    }()

    private func __setFileMode(
        _ mode: Godot.FileDialog.FileMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_file_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_file_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_file_mode").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4074825319)!
        }
        }
    }()

    private func __getFileMode() -> Godot.FileDialog.FileMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_file_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_vbox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vbox").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 915758477)!
        }
        }
    }()

    public func vbox() -> Godot.VBoxContainer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_vbox,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_get_line_edit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_edit").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4071694264)!
        }
        }
    }()

    public func lineEdit() -> Godot.LineEdit? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_line_edit,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_access: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_access").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4104413466)!
        }
        }
    }()

    private func __setAccess(
        _ access: Godot.FileDialog.Access
    ) {
        withTransferrableUnsafeRawPointer(to: access) { __ptr_access in
            withUnsafeArgumentPackPointer(__ptr_access) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_access,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_access: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_access").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3344081076)!
        }
        }
    }()

    private func __getAccess() -> Godot.FileDialog.Access {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_access,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_root_subfolder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_subfolder").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setRootSubfolder(
        dir: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: dir) { __ptr_dir in
            withUnsafeArgumentPackPointer(__ptr_dir) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_root_subfolder,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_root_subfolder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_subfolder").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getRootSubfolder() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_root_subfolder,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_show_hidden_files: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_hidden_files").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setShowHiddenFiles(
        show: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: show) { __ptr_show in
            withUnsafeArgumentPackPointer(__ptr_show) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_show_hidden_files,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_showing_hidden_files: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_hidden_files").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isShowingHiddenFiles() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_showing_hidden_files,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_use_native_dialog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_native_dialog").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setUseNativeDialog(
        native: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: native) { __ptr_native in
            withUnsafeArgumentPackPointer(__ptr_native) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_use_native_dialog,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_use_native_dialog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_use_native_dialog").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getUseNativeDialog() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_use_native_dialog,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_deselect_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "deselect_all").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func deselectAll() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_deselect_all,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    internal static var __method_binding_invalidate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "invalidate").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func invalidate() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
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

    public var useNativeDialog: Bool {
        get {
            __getUseNativeDialog()
        }
        set {
            __setUseNativeDialog(
                native: newValue
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