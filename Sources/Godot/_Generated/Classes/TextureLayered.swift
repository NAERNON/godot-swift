//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TextureLayered: Texture {
    public enum LayeredType: UInt32, GodotEnum {
        case layeredType2DArray = 0
        case cubemap = 1
        case cubemapArray = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Layered Type2 D Array", 0),
            ("Cubemap", 1),
            ("Cubemap Array", 2),]
        }
    }

    open func _getFormat() -> Godot.Image.Format {
        Godot.Image.Format(rawValue: 0)!
    }

    open func _getLayeredType() -> UInt32 {
        UInt32()
    }

    open func _getWidth() -> Int32 {
        Int32()
    }

    open func _getHeight() -> Int32 {
        Int32()
    }

    open func _getLayers() -> Int32 {
        Int32()
    }

    open func _hasMipmaps() -> Bool {
        Bool()
    }

    open func _getLayerData(layerIndex: Int32) -> Godot.Image? {
        nil
    }

    private static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3847873762)!
        }
        }
    }()
    public func format() -> Godot.Image.Format {
        var __temporary = Godot.Image.Format.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_format,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Image.Format(rawValue: __temporary)!
    }

    private static var __method_binding_get_layered_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layered_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 518123893)!
        }
        }
    }()
    public func layeredType() -> Godot.TextureLayered.LayeredType {
        var __temporary = Godot.TextureLayered.LayeredType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_layered_type,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.TextureLayered.LayeredType(rawValue: __temporary)!
    }

    private static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func width() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_width,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func height() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_height,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_layers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func layers() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_layers,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_has_mipmaps: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_mipmaps").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasMipmaps() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_has_mipmaps,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_layer_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_layer_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3655284255)!
        }
        }
    }()
    public func layerData(layer: Int32) -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: layer) { (__ptr_layer) in
            withUnsafeArgumentPackPointer(__ptr_layer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_layer_data,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_format_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getFormat()
        returnPtr!.assumingMemoryBound(to: Godot.Image.Format.self).pointee = returnValue}
        let _get_layered_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLayeredType()
        returnPtr!.assumingMemoryBound(to: UInt32.self).pointee = returnValue}
        let _get_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getWidth()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_height_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getHeight()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_layers_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLayers()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _has_mipmaps_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasMipmaps()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_layer_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<TextureLayered> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLayerData(
            layerIndex: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getFormat" : ("_get_format", _get_format_call),
            "_getLayeredType" : ("_get_layered_type", _get_layered_type_call),
            "_getWidth" : ("_get_width", _get_width_call),
            "_getHeight" : ("_get_height", _get_height_call),
            "_getLayers" : ("_get_layers", _get_layers_call),
            "_hasMipmaps" : ("_has_mipmaps", _has_mipmaps_call),
            "_getLayerData" : ("_get_layer_data", _get_layer_data_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }