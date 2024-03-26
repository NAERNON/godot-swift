//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class OpenXRAction: Resource {
    public enum ActionType: UInt32, GodotEnum {
        case bool = 0
        case float = 1
        case vector2 = 2
        case pose = 3

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bool", 0),
            ("Float", 1),
            ("Vector2", 2),
            ("Pose", 3),]
        }
    }

    internal static var __method_binding_set_localized_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_localized_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setLocalizedName(
        _ localizedName: Godot.GodotString
    ) {
        localizedName.withGodotUnsafeRawPointer { __ptr_localizedName in
        withUnsafeArgumentPackPointer(__ptr_localizedName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_localized_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_localized_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_localized_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getLocalizedName() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_localized_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_action_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_action_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1675238366)!
        }
        }
    }()

    private func __setActionType(
        _ actionType: Godot.OpenXRAction.ActionType
    ) {
        actionType.withGodotUnsafeRawPointer { __ptr_actionType in
        withUnsafeArgumentPackPointer(__ptr_actionType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_action_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_action_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3536542431)!
        }
        }
    }()

    private func __getActionType() -> Godot.OpenXRAction.ActionType {
        Godot.OpenXRAction.ActionType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_toplevel_paths: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_toplevel_paths").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4015028928)!
        }
        }
    }()

    private func __setToplevelPaths(
        _ toplevelPaths: Godot.PackedStringArray
    ) {
        toplevelPaths.withGodotUnsafeRawPointer { __ptr_toplevelPaths in
        withUnsafeArgumentPackPointer(__ptr_toplevelPaths) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_toplevel_paths,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_toplevel_paths: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_toplevel_paths").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()

    private func __getToplevelPaths() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_toplevel_paths,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var localizedName: Godot.GodotString {
        get {
            __getLocalizedName()
        }
        set {
            __setLocalizedName(
                newValue
            )
        }
    }

    public var actionType: Godot.OpenXRAction.ActionType {
        get {
            __getActionType()
        }
        set {
            __setActionType(
                newValue
            )
        }
    }

    public var toplevelPaths: Godot.PackedStringArray {
        get {
            __getToplevelPaths()
        }
        set {
            __setToplevelPaths(
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