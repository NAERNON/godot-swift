//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorScenePostImportPlugin: RefCounted {
    public enum InternalImportCategory: UInt32 {
        case node = 0
        case mesh3DNode = 1
        case mesh = 2
        case material = 3
        case animation = 4
        case animationNode = 5
        case skeleton3DNode = 6
        case max = 7
    }

    open func _getInternalImportOptions(category: Int32) {
    }

    open func _getInternalOptionVisibility(category: Int32, forAnimation animation: Bool, option: Godot.GodotString) -> Godot.Variant {
        nil
    }

    open func _getInternalOptionUpdateViewRequired(category: Int32, option: Godot.GodotString) -> Godot.Variant {
        nil
    }

    open func _internalProcess(category: Int32, baseNode: Godot.Node?, node: Godot.Node?, resource: Godot.Resource?) {
    }

    open func _getImportOptions(path: Godot.GodotString) {
    }

    open func _getOptionVisibility(path: Godot.GodotString, forAnimation animation: Bool, option: Godot.GodotString) -> Godot.Variant {
        nil
    }

    open func _preProcess(scene: Godot.Node?) {
    }

    open func _postProcess(scene: Godot.Node?) {
    }

    private static var __method_binding_get_option_value: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_option_value").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func optionValue(name: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_option_value,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_add_import_option: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_import_option").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 402577236)!
        }
        }
    }()
    public func addImportOption<Variant1 : ConvertibleToVariant>(name: Godot.GodotString, value: Variant1) {
        name.withUnsafeRawPointer { (__ptr_name) in
            value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_add_import_option_advanced: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_import_option_advanced").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3774155785)!
        }
        }
    }()
    public func addImportOptionAdvanced<Variant1 : ConvertibleToVariant>(type: Godot.Variant.GodotType, name: Godot.GodotString, defaultValue: Variant1, hint: Godot.PropertyHint = PropertyHint(rawValue: 0)!, hintString: Godot.GodotString = "", usageFlags: Int32 = 6) {
        withUnsafePointer(to: type) { (__ptr_type) in
            name.withUnsafeRawPointer { (__ptr_name) in
                defaultValue.makeVariant().withUnsafeRawPointer { (__ptr_defaultValue) in
                    withUnsafePointer(to: hint) { (__ptr_hint) in
                        hintString.withUnsafeRawPointer { (__ptr_hintString) in
                            withUnsafePointer(to: usageFlags) { (__ptr_usageFlags) in
                                withUnsafeArgumentPackPointer(__ptr_type, __ptr_name, __ptr_defaultValue, __ptr_hint, __ptr_hintString, __ptr_usageFlags) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
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
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._getInternalImportOptions(
            category: args[0]!.load(as: Int32.self)
        )}
        let _get_internal_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInternalOptionVisibility(
            category: args[0]!.load(as: Int32.self),
            forAnimation: args[1]!.load(as: Bool.self),
            option: Godot.GodotString(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_internal_option_update_view_required_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInternalOptionUpdateViewRequired(
            category: args[0]!.load(as: Int32.self),
            option: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _internal_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._internalProcess(
            category: args[0]!.load(as: Int32.self),
            baseNode: Godot.Node.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            node: Godot.Node.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!)),
            resource: Godot.Resource.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[3]!))
        )}
        let _get_import_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._getImportOptions(
            path: Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _get_option_visibility_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getOptionVisibility(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            forAnimation: args[1]!.load(as: Bool.self),
            option: Godot.GodotString(godotExtensionPointer: args[2]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _pre_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._preProcess(
            scene: Godot.Node.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )}
        let _post_process_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorScenePostImportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._postProcess(
            scene: Godot.Node.retrievedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
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