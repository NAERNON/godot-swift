//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFDocumentExtension: Resource {
    open func _importPreflight(state: Godot.GLTFState?, extensions: Godot.PackedStringArray) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getSupportedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _parseNodeExtensions(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, extensions: Godot.AnyGodotDictionary) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _parseImageData(state: Godot.GLTFState?, imageData: Godot.PackedByteArray, mimeType: Godot.GodotString, retImage: Godot.Image?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getImageFileExtension() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _parseTextureJson(state: Godot.GLTFState?, textureJson: Godot.AnyGodotDictionary, retGltfTexture: Godot.GLTFTexture?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _generateSceneNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, sceneParent: Godot.Node?) -> Godot.Node3D? {
        nil
    }

    open func _importPostParse(state: Godot.GLTFState?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _importNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, json: Godot.AnyGodotDictionary, node: Godot.Node?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _importPost(state: Godot.GLTFState?, root: Godot.Node?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _exportPreflight(state: Godot.GLTFState?, root: Godot.Node?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _convertSceneNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, sceneNode: Godot.Node?) {
    }

    open func _exportPreserialize(state: Godot.GLTFState?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getSaveableImageFormats() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _serializeImageToBytes(state: Godot.GLTFState?, image: Godot.Image?, imageDict: Godot.AnyGodotDictionary, imageFormat: Godot.GodotString, lossyQuality: Double) -> Godot.PackedByteArray {
        Godot.PackedByteArray()
    }

    open func _saveImageAtPath(state: Godot.GLTFState?, image: Godot.Image?, filePath: Godot.GodotString, imageFormat: Godot.GodotString, lossyQuality: Double) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _serializeTextureJson(state: Godot.GLTFState?, textureJson: Godot.AnyGodotDictionary, gltfTexture: Godot.GLTFTexture?, imageFormat: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _exportNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, json: Godot.AnyGodotDictionary, node: Godot.Node?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _exportPost(state: Godot.GLTFState?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _import_preflight_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._importPreflight(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            extensions: Godot.PackedStringArray.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_supported_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSupportedExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_node_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseNodeExtensions(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            gltfNode: Godot.GLTFNode?.fromGodotUnsafePointer(args[1]!),
            extensions: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_image_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseImageData(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            imageData: Godot.PackedByteArray.fromGodotUnsafePointer(args[1]!),
            mimeType: Godot.GodotString.fromGodotUnsafePointer(args[2]!),
            retImage: Godot.Image?.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_image_file_extension_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getImageFileExtension()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_texture_json_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseTextureJson(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            textureJson: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!),
            retGltfTexture: Godot.GLTFTexture?.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _generate_scene_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._generateSceneNode(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            gltfNode: Godot.GLTFNode?.fromGodotUnsafePointer(args[1]!),
            sceneParent: Godot.Node?.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _import_post_parse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._importPostParse(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _import_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._importNode(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            gltfNode: Godot.GLTFNode?.fromGodotUnsafePointer(args[1]!),
            json: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[2]!),
            node: Godot.Node?.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _import_post_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._importPost(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            root: Godot.Node?.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _export_preflight_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportPreflight(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            root: Godot.Node?.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _convert_scene_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._convertSceneNode(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            gltfNode: Godot.GLTFNode?.fromGodotUnsafePointer(args[1]!),
            sceneNode: Godot.Node?.fromGodotUnsafePointer(args[2]!)
        )}
        let _export_preserialize_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportPreserialize(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_saveable_image_formats_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSaveableImageFormats()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _serialize_image_to_bytes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._serializeImageToBytes(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            image: Godot.Image?.fromGodotUnsafePointer(args[1]!),
            imageDict: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[2]!),
            imageFormat: Godot.GodotString.fromGodotUnsafePointer(args[3]!),
            lossyQuality: Double.fromGodotUnsafePointer(args[4]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _save_image_at_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._saveImageAtPath(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            image: Godot.Image?.fromGodotUnsafePointer(args[1]!),
            filePath: Godot.GodotString.fromGodotUnsafePointer(args[2]!),
            imageFormat: Godot.GodotString.fromGodotUnsafePointer(args[3]!),
            lossyQuality: Double.fromGodotUnsafePointer(args[4]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _serialize_texture_json_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._serializeTextureJson(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            textureJson: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!),
            gltfTexture: Godot.GLTFTexture?.fromGodotUnsafePointer(args[2]!),
            imageFormat: Godot.GodotString.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _export_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportNode(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!),
            gltfNode: Godot.GLTFNode?.fromGodotUnsafePointer(args[1]!),
            json: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[2]!),
            node: Godot.Node?.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _export_post_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GLTFDocumentExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._exportPost(
            state: Godot.GLTFState?.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_importPreflight" : ("_import_preflight", _import_preflight_call),
            "_getSupportedExtensions" : ("_get_supported_extensions", _get_supported_extensions_call),
            "_parseNodeExtensions" : ("_parse_node_extensions", _parse_node_extensions_call),
            "_parseImageData" : ("_parse_image_data", _parse_image_data_call),
            "_getImageFileExtension" : ("_get_image_file_extension", _get_image_file_extension_call),
            "_parseTextureJson" : ("_parse_texture_json", _parse_texture_json_call),
            "_generateSceneNode" : ("_generate_scene_node", _generate_scene_node_call),
            "_importPostParse" : ("_import_post_parse", _import_post_parse_call),
            "_importNode" : ("_import_node", _import_node_call),
            "_importPost" : ("_import_post", _import_post_call),
            "_exportPreflight" : ("_export_preflight", _export_preflight_call),
            "_convertSceneNode" : ("_convert_scene_node", _convert_scene_node_call),
            "_exportPreserialize" : ("_export_preserialize", _export_preserialize_call),
            "_getSaveableImageFormats" : ("_get_saveable_image_formats", _get_saveable_image_formats_call),
            "_serializeImageToBytes" : ("_serialize_image_to_bytes", _serialize_image_to_bytes_call),
            "_saveImageAtPath" : ("_save_image_at_path", _save_image_at_path_call),
            "_serializeTextureJson" : ("_serialize_texture_json", _serialize_texture_json_call),
            "_exportNode" : ("_export_node", _export_node_call),
            "_exportPost" : ("_export_post", _export_post_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }