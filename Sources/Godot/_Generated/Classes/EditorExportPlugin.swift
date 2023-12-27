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

    open func _getExportOptions(platform: Godot.EditorExportPlatform?) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    open func _shouldUpdateExportOptions(platform: Godot.EditorExportPlatform?) -> Bool {
        Bool()
    }

    open func _getExportOptionWarning(platform: Godot.EditorExportPlatform?, option: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getExportFeatures(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _supportsPlatform(_ platform: Godot.EditorExportPlatform?) -> Bool {
        Bool()
    }

    open func _getAndroidDependencies(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getAndroidDependenciesMavenRepos(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getAndroidLibraries(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getAndroidManifestActivityElementContents(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getAndroidManifestApplicationElementContents(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getAndroidManifestElementContents(platform: Godot.EditorExportPlatform?, debug: Bool) -> Godot.GodotString {
        Godot.GodotString()
    }

    private static var __method_binding_add_shared_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_shared_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3098291045)!
        }
        }
    }()
    public func addSharedObject(path: Godot.GodotString, tags: Godot.PackedStringArray, target: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        tags.withGodotUnsafeRawPointer { __ptr_tags in
        target.withGodotUnsafeRawPointer { __ptr_target in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_tags, __ptr_target) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_shared_object,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_ios_project_static_lib: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_project_static_lib").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosProjectStaticLib(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_project_static_lib,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 527928637)!
        }
        }
    }()
    public func addFile(path: Godot.GodotString, file: Godot.PackedByteArray, remap: Bool) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        file.withGodotUnsafeRawPointer { __ptr_file in
        remap.withGodotUnsafeRawPointer { __ptr_remap in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_file, __ptr_remap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_file,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_add_ios_framework: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_framework").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosFramework(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_framework,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_ios_embedded_framework: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_embedded_framework").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosEmbeddedFramework(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_embedded_framework,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_ios_plist_content: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_plist_content").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosPlistContent(_ plistContent: Godot.GodotString) {
        plistContent.withGodotUnsafeRawPointer { __ptr_plistContent in
        withUnsafeArgumentPackPointer(__ptr_plistContent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_plist_content,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_ios_linker_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_linker_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosLinkerFlags(_ flags: Godot.GodotString) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_linker_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_ios_bundle_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_bundle_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosBundleFile(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_bundle_file,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_ios_cpp_code: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_ios_cpp_code").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addIosCppCode(_ code: Godot.GodotString) {
        code.withGodotUnsafeRawPointer { __ptr_code in
        withUnsafeArgumentPackPointer(__ptr_code) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_ios_cpp_code,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_macos_plugin_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_macos_plugin_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func addMacosPluginFile(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_macos_plugin_file,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_skip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skip").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func skip() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_skip,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_option: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_option").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func option(name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_option,
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
        let _export_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportFile(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            type: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            features: Godot.PackedStringArray.fromGodotUnsafePointer(args[2]!)
        )}
        let _export_begin_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportBegin(
            features: Godot.PackedStringArray.fromGodotUnsafePointer(args[0]!),
            isDebug: Bool.fromGodotUnsafePointer(args[1]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[2]!),
            flags: UInt32.fromGodotUnsafePointer(args[3]!)
        )}
        let _export_end_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportEnd()}
        let _begin_customize_resources_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._beginCustomizeResources(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            features: Godot.PackedStringArray.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _customize_resource_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._customizeResource(
            Godot.Resource?.fromGodotUnsafePointer(args[0]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _begin_customize_scenes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._beginCustomizeScenes(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            features: Godot.PackedStringArray.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _customize_scene_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._customizeScene(
            Godot.Node?.fromGodotUnsafePointer(args[0]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_customization_configuration_hash_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getCustomizationConfigurationHash()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _end_customize_scenes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._endCustomizeScenes()}
        let _end_customize_resources_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._endCustomizeResources()}
        let _get_export_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getExportOptions(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _should_update_export_options_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shouldUpdateExportOptions(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_export_option_warning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getExportOptionWarning(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            option: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_export_features_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getExportFeatures(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _supports_platform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._supportsPlatform(
            Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_dependencies_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidDependencies(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_dependencies_maven_repos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidDependenciesMavenRepos(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_libraries_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidLibraries(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_manifest_activity_element_contents_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidManifestActivityElementContents(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_manifest_application_element_contents_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidManifestApplicationElementContents(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_android_manifest_element_contents_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorExportPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAndroidManifestElementContents(
            platform: Godot.EditorExportPlatform?.fromGodotUnsafePointer(args[0]!),
            debug: Bool.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
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
            "_getExportOptionWarning" : ("_get_export_option_warning", _get_export_option_warning_call),
            "_getExportFeatures" : ("_get_export_features", _get_export_features_call),
            "_getName" : ("_get_name", _get_name_call),
            "_supportsPlatform" : ("_supports_platform", _supports_platform_call),
            "_getAndroidDependencies" : ("_get_android_dependencies", _get_android_dependencies_call),
            "_getAndroidDependenciesMavenRepos" : ("_get_android_dependencies_maven_repos", _get_android_dependencies_maven_repos_call),
            "_getAndroidLibraries" : ("_get_android_libraries", _get_android_libraries_call),
            "_getAndroidManifestActivityElementContents" : ("_get_android_manifest_activity_element_contents", _get_android_manifest_activity_element_contents_call),
            "_getAndroidManifestApplicationElementContents" : ("_get_android_manifest_application_element_contents", _get_android_manifest_application_element_contents_call),
            "_getAndroidManifestElementContents" : ("_get_android_manifest_element_contents", _get_android_manifest_element_contents_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }