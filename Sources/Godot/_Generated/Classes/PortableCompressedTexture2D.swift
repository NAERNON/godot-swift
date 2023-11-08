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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 97251393)!
        }
        }
    }()
    public func createFromImage(_ image: Godot.Image?, compressionMode: Godot.PortableCompressedTexture2D.CompressionMode, normalMap: Bool = false, lossyQuality: Double = 0.8) {
        image.withUnsafeRawPointer { (__ptr_image) in
            withUnsafePointer(to: __ptr_image) { (_ptr___ptr_image) in
                withUnsafePointer(to: compressionMode) { (__ptr_compressionMode) in
                    withUnsafePointer(to: normalMap) { (__ptr_normalMap) in
                        withUnsafePointer(to: lossyQuality) { (__ptr_lossyQuality) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_compressionMode, __ptr_normalMap, __ptr_lossyQuality) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_create_from_image,
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

    private static var __method_binding_get_compression_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_compression_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3265612739)!
        }
        }
    }()
    public func compressionMode() -> Godot.PortableCompressedTexture2D.CompressionMode {
        var __temporary = Godot.PortableCompressedTexture2D.CompressionMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_compression_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.PortableCompressedTexture2D.CompressionMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_size_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setSizeOverride(size: Godot.Vector2) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_size_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_size_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getSizeOverride() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_size_override,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_keep_compressed_buffer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_compressed_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeepCompressedBuffer(keep: Bool) {
        withUnsafePointer(to: keep) { (__ptr_keep) in
            withUnsafeArgumentPackPointer(__ptr_keep) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_keep_compressed_buffer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_keeping_compressed_buffer: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_compressed_buffer").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeepingCompressedBuffer() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_keeping_compressed_buffer,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_keep_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_all_compressed_buffers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    static public func setKeepAllCompressedBuffers(keep: Bool) {
        withUnsafePointer(to: keep) { (__ptr_keep) in
            withUnsafeArgumentPackPointer(__ptr_keep) { (__accessPtr) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_set_keep_all_compressed_buffers,
                    nil,
                    __accessPtr,
                    nil
                )
            }
        }
    }

    private static var __method_binding_is_keeping_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_all_compressed_buffers").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    static public func isKeepingAllCompressedBuffers() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_is_keeping_all_compressed_buffers,
                nil,
                nil,
                __ptr___temporary
            )
        }
        return __temporary
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