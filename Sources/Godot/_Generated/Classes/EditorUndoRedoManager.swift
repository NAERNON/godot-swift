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
            ("Global History", 0),]
        }
    }

    public func historyChanged() {
        historyChangedConnector.emit()
    }

    public private (set) lazy var historyChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "history_changed")
    }()


    public func versionChanged() {
        versionChangedConnector.emit()
    }

    public private (set) lazy var versionChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "version_changed")
    }()


    private static var __method_binding_create_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2107025470)!
        }
        }
    }()
    public func createAction(name: Godot.GodotString, mergeMode: Godot.UndoRedo.MergeMode = UndoRedo.MergeMode(rawValue: 0)!, customContext: Godot.Object? = nil, backwardUndoOps: Bool = false) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        mergeMode.withGodotUnsafeRawPointer { __ptr_mergeMode in
        customContext.withGodotUnsafeRawPointer { __ptr_customContext in
        withUnsafePointer(to: __ptr_customContext) { _ptr___ptr_customContext in
        backwardUndoOps.withGodotUnsafeRawPointer { __ptr_backwardUndoOps in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_mergeMode, _ptr___ptr_customContext, __ptr_backwardUndoOps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_action,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_commit_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "commit_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3216645846)!
        }
        }
    }()
    public func commitAction(execute: Bool = true) {
        execute.withGodotUnsafeRawPointer { __ptr_execute in
        withUnsafeArgumentPackPointer(__ptr_execute) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_commit_action,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_committing_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_committing_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isCommittingAction() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_committing_action,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_do_method: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_do_method").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1517810467)!
        }
        }
    }()
    public func addDoMethod<each VariantRest : VariantStorableIn>(object: Godot.Object?, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_add_do_method,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            nil,
            nil
        )}}}}
    }
    public func addDoMethod(object: Godot.Object?, method: Godot.GodotStringName) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_object, __ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_add_do_method,
            __ptr_self,
            __accessPtr,
            2,
            nil,
            nil
        )}}}}
    }

    private static var __method_binding_add_undo_method: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_undo_method").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1517810467)!
        }
        }
    }()
    public func addUndoMethod<each VariantRest : VariantStorableIn>(object: Godot.Object?, method: Godot.GodotStringName, _ rest: repeat each VariantRest) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_object, __ptr_method, varargs: repeat each rest) { packCount, __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_add_undo_method,
            __ptr_self,
            __accessPtr,
            Int64(packCount),
            nil,
            nil
        )}}}}
    }
    public func addUndoMethod(object: Godot.Object?, method: Godot.GodotStringName) {
        Godot.Variant.withStorageUnsafeRawPointer(to: object) { __ptr_object in
        Godot.Variant.withStorageUnsafeRawPointer(to: method) { __ptr_method in
        withUnsafeArgumentPackPointer(__ptr_object, __ptr_method) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindCall(
            Self.__method_binding_add_undo_method,
            __ptr_self,
            __accessPtr,
            2,
            nil,
            nil
        )}}}}
    }

    private static var __method_binding_add_do_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_do_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1017172818)!
        }
        }
    }()
    public func addDoProperty<Value: VariantStorableIn>(object: Godot.Object?, property: Godot.GodotStringName, value: Value) {
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_do_property,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_add_undo_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_undo_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1017172818)!
        }
        }
    }()
    public func addUndoProperty<Value: VariantStorableIn>(object: Godot.Object?, property: Godot.GodotStringName, value: Value) {
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_property, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_undo_property,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_add_do_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_do_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func addDoReference(object: Godot.Object?) {
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_do_reference,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_undo_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_undo_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3975164845)!
        }
        }
    }()
    public func addUndoReference(object: Godot.Object?) {
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_undo_reference,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_object_history_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_object_history_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1107568780)!
        }
        }
    }()
    public func objectHistoryId(object: Godot.Object?) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        object.withGodotUnsafeRawPointer { __ptr_object in
        withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
        withUnsafeArgumentPackPointer(_ptr___ptr_object) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_object_history_id,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_history_undo_redo: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_history_undo_redo").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2417974513)!
        }
        }
    }()
    public func historyUndoRedo(id: Int32) -> Godot.UndoRedo? {
        Godot.UndoRedo?.fromMutatingGodotUnsafePointer { __temporary in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_history_undo_redo,
            __ptr_self,
            __accessPtr,
            __temporary
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