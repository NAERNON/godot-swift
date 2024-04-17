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

    internal static var __method_binding_create_from_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_image").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3679243433)!
        }
        }
    }()

    public func createFromImage(
        _ image: Godot.Image?,
        compressionMode: Godot.PortableCompressedTexture2D.CompressionMode,
        normalMap: Bool = false,
        lossyQuality: Double = 0.8
    ) {
        withTransferrableUnsafeRawPointer(to: image) { __ptr_image in
            withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
                withTransferrableUnsafeRawPointer(to: compressionMode) { __ptr_compressionMode in
                    withTransferrableUnsafeRawPointer(to: normalMap) { __ptr_normalMap in
                        withTransferrableUnsafeRawPointer(to: lossyQuality) { __ptr_lossyQuality in
                            withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_compressionMode, __ptr_normalMap, __ptr_lossyQuality) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
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

    internal static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_format").withUnsafeRawPointer { __ptr__method_name in
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

    internal static var __method_binding_get_compression_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_compression_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3265612739)!
        }
        }
    }()

    public func compressionMode() -> Godot.PortableCompressedTexture2D.CompressionMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_compression_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size_override").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()

    private func __setSizeOverride(
        size: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
            withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_size_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size_override").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    private func __getSizeOverride() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_size_override,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_keep_compressed_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_compressed_buffer").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setKeepCompressedBuffer(
        keep: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: keep) { __ptr_keep in
            withUnsafeArgumentPackPointer(__ptr_keep) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_keep_compressed_buffer,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_is_keeping_compressed_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_compressed_buffer").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __isKeepingCompressedBuffer() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_keeping_compressed_buffer,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_keep_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keep_all_compressed_buffers").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    static public func setKeepAllCompressedBuffers(
        keep: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: keep) { __ptr_keep in
            withUnsafeArgumentPackPointer(__ptr_keep) { __accessPtr in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_set_keep_all_compressed_buffers,
                    nil,
                    __accessPtr,
                    nil
                )
            }
        }
    }

    internal static var __method_binding_is_keeping_all_compressed_buffers: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keeping_all_compressed_buffers").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()

    static public func isKeepingAllCompressedBuffers() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_is_keeping_all_compressed_buffers,
                nil,
                nil,
                __temporary
            )
        }
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