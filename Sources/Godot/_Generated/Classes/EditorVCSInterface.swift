//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorVCSInterface: Object {
    public enum ChangeType: UInt32 {
        case new = 0
        case modified = 1
        case renamed = 2
        case deleted = 3
        case typechange = 4
        case unmerged = 5
    }
    public enum TreeArea: UInt32 {
        case commit = 0
        case staged = 1
        case unstaged = 2
    }

    open func _initialize(projectPath: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _setCredentials(username: Godot.GodotString, password: Godot.GodotString, sshPublicKeyPath: Godot.GodotString, sshPrivateKeyPath: Godot.GodotString, sshPassphrase: Godot.GodotString) {
    }

    open func _getModifiedFilesData() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _stageFile(filePath: Godot.GodotString) {
    }

    open func _unstageFile(filePath: Godot.GodotString) {
    }

    open func _discardFile(filePath: Godot.GodotString) {
    }

    open func _commit(msg: Godot.GodotString) {
    }

    open func _getDiff(identifier: Godot.GodotString, area: Int32) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _shutDown() -> Bool {
        Bool()
    }

    open func _getVcsName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getPreviousCommits(maxCommits: Int32) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _getBranchList() -> Godot.GodotTypedArray<Godot.GodotString> {
        Godot.GodotTypedArray<Godot.GodotString>()
    }

    open func _getRemotes() -> Godot.GodotTypedArray<Godot.GodotString> {
        Godot.GodotTypedArray<Godot.GodotString>()
    }

    open func _createBranch(branchName: Godot.GodotString) {
    }

    open func _removeBranch(branchName: Godot.GodotString) {
    }

    open func _createRemote(remoteName: Godot.GodotString, remoteUrl: Godot.GodotString) {
    }

    open func _removeRemote(remoteName: Godot.GodotString) {
    }

    open func _getCurrentBranchName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _checkoutBranch(branchName: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _pull(remote: Godot.GodotString) {
    }

    open func _push(remote: Godot.GodotString, force: Bool) {
    }

    open func _fetch(remote: Godot.GodotString) {
    }

    open func _getLineDiff(filePath: Godot.GodotString, text: Godot.GodotString) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    private static var __method_binding_create_diff_line: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_diff_line").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2901184053)!
        }
        }
    }()
    public func createDiffLine(newLineNo: Int32, oldLineNo: Int32, content: Godot.GodotString, status: Godot.GodotString) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        withUnsafePointer(to: newLineNo) { (__ptr_newLineNo) in
            withUnsafePointer(to: oldLineNo) { (__ptr_oldLineNo) in
                content.withUnsafeRawPointer { (__ptr_content) in
                    status.withUnsafeRawPointer { (__ptr_status) in
                        withUnsafeArgumentPackPointer(__ptr_newLineNo, __ptr_oldLineNo, __ptr_content, __ptr_status) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_diff_line,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_create_diff_hunk: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_diff_hunk").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3784842090)!
        }
        }
    }()
    public func createDiffHunk(oldStart: Int32, newStart: Int32, oldLines: Int32, newLines: Int32) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        withUnsafePointer(to: oldStart) { (__ptr_oldStart) in
            withUnsafePointer(to: newStart) { (__ptr_newStart) in
                withUnsafePointer(to: oldLines) { (__ptr_oldLines) in
                    withUnsafePointer(to: newLines) { (__ptr_newLines) in
                        withUnsafeArgumentPackPointer(__ptr_oldStart, __ptr_newStart, __ptr_oldLines, __ptr_newLines) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_diff_hunk,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_create_diff_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_diff_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2723227684)!
        }
        }
    }()
    public func createDiffFile(newFile: Godot.GodotString, oldFile: Godot.GodotString) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        newFile.withUnsafeRawPointer { (__ptr_newFile) in
            oldFile.withUnsafeRawPointer { (__ptr_oldFile) in
                withUnsafeArgumentPackPointer(__ptr_newFile, __ptr_oldFile) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_create_diff_file,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_create_commit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_commit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1075983584)!
        }
        }
    }()
    public func createCommit(msg: Godot.GodotString, author: Godot.GodotString, id: Godot.GodotString, unixTimestamp: Int64, offsetMinutes: Int64) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        msg.withUnsafeRawPointer { (__ptr_msg) in
            author.withUnsafeRawPointer { (__ptr_author) in
                id.withUnsafeRawPointer { (__ptr_id) in
                    withUnsafePointer(to: unixTimestamp) { (__ptr_unixTimestamp) in
                        withUnsafePointer(to: offsetMinutes) { (__ptr_offsetMinutes) in
                            withUnsafeArgumentPackPointer(__ptr_msg, __ptr_author, __ptr_id, __ptr_unixTimestamp, __ptr_offsetMinutes) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_create_commit,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_create_status_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_status_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1083471673)!
        }
        }
    }()
    public func createStatusFile(filePath: Godot.GodotString, changeType: Godot.EditorVCSInterface.ChangeType, area: Godot.EditorVCSInterface.TreeArea) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        filePath.withUnsafeRawPointer { (__ptr_filePath) in
            withUnsafePointer(to: changeType) { (__ptr_changeType) in
                withUnsafePointer(to: area) { (__ptr_area) in
                    withUnsafeArgumentPackPointer(__ptr_filePath, __ptr_changeType, __ptr_area) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_create_status_file,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_add_diff_hunks_into_diff_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_diff_hunks_into_diff_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4015243225)!
        }
        }
    }()
    public func addDiffHunksIntoDiffFile(_ diffFile: Godot.GodotDictionary, diffHunks: Godot.GodotTypedArray<Godot.GodotDictionary>) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        diffFile.withUnsafeRawPointer { (__ptr_diffFile) in
            diffHunks.withUnsafeRawPointer { (__ptr_diffHunks) in
                withUnsafeArgumentPackPointer(__ptr_diffFile, __ptr_diffHunks) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_diff_hunks_into_diff_file,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_add_line_diffs_into_diff_hunk: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_line_diffs_into_diff_hunk").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4015243225)!
        }
        }
    }()
    public func addLineDiffsIntoDiffHunk(_ diffHunk: Godot.GodotDictionary, lineDiffs: Godot.GodotTypedArray<Godot.GodotDictionary>) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        diffHunk.withUnsafeRawPointer { (__ptr_diffHunk) in
            lineDiffs.withUnsafeRawPointer { (__ptr_lineDiffs) in
                withUnsafeArgumentPackPointer(__ptr_diffHunk, __ptr_lineDiffs) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_line_diffs_into_diff_hunk,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_popup_error: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "popup_error").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func popupError(msg: Godot.GodotString) {
        msg.withUnsafeRawPointer { (__ptr_msg) in
            withUnsafeArgumentPackPointer(__ptr_msg) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_popup_error,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _initialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._initialize(
            projectPath: Godot.GodotString(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _set_credentials_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setCredentials(
            username: Godot.GodotString(godotExtensionPointer: args[0]!),
            password: Godot.GodotString(godotExtensionPointer: args[1]!),
            sshPublicKeyPath: Godot.GodotString(godotExtensionPointer: args[2]!),
            sshPrivateKeyPath: Godot.GodotString(godotExtensionPointer: args[3]!),
            sshPassphrase: Godot.GodotString(godotExtensionPointer: args[4]!)
        )}
        let _get_modified_files_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getModifiedFilesData()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _stage_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._stageFile(
            filePath: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _unstage_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._unstageFile(
            filePath: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _discard_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._discardFile(
            filePath: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _commit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._commit(
            msg: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _get_diff_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getDiff(
            identifier: Godot.GodotString(godotExtensionPointer: args[0]!),
            area: args[1]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _shut_down_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shutDown()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_vcs_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getVcsName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_previous_commits_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getPreviousCommits(
            maxCommits: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_branch_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getBranchList()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_remotes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getRemotes()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _create_branch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._createBranch(
            branchName: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _remove_branch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._removeBranch(
            branchName: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _create_remote_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._createRemote(
            remoteName: Godot.GodotString(godotExtensionPointer: args[0]!),
            remoteUrl: Godot.GodotString(godotExtensionPointer: args[1]!)
        )}
        let _remove_remote_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._removeRemote(
            remoteName: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _get_current_branch_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getCurrentBranchName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _checkout_branch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._checkoutBranch(
            branchName: Godot.GodotString(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _pull_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._pull(
            remote: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _push_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._push(
            remote: Godot.GodotString(godotExtensionPointer: args[0]!),
            force: args[1]!.load(as: Bool.self)
        )}
        let _fetch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._fetch(
            remote: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _get_line_diff_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorVCSInterface> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getLineDiff(
            filePath: Godot.GodotString(godotExtensionPointer: args[0]!),
            text: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_initialize" : ("_initialize", _initialize_call),
            "_setCredentials" : ("_set_credentials", _set_credentials_call),
            "_getModifiedFilesData" : ("_get_modified_files_data", _get_modified_files_data_call),
            "_stageFile" : ("_stage_file", _stage_file_call),
            "_unstageFile" : ("_unstage_file", _unstage_file_call),
            "_discardFile" : ("_discard_file", _discard_file_call),
            "_commit" : ("_commit", _commit_call),
            "_getDiff" : ("_get_diff", _get_diff_call),
            "_shutDown" : ("_shut_down", _shut_down_call),
            "_getVcsName" : ("_get_vcs_name", _get_vcs_name_call),
            "_getPreviousCommits" : ("_get_previous_commits", _get_previous_commits_call),
            "_getBranchList" : ("_get_branch_list", _get_branch_list_call),
            "_getRemotes" : ("_get_remotes", _get_remotes_call),
            "_createBranch" : ("_create_branch", _create_branch_call),
            "_removeBranch" : ("_remove_branch", _remove_branch_call),
            "_createRemote" : ("_create_remote", _create_remote_call),
            "_removeRemote" : ("_remove_remote", _remove_remote_call),
            "_getCurrentBranchName" : ("_get_current_branch_name", _get_current_branch_name_call),
            "_checkoutBranch" : ("_checkout_branch", _checkout_branch_call),
            "_pull" : ("_pull", _pull_call),
            "_push" : ("_push", _push_call),
            "_fetch" : ("_fetch", _fetch_call),
            "_getLineDiff" : ("_get_line_diff", _get_line_diff_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }