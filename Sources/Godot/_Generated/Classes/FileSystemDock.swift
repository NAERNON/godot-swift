//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class FileSystemDock: VBoxContainer {
    public struct InheritSignalInput: Godot.SignalInput {
        public let file: Godot.GodotString
        fileprivate init(file: Godot.GodotString) {
            self.file = file
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, file)
        }
    }
    public func inherit(file: Godot.GodotString) {
        _ = inheritSignal.emit(.init(file: file))
    }
    public lazy var inheritSignal: Godot.SignalEmitter<InheritSignalInput> = {
        .init(object: self, signalName: "inherit") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InheritSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(file: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InheritSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InheritSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InstantiateSignalInput: Godot.SignalInput {
        public let files: Godot.PackedStringArray
        fileprivate init(files: Godot.PackedStringArray) {
            self.files = files
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, files)
        }
    }
    public func instantiate(files: Godot.PackedStringArray) {
        _ = instantiateSignal.emit(.init(files: files))
    }
    public lazy var instantiateSignal: Godot.SignalEmitter<InstantiateSignalInput> = {
        .init(object: self, signalName: "instantiate") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InstantiateSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(files: Godot.PackedStringArray.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InstantiateSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InstantiateSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ResourceRemovedSignalInput: Godot.SignalInput {
        public let resource: Godot.Resource?
        fileprivate init(resource: Godot.Resource?) {
            self.resource = resource
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, resource)
        }
    }
    public func resourceRemoved(resource: Godot.Resource?) {
        _ = resourceRemovedSignal.emit(.init(resource: resource))
    }
    public lazy var resourceRemovedSignal: Godot.SignalEmitter<ResourceRemovedSignalInput> = {
        .init(object: self, signalName: "resource_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ResourceRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(resource: Godot.Resource?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ResourceRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ResourceRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct FileRemovedSignalInput: Godot.SignalInput {
        public let file: Godot.GodotString
        fileprivate init(file: Godot.GodotString) {
            self.file = file
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, file)
        }
    }
    public func fileRemoved(file: Godot.GodotString) {
        _ = fileRemovedSignal.emit(.init(file: file))
    }
    public lazy var fileRemovedSignal: Godot.SignalEmitter<FileRemovedSignalInput> = {
        .init(object: self, signalName: "file_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FileRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(file: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FileRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FileRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct FolderRemovedSignalInput: Godot.SignalInput {
        public let folder: Godot.GodotString
        fileprivate init(folder: Godot.GodotString) {
            self.folder = folder
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, folder)
        }
    }
    public func folderRemoved(folder: Godot.GodotString) {
        _ = folderRemovedSignal.emit(.init(folder: folder))
    }
    public lazy var folderRemovedSignal: Godot.SignalEmitter<FolderRemovedSignalInput> = {
        .init(object: self, signalName: "folder_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FolderRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(folder: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FolderRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FolderRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct FilesMovedSignalInput: Godot.SignalInput {
        public let old_file: Godot.GodotString
        public let new_file: Godot.GodotString
        fileprivate init(old_file: Godot.GodotString, new_file: Godot.GodotString) {
            self.old_file = old_file
            self.new_file = new_file
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, old_file, new_file)
        }
    }
    public func filesMoved(old_file: Godot.GodotString, new_file: Godot.GodotString) {
        _ = filesMovedSignal.emit(.init(old_file: old_file,
                new_file: new_file))
    }
    public lazy var filesMovedSignal: Godot.SignalEmitter<FilesMovedSignalInput> = {
        .init(object: self, signalName: "files_moved") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FilesMovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(old_file: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    new_file: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FilesMovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FilesMovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct FolderMovedSignalInput: Godot.SignalInput {
        public let old_folder: Godot.GodotString
        public let new_folder: Godot.GodotString
        fileprivate init(old_folder: Godot.GodotString, new_folder: Godot.GodotString) {
            self.old_folder = old_folder
            self.new_folder = new_folder
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, old_folder, new_folder)
        }
    }
    public func folderMoved(old_folder: Godot.GodotString, new_folder: Godot.GodotString) {
        _ = folderMovedSignal.emit(.init(old_folder: old_folder,
                new_folder: new_folder))
    }
    public lazy var folderMovedSignal: Godot.SignalEmitter<FolderMovedSignalInput> = {
        .init(object: self, signalName: "folder_moved") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<FolderMovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(old_folder: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    new_folder: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<FolderMovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<FolderMovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func displayModeChanged() {
        _ = displayModeChangedSignal.emit()
    }
    public lazy var displayModeChangedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "display_mode_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
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