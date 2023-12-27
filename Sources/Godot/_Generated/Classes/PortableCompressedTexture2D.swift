//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PortableCompressedTexture2D: Texture2D {
    public enum CompressionMode: UInt32, GodotEnum {
        case lossless = 0
        case lossy = 1
        case basisUniversal = 2
        case s3tc = 3
        case etc2 = 4
        case bptc = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Lossless", 0),
            ("Lossy", 1),
            ("Basis Universal", 2),
            ("S3tc", 3),
            ("Etc2", 4),
            ("Bptc", 5),]
        }
    }

    private static var __method_binding_create_from_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3679243433)!
        }
        }
    }()
    public func createFromImage(_ image: Godot.Image?, compressionMode: Godot.PortableCompressedTexture2D.CompressionMode, normalMap: Bool = false, lossyQuality: Double = 0.8) {
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        compressionMode.withGodotUnsafeRawPointer { __ptr_compressionMode in
        normalMap.withGodotUnsafeRawPointer { __ptr_normalMap in
        lossyQuality.withGodotUnsafeRawPointer { __ptr_lossyQuality in
        withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_compressionMode, __ptr_normalMap, __ptr_lossyQuality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_from_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3847873762)!
        }
        }
    }()
    public func format() -> Godot.Image.Format {
        Godot.Image.Format.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_format,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_compression_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_compression_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3265612739)!
        }
        }
    }()
    public func compressionMode() -> Godot.PortableCompressedTexture2D.CompressionMode {
        Godot.PortableCompressedTexture2D.CompressionMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_compression_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setSizeOverride(size: Godot.Vector2) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_size_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getSizeOverride() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size_override,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_keep_compressed_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_compressed_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeepCompressedBuffer(keep: Bool) {
        keep.withGodotUnsafeRawPointer { __ptr_keep in
        withUnsafeArgumentPackPointer(__ptr_keep) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_keep_compressed_buffer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_keeping_compressed_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_compressed_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeepingCompressedBuffer() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_keeping_compressed_buffer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_keep_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_all_compressed_buffers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    static public func setKeepAllCompressedBuffers(keep: Bool) {
        keep.withGodotUnsafeRawPointer { __ptr_keep in
        withUnsafeArgumentPackPointer(__ptr_keep) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_keep_all_compressed_buffers,
            nil,
            __accessPtr,
            nil
        )}}
    }

    private static var __method_binding_is_keeping_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_all_compressed_buffers").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    static public func isKeepingAllCompressedBuffers() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_keeping_all_compressed_buffers,
            nil,
            nil,
            __temporary
        )}
    }

    public var sizeOverride: Godot.Vector2 {
        get {
            __getSizeOverride()
        }
        set {
            __setSizeOverride(
                size: newValue
            )
        }
    }

    public var isKeepingCompressedBuffer: Bool {
        get {
            __isKeepingCompressedBuffer()
        }
        set {
            __setKeepCompressedBuffer(
                keep: newValue
            )
        }
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