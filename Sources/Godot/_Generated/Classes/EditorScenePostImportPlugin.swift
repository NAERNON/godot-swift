//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorScenePostImportPlugin: RefCounted {
    public enum InternalImportCategory: UInt32, GodotEnum {
        case node = 0
        case mesh3DNode = 1
        case mesh = 2
        case material = 3
        case animation = 4
        case animationNode = 5
        case skeleton3DNode = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Node", 0),
            ("Mesh3 D Node", 1),
            ("Mesh", 2),
            ("Material", 3),
            ("Animation", 4),
            ("Animation Node", 5),
            ("Skeleton3 D Node", 6),
            ("Max", 7),]
        }
    }

    open func _getInternalImportOptions(category: Int32) {
    }

    open func _getInternalOptionVisibility(category: Int32, forAnimation animation: Bool, option: Godot.GodotString) -> Godot.Variant {
        Variant()
    }

    open func _getInternalOptionUpdateViewRequired(category: Int32, option: Godot.GodotString) -> Godot.Variant {
        Variant()
    }

    open func _internalProcess(category: Int32, baseNode: Godot.Node?, node: Godot.Node?, resource: Godot.Resource?) {
    }

    open func _getImportOptions(path: Godot.GodotString) {
    }

    open func _getOptionVisibility(path: Godot.GodotString, forAnimation animation: Bool, option: Godot.GodotString) -> Godot.Variant {
        Variant()
    }

    open func _preProcess(scene: Godot.Node?) {
    }

    open func _postProcess(scene: Godot.Node?) {
    }

    private static var __method_binding_get_option_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_option_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func optionValue(name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_option_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_import_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_import_option").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 402577236)!
        }
        }
    }()
    public func addImportOption<Value: VariantStorableIn>(name: Godot.GodotString, value: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_import_option,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_add_import_option_advanced: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_import_option_advanced").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3774155785)!
        }
        }
    }()
    public func addImportOptionAdvanced<Value: VariantStorableIn>(type: Godot.Variant.StorageType, name: Godot.GodotString, defaultValue: Value, hint: Godot.PropertyHint = PropertyHint(rawValue: 0)!, hintString: Godot.GodotString = "", usageFlags: Int32 = 6) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: defaultValue) { __ptr_defaultValue in
        hint.withGodotUnsafeRawPointer { __ptr_hint in
        hintString.withGodotUnsafeRawPointer { __ptr_hintString in
        usageFlags.withGodotUnsafeRawPointer { __ptr_usageFlags in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_name, __ptr_defaultValue, __ptr_hint, __ptr_hintString, __ptr_usageFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_import_option_advanced,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_internal_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInternalImportOptions(
            category: Int32.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_internal_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInternalOptionVisibility(
            category: Int32.fromGodotUnsafePointer(args[0]!),
            forAnimation: Bool.fromGodotUnsafePointer(args[1]!),
            option: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_internal_option_update_view_required_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInternalOptionUpdateViewRequired(
            category: Int32.fromGodotUnsafePointer(args[0]!),
            option: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _internal_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._internalProcess(
            category: Int32.fromGodotUnsafePointer(args[0]!),
            baseNode: Godot.Node?.fromGodotUnsafePointer(args[1]!),
            node: Godot.Node?.fromGodotUnsafePointer(args[2]!),
            resource: Godot.Resource?.fromGodotUnsafePointer(args[3]!)
        )}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportOptions(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOptionVisibility(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            forAnimation: Bool.fromGodotUnsafePointer(args[1]!),
            option: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _pre_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._preProcess(
            scene: Godot.Node?.fromGodotUnsafePointer(args[0]!)
        )}
        let _post_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._postProcess(
            scene: Godot.Node?.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_getInternalImportOptions" : ("_get_internal_import_options", _get_internal_import_options_call),
            "_getInternalOptionVisibility" : ("_get_internal_option_visibility", _get_internal_option_visibility_call),
            "_getInternalOptionUpdateViewRequired" : ("_get_internal_option_update_view_required", _get_internal_option_update_view_required_call),
            "_internalProcess" : ("_internal_process", _internal_process_call),
            "_getImportOptions" : ("_get_import_options", _get_import_options_call),
            "_getOptionVisibility" : ("_get_option_visibility", _get_option_visibility_call),
            "_preProcess" : ("_pre_process", _pre_process_call),
            "_postProcess" : ("_post_process", _post_process_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }