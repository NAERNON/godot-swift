//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorExportPlugin: RefCounted {
    open func _exportFile(path: Godot.GodotString, type: Godot.GodotString, features: Godot.PackedStringArray) {
    }

    open func _exportBegin(features: Godot.PackedStringArray, isDebug: Bool, path: Godot.GodotString, flags: UInt32) {
    }

    open func _exportEnd() {
    }

    open func _beginCustomizeResources(platform: Godot.EditorExportPlatform?, features: Godot.PackedStringArray) -> Bool {
        Bool()
    }

    open func _customizeResource(_ resource: Godot.Resource?, path: Godot.GodotString) -> Godot.Resource? {
        nil
    }

    open func _beginCustomizeScenes(platform: Godot.EditorExportPlatform?, features: Godot.PackedStringArray) -> Bool {
        Bool()
    }

    open func _customizeScene(_ scene: Godot.Node?, path: Godot.GodotString) -> Godot.Node? {
        nil
    }

    open func _getCustomizationConfigurationHash() -> UInt64 {
        UInt64()
    }

    open func _endCustomizeScenes() {
    }

    open func _endCustomizeResources() {
    }

    open func _getExportOptions(platform: Godot.EditorExportPlatform?) -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _shouldUpdateExportOptions(platform: Godot.EditorExportPlatform?) -> Bool {
        Bool()
    }

    open func _getExportFeatures(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    private static var __method_binding_add_shared_object: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_shared_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3098291045)!
        }
        }
    }()
    public func addSharedObject(path: Godot.GodotString, tags: Godot.PackedStringArray, target: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            tags.withUnsafeRawPointer { (__ptr_tags) in
                target.withUnsafeRawPointer { (__ptr_target) in
                    withUnsafeArgumentPackPointer(__ptr_path, __ptr_tags, __ptr_target) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_shared_object,
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

    private static var __method_binding_add_ios_project_static_lib: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_project_static_lib").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosProjectStaticLib(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_project_static_lib,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 527928637)!
        }
        }
    }()
    public func addFile(path: Godot.GodotString, file: Godot.PackedByteArray, remap: Bool) {
        path.withUnsafeRawPointer { (__ptr_path) in
            file.withUnsafeRawPointer { (__ptr_file) in
                withUnsafePointer(to: remap) { (__ptr_remap) in
                    withUnsafeArgumentPackPointer(__ptr_path, __ptr_file, __ptr_remap) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_add_file,
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

    private static var __method_binding_add_ios_framework: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_framework").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosFramework(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_framework,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_ios_embedded_framework: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_embedded_framework").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosEmbeddedFramework(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_embedded_framework,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_ios_plist_content: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_plist_content").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosPlistContent(_ plistContent: Godot.GodotString) {
        plistContent.withUnsafeRawPointer { (__ptr_plistContent) in
            withUnsafeArgumentPackPointer(__ptr_plistContent) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_plist_content,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_ios_linker_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_linker_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosLinkerFlags(_ flags: Godot.GodotString) {
        flags.withUnsafeRawPointer { (__ptr_flags) in
            withUnsafeArgumentPackPointer(__ptr_flags) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_linker_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_ios_bundle_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_bundle_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosBundleFile(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_bundle_file,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_ios_cpp_code: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_ios_cpp_code").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosCppCode(_ code: Godot.GodotString) {
        code.withUnsafeRawPointer { (__ptr_code) in
            withUnsafeArgumentPackPointer(__ptr_code) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_ios_cpp_code,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_add_macos_plugin_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "add_macos_plugin_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addMacosPluginFile(path: Godot.GodotString) {
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafeArgumentPackPointer(__ptr_path) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_add_macos_plugin_file,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_skip: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "skip").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func skip() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_skip,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_option: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_option").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func option(name: Godot.GodotStringName) -> Godot.Variant {
        let __temporary = Godot.Variant()
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_option,
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

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _export_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._exportFile(
            path: Godot.GodotString(godotExtensionPointer: args[0]!),
            type: Godot.GodotString(godotExtensionPointer: args[1]!),
            features: Godot.PackedStringArray(godotExtensionPointer: args[2]!)
        )}
        let _export_begin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._exportBegin(
            features: Godot.PackedStringArray(godotExtensionPointer: args[0]!),
            isDebug: args[1]!.load(as: Bool.self),
            path: Godot.GodotString(godotExtensionPointer: args[2]!),
            flags: args[3]!.load(as: UInt32.self)
        )}
        let _export_end_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._exportEnd()}
        let _begin_customize_resources_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._beginCustomizeResources(
            platform: Godot.EditorExportPlatform.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            features: Godot.PackedStringArray(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _customize_resource_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._customizeResource(
            Godot.Resource.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            path: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _begin_customize_scenes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._beginCustomizeScenes(
            platform: Godot.EditorExportPlatform.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            features: Godot.PackedStringArray(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _customize_scene_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._customizeScene(
            Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            path: Godot.GodotString(godotExtensionPointer: args[1]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_customization_configuration_hash_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getCustomizationConfigurationHash()
        returnPtr!.assumingMemoryBound(to: UInt64.self).pointee = returnValue}
        let _end_customize_scenes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._endCustomizeScenes()}
        let _end_customize_resources_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._endCustomizeResources()}
        let _get_export_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getExportOptions(
            platform: Godot.EditorExportPlatform.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _should_update_export_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._shouldUpdateExportOptions(
            platform: Godot.EditorExportPlatform.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_export_features_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getExportFeatures(
            platform: Godot.EditorExportPlatform.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            debug: args[1]!.load(as: Bool.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<EditorExportPlugin> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_exportFile" : ("_export_file", _export_file_call),
            "_exportBegin" : ("_export_begin", _export_begin_call),
            "_exportEnd" : ("_export_end", _export_end_call),
            "_beginCustomizeResources" : ("_begin_customize_resources", _begin_customize_resources_call),
            "_customizeResource" : ("_customize_resource", _customize_resource_call),
            "_beginCustomizeScenes" : ("_begin_customize_scenes", _begin_customize_scenes_call),
            "_customizeScene" : ("_customize_scene", _customize_scene_call),
            "_getCustomizationConfigurationHash" : ("_get_customization_configuration_hash", _get_customization_configuration_hash_call),
            "_endCustomizeScenes" : ("_end_customize_scenes", _end_customize_scenes_call),
            "_endCustomizeResources" : ("_end_customize_resources", _end_customize_resources_call),
            "_getExportOptions" : ("_get_export_options", _get_export_options_call),
            "_shouldUpdateExportOptions" : ("_should_update_export_options", _should_update_export_options_call),
            "_getExportFeatures" : ("_get_export_features", _get_export_features_call),
            "_getName" : ("_get_name", _get_name_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }