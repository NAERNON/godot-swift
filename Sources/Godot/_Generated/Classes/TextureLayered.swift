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
               ("Layered Type2D Array", 0),
               ("Cubemap", 1),
               ("Cubemap Array", 2),
            ]
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
    
    open func _getLayerData(
        layerIndex: Int32
    ) -> Godot.Image? {
        nil
    }
    
    internal static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_format").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3847873762)!
            }
        }
    }()
    
    public func format() -> Godot.Image.Format {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_format,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_layered_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layered_type").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 518123893)!
            }
        }
    }()
    
    public func layeredType() -> Godot.TextureLayered.LayeredType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_layered_type,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_width").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func width() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_width,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_height").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func height() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_height,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_layers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layers").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func layers() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_layers,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_has_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "has_mipmaps").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    public func hasMipmaps() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_has_mipmaps,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_layer_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_layer_data").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3655284255)!
            }
        }
    }()
    
    public func layerData(
        layer: Int32
    ) -> Godot.Image? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: layer) { __ptr_layer in
                withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_layer_data,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
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
        let _get_format_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getFormat()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_layered_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getLayeredType()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getWidth()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_height_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getHeight()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_layers_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getLayers()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _has_mipmaps_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._hasMipmaps()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_layer_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else { return }
            Unmanaged<TextureLayered>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getLayerData(
                    layerIndex: Int32.transferFromGodot(unsafePointer: args[0]!)
                )
               .transferToGodot(unsafePointer: returnPtr!)
        }
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
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}