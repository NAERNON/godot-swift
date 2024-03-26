//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class EditorFeatureProfile: RefCounted {
    public enum Feature: UInt32, GodotEnum {
        case feature3D = 0
        case script = 1
        case assetLib = 2
        case sceneTree = 3
        case nodeDock = 4
        case filesystemDock = 5
        case importDock = 6
        case historyDock = 7
        case max = 8

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Feature3D", 0),
            ("Script", 1),
            ("Asset Lib", 2),
            ("Scene Tree", 3),
            ("Node Dock", 4),
            ("Filesystem Dock", 5),
            ("Import Dock", 6),
            ("History Dock", 7),
            ("Max", 8),]
        }
    }

    internal static var __method_binding_set_disable_class: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_class").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2524380260)!
        }
        }
    }()

    public func setDisableClass(
        className: Godot.GodotStringName,
        disable: Bool
    ) {
        className.withGodotUnsafeRawPointer { __ptr_className in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_className, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_class,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_class_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_class_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func isClassDisabled(
        className: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        className.withGodotUnsafeRawPointer { __ptr_className in
        withUnsafeArgumentPackPointer(__ptr_className) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_class_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_disable_class_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_class_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2524380260)!
        }
        }
    }()

    public func setDisableClassEditor(
        className: Godot.GodotStringName,
        disable: Bool
    ) {
        className.withGodotUnsafeRawPointer { __ptr_className in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_className, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_class_editor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_class_editor_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_class_editor_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func isClassEditorDisabled(
        className: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        className.withGodotUnsafeRawPointer { __ptr_className in
        withUnsafeArgumentPackPointer(__ptr_className) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_class_editor_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_disable_class_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_class_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 865197084)!
        }
        }
    }()

    public func setDisableClassProperty(
        className: Godot.GodotStringName,
        property: Godot.GodotStringName,
        disable: Bool
    ) {
        className.withGodotUnsafeRawPointer { __ptr_className in
        property.withGodotUnsafeRawPointer { __ptr_property in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_className, __ptr_property, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_class_property,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_is_class_property_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_class_property_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()

    public func isClassPropertyDisabled(
        className: Godot.GodotStringName,
        property: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        className.withGodotUnsafeRawPointer { __ptr_className in
        property.withGodotUnsafeRawPointer { __ptr_property in
        withUnsafeArgumentPackPointer(__ptr_className, __ptr_property) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_class_property_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_disable_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1884871044)!
        }
        }
    }()

    public func setDisableFeature(
        _ feature: Godot.EditorFeatureProfile.Feature,
        disable: Bool
    ) {
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_feature, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_feature,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_is_feature_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_feature_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2974403161)!
        }
        }
    }()

    public func isFeatureDisabled(
        feature: Godot.EditorFeatureProfile.Feature
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_feature_disabled,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_feature_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feature_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3401335809)!
        }
        }
    }()

    public func featureName(
        feature: Godot.EditorFeatureProfile.Feature
    ) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_feature_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_save_to_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_to_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()

    public func saveToFile(
        path: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_to_file,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_from_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()

    public func loadFromFile(
        path: Godot.GodotString
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_from_file,
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