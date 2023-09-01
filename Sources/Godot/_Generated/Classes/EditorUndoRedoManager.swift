//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorUndoRedoManager: Object {
    public enum SpecialHistory: Int32 {
        case globalHistory = 0
        case remoteHistory = -9
        case invalidHistory = -99
    }

    @Emitter(signal: "history_changed")
    public struct HistoryChanged {
    }

    @Emitter(signal: "version_changed")
    public struct VersionChanged {
    }

    private static var __method_binding_create_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3577985681)!
        }
        }
    }()
    public func createAction(name: Godot.GodotString, mergeMode: Godot.UndoRedo.MergeMode = UndoRedo.MergeMode(rawValue: 0)!, customContext: Godot.Object? = nil, backwardUndoOps: Bool = false) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: mergeMode) { (__ptr_mergeMode) in
                customContext.withUnsafeRawPointer { (__ptr_customContext) in
                    withUnsafePointer(to: __ptr_customContext) { (_ptr___ptr_customContext) in
                        withUnsafePointer(to: backwardUndoOps) { (__ptr_backwardUndoOps) in
                            withUnsafeArgumentPackPointer(__ptr_name, __ptr_mergeMode, _ptr___ptr_customContext, __ptr_backwardUndoOps) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_action,
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

    private static var __method_binding_commit_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "commit_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3216645846)!
        }
        }
    }()
    public func commitAction(execute: Bool = true) {
        withUnsafePointer(to: execute) { (__ptr_execute) in
            withUnsafeArgumentPackPointer(__ptr_execute) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_commit_action,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_committing_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_committing_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isCommittingAction() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_committing_action,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_do_method: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_do_method").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1517810467)!
        }
        }
    }()
    public func addDoMethod<each VariantRest : ConvertibleToVariant>(object: Godot.Object?, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        object.makeVariant().withUnsafeRawPointer { (__ptr_object) in
            method.makeVariant().withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { (packCount, __accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_add_do_method,
                            __ptr_self,
                            __accessPtr,
                            Int64(packCount),
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }
    public func addDoMethod(object: Godot.Object?, method: Godot.GodotStringName) {
        object.makeVariant().withUnsafeRawPointer { (__ptr_object) in
            method.makeVariant().withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_add_do_method,
                            __ptr_self,
                            __accessPtr,
                            2,
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_undo_method: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_undo_method").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1517810467)!
        }
        }
    }()
    public func addUndoMethod<each VariantRest : ConvertibleToVariant>(object: Godot.Object?, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        object.makeVariant().withUnsafeRawPointer { (__ptr_object) in
            method.makeVariant().withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { (packCount, __accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_add_undo_method,
                            __ptr_self,
                            __accessPtr,
                            Int64(packCount),
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }
    public func addUndoMethod(object: Godot.Object?, method: Godot.GodotStringName) {
        object.makeVariant().withUnsafeRawPointer { (__ptr_object) in
            method.makeVariant().withUnsafeRawPointer { (__ptr_method) in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_call(
                            Self.__method_binding_add_undo_method,
                            __ptr_self,
                            __accessPtr,
                            2,
                            nil,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_do_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_do_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1017172818)!
        }
        }
    }()
    public func addDoProperty<Variant1 : ConvertibleToVariant>(object: Godot.Object?, property: Godot.GodotStringName, value: Variant1) {
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_do_property,
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

    private static var __method_binding_add_undo_property: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_undo_property").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1017172818)!
        }
        }
    }()
    public func addUndoProperty<Variant1 : ConvertibleToVariant>(object: Godot.Object?, property: Godot.GodotStringName, value: Variant1) {
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                property.withUnsafeRawPointer { (__ptr_property) in
                    value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_undo_property,
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

    private static var __method_binding_add_do_reference: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_do_reference").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func addDoReference(object: Godot.Object?) {
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                withUnsafeArgumentPackPointer(_ptr___ptr_object) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_do_reference,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_add_undo_reference: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_undo_reference").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func addUndoReference(object: Godot.Object?) {
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                withUnsafeArgumentPackPointer(_ptr___ptr_object) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_undo_reference,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_object_history_id: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_object_history_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1107568780)!
        }
        }
    }()
    public func objectHistoryId(object: Godot.Object?) -> Int32 {
        var __temporary = Int32()
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                withUnsafeArgumentPackPointer(_ptr___ptr_object) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_object_history_id,
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

    private static var __method_binding_get_history_undo_redo: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_history_undo_redo").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2417974513)!
        }
        }
    }()
    public func historyUndoRedo(id: Int32) -> Godot.UndoRedo? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: id) { (__ptr_id) in
            withUnsafeArgumentPackPointer(__ptr_id) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_history_undo_redo,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.UndoRedo.retreivedInstanceManagedByGodot(__temporary)
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