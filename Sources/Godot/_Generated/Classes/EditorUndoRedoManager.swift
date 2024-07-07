//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class EditorUndoRedoManager: Object {
    public enum SpecialHistory: Int32, GodotEnum {
        case globalHistory = 0
        case remoteHistory = -9
        case invalidHistory = -99
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Invalid History", -99),
               ("Remote History", -9),
               ("Global History", 0),
            ]
        }
    }
    
    
    public func historyChanged() {
        _ = historyChangedSignal.emit()
    }
    public lazy var historyChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "history_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func versionChanged() {
        _ = versionChangedSignal.emit()
    }
    public lazy var versionChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "version_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    internal static var __method_binding_create_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "create_action").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2107025470)!
            }
        }
    }()
    
    public func createAction(
        name: Godot.GodotString,
        mergeMode: Godot.UndoRedo.MergeMode = UndoRedo.MergeMode(rawValue: 0)!,
        customContext: Godot.Object? = nil,
        backwardUndoOps: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            withTransferrableUnsafeRawPointer(to: mergeMode) { __ptr_mergeMode in
                withTransferrableUnsafeRawPointer(to: customContext) { __ptr_customContext in
                    withUnsafePointer(to: __ptr_customContext) { _ptr___ptr_customContext in
                        withTransferrableUnsafeRawPointer(to: backwardUndoOps) { __ptr_backwardUndoOps in
                            withUnsafeArgumentPackPointer(__ptr_name, __ptr_mergeMode, _ptr___ptr_customContext, __ptr_backwardUndoOps) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_commit_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "commit_action").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3216645846)!
            }
        }
    }()
    
    public func commitAction(
        execute: Bool = true
    ) {
        withTransferrableUnsafeRawPointer(to: execute) { __ptr_execute in
            withUnsafeArgumentPackPointer(__ptr_execute) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_commit_action,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_committing_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_committing_action").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func isCommittingAction() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_committing_action,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_add_do_method: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_do_method").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1517810467)!
            }
        }
    }()
    
    public func addDoMethod<each VariantRest: Variant.Storable>(
        object: Godot.Object?,
        method: Godot.GodotStringName,
        _ rest: repeat each VariantRest
    ) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
            Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindCall(
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
    
    internal static var __method_binding_add_undo_method: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_undo_method").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1517810467)!
            }
        }
    }()
    
    public func addUndoMethod<each VariantRest: Variant.Storable>(
        object: Godot.Object?,
        method: Godot.GodotStringName,
        _ rest: repeat each VariantRest
    ) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
            Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
                withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindCall(
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
    
    internal static var __method_binding_add_do_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_do_property").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1017172818)!
            }
        }
    }()
    
    public func addDoProperty<Value: Variant.Storable>(
        object: Godot.Object?,
        property: Godot.GodotStringName,
        value: Value
    ) {
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withTransferrableUnsafeRawPointer(to: property) { __ptr_property in
                    Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_add_undo_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_undo_property").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1017172818)!
            }
        }
    }()
    
    public func addUndoProperty<Value: Variant.Storable>(
        object: Godot.Object?,
        property: Godot.GodotStringName,
        value: Value
    ) {
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withTransferrableUnsafeRawPointer(to: property) { __ptr_property in
                    Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_add_do_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_do_reference").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3975164845)!
            }
        }
    }()
    
    public func addDoReference(
        object: Godot.Object?
    ) {
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_add_undo_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "add_undo_reference").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3975164845)!
            }
        }
    }()
    
    public func addUndoReference(
        object: Godot.Object?
    ) {
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
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
    
    internal static var __method_binding_get_object_history_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_object_history_id").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1107568780)!
            }
        }
    }()
    
    public func objectHistoryID(
        object: Godot.Object?
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
                withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_object_history_id,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_history_undo_redo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_history_undo_redo").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2417974513)!
            }
        }
    }()
    
    public func historyUndoRedo(
        id: Int32
    ) -> Godot.UndoRedo? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: id) { __ptr_id in
                withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_history_undo_redo,
                            __ptr_self,
                            __accessPtr,
                            __temporary
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
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}