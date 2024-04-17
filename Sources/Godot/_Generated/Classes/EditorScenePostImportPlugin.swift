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
            ("Mesh3D Node", 1),
            ("Mesh", 2),
            ("Material", 3),
            ("Animation", 4),
            ("Animation Node", 5),
            ("Skeleton3D Node", 6),
            ("Max", 7),]
        }
    }

    open func _getInternalImportOptions(
        category: Int32
    ) {
    }

    open func _getInternalOptionVisibility(
        category: Int32,
        forAnimation animation: Bool,
        option: Godot.GodotString
    ) -> Godot.Variant {
        Variant()
    }

    open func _getInternalOptionUpdateViewRequired(
        category: Int32,
        option: Godot.GodotString
    ) -> Godot.Variant {
        Variant()
    }

    open func _internalProcess(
        category: Int32,
        baseNode: Godot.Node?,
        node: Godot.Node?,
        resource: Godot.Resource?
    ) {
    }

    open func _getImportOptions(
        path: Godot.GodotString
    ) {
    }

    open func _getOptionVisibility(
        path: Godot.GodotString,
        forAnimation animation: Bool,
        option: Godot.GodotString
    ) -> Godot.Variant {
        Variant()
    }

    open func _preProcess(
        scene: Godot.Node?
    ) {
    }

    open func _postProcess(
        scene: Godot.Node?
    ) {
    }

    internal static var __method_binding_get_option_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_option_value").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()

    public func optionValue(
        name: Godot.GodotStringName
    ) -> Godot.Variant {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_option_value,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_add_import_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_import_option").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 402577236)!
        }
        }
    }()

    public func addImportOption<Value: Variant.Storable>(
        name: Godot.GodotString,
        value: Value
    ) {
        withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
            Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_import_option,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_add_import_option_advanced: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_import_option_advanced").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3674075649)!
        }
        }
    }()

    public func addImportOptionAdvanced<Value: Variant.Storable>(
        type: Godot.Variant.StorageType,
        name: Godot.GodotString,
        defaultValue: Value,
        hint: Godot.PropertyHint = PropertyHint(rawValue: 0)!,
        hintString: Godot.GodotString = "",
        usageFlags: Int32 = 6
    ) {
        withTransferrableUnsafeRawPointer(to: type) { __ptr_type in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                Godot.Variant.withStorageUnsafeRawPointer(to: defaultValue) { __ptr_defaultValue in
                    withTransferrableUnsafeRawPointer(to: hint) { __ptr_hint in
                        withTransferrableUnsafeRawPointer(to: hintString) { __ptr_hintString in
                            withTransferrableUnsafeRawPointer(to: usageFlags) { __ptr_usageFlags in
                                withUnsafeArgumentPackPointer(__ptr_type, __ptr_name, __ptr_defaultValue, __ptr_hint, __ptr_hintString, __ptr_usageFlags) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_add_import_option_advanced,
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
            category: Int32.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _get_internal_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInternalOptionVisibility(
            category: Int32.transferFromGodot(unsafePointer: args[0]!),
            forAnimation: Bool.transferFromGodot(unsafePointer: args[1]!),
            option: Godot.GodotString.transferFromGodot(unsafePointer: args[2]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _get_internal_option_update_view_required_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInternalOptionUpdateViewRequired(
            category: Int32.transferFromGodot(unsafePointer: args[0]!),
            option: Godot.GodotString.transferFromGodot(unsafePointer: args[1]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _internal_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._internalProcess(
            category: Int32.transferFromGodot(unsafePointer: args[0]!),
            baseNode: Godot.Node?.transferFromGodot(unsafePointer: args[1]!),
            node: Godot.Node?.transferFromGodot(unsafePointer: args[2]!),
            resource: Godot.Resource?.transferFromGodot(unsafePointer: args[3]!)
        )}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getImportOptions(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOptionVisibility(
            path: Godot.GodotString.transferFromGodot(unsafePointer: args[0]!),
            forAnimation: Bool.transferFromGodot(unsafePointer: args[1]!),
            option: Godot.GodotString.transferFromGodot(unsafePointer: args[2]!)
        )
        .transferToGodot(unsafePointer: returnPtr!)}
        let _pre_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._preProcess(
            scene: Godot.Node?.transferFromGodot(unsafePointer: args[0]!)
        )}
        let _post_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
        ._postProcess(
            scene: Godot.Node?.transferFromGodot(unsafePointer: args[0]!)
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