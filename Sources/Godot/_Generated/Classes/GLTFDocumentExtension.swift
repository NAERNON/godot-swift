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

    open func _parseNodeExtensions(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, extensions: Godot.GodotDictionary) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _parseImageData(state: Godot.GLTFState?, imageData: Godot.PackedByteArray, mimeType: Godot.GodotString, retImage: Godot.Image?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _parseTextureJson(state: Godot.GLTFState?, textureJson: Godot.GodotDictionary, retGltfTexture: Godot.GLTFTexture?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _generateSceneNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, sceneParent: Godot.Node?) -> Godot.Node3D? {
        nil
    }

    open func _importPostParse(state: Godot.GLTFState?) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _importNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, json: Godot.GodotDictionary, node: Godot.Node?) -> Godot.ErrorType {
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

    open func _exportNode(state: Godot.GLTFState?, gltfNode: Godot.GLTFNode?, json: Godot.GodotDictionary, node: Godot.Node?) -> Godot.ErrorType {
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
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._importPreflight(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            extensions: Godot.PackedStringArray(godotExtensionPointer: args[1]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _get_supported_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSupportedExtensions()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _parse_node_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._parseNodeExtensions(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            gltfNode: Godot.GLTFNode.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            extensions: Godot.GodotDictionary(godotExtensionPointer: args[2]!)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _parse_image_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._parseImageData(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            imageData: Godot.PackedByteArray(godotExtensionPointer: args[1]!),
            mimeType: Godot.GodotString(godotExtensionPointer: args[2]!),
            retImage: Godot.Image.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[3]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _parse_texture_json_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._parseTextureJson(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            textureJson: Godot.GodotDictionary(godotExtensionPointer: args[1]!),
            retGltfTexture: Godot.GLTFTexture.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _generate_scene_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._generateSceneNode(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            gltfNode: Godot.GLTFNode.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            sceneParent: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!))
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _import_post_parse_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._importPostParse(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _import_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._importNode(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            gltfNode: Godot.GLTFNode.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            json: Godot.GodotDictionary(godotExtensionPointer: args[2]!),
            node: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[3]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _import_post_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._importPost(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            root: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _export_preflight_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._exportPreflight(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            root: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _convert_scene_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._convertSceneNode(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            gltfNode: Godot.GLTFNode.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            sceneNode: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[2]!))
        )}
        let _export_node_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._exportNode(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!)),
            gltfNode: Godot.GLTFNode.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[1]!)),
            json: Godot.GodotDictionary(godotExtensionPointer: args[2]!),
            node: Godot.Node.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[3]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _export_post_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<GLTFDocumentExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._exportPost(
            state: Godot.GLTFState.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        _virtualFunctions = [
            "_importPreflight" : ("_import_preflight", _import_preflight_call),
            "_getSupportedExtensions" : ("_get_supported_extensions", _get_supported_extensions_call),
            "_parseNodeExtensions" : ("_parse_node_extensions", _parse_node_extensions_call),
            "_parseImageData" : ("_parse_image_data", _parse_image_data_call),
            "_parseTextureJson" : ("_parse_texture_json", _parse_texture_json_call),
            "_generateSceneNode" : ("_generate_scene_node", _generate_scene_node_call),
            "_importPostParse" : ("_import_post_parse", _import_post_parse_call),
            "_importNode" : ("_import_node", _import_node_call),
            "_importPost" : ("_import_post", _import_post_call),
            "_exportPreflight" : ("_export_preflight", _export_preflight_call),
            "_convertSceneNode" : ("_convert_scene_node", _convert_scene_node_call),
            "_exportNode" : ("_export_node", _export_node_call),
            "_exportPost" : ("_export_post", _export_post_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }