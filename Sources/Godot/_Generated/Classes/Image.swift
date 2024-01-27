//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Image: Resource {
    public enum Format: UInt32, GodotEnum {
        case l8 = 0
        case la8 = 1
        case r8 = 2
        case rg8 = 3
        case rgb8 = 4
        case rgba8 = 5
        case rgba4444 = 6
        case rgb565 = 7
        case rf = 8
        case rgf = 9
        case rgbf = 10
        case rgbaf = 11
        case rh = 12
        case rgh = 13
        case rgbh = 14
        case rgbah = 15
        case rgbe9995 = 16
        case dxt1 = 17
        case dxt3 = 18
        case dxt5 = 19
        case rgtcR = 20
        case rgtcRg = 21
        case bptcRgba = 22
        case bptcRgbf = 23
        case bptcRgbfu = 24
        case etc = 25
        case etc2R11 = 26
        case etc2R11s = 27
        case etc2Rg11 = 28
        case etc2Rg11s = 29
        case etc2Rgb8 = 30
        case etc2Rgba8 = 31
        case etc2Rgb8a1 = 32
        case etc2RaAsRg = 33
        case dxt5RaAsRg = 34
        case astc4x4 = 35
        case astc4x4Hdr = 36
        case astc8x8 = 37
        case astc8x8Hdr = 38
        case max = 39
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("L8", 0),
            ("La8", 1),
            ("R8", 2),
            ("Rg8", 3),
            ("Rgb8", 4),
            ("Rgba8", 5),
            ("Rgba4444", 6),
            ("Rgb565", 7),
            ("Rf", 8),
            ("Rgf", 9),
            ("Rgbf", 10),
            ("Rgbaf", 11),
            ("Rh", 12),
            ("Rgh", 13),
            ("Rgbh", 14),
            ("Rgbah", 15),
            ("Rgbe9995", 16),
            ("Dxt1", 17),
            ("Dxt3", 18),
            ("Dxt5", 19),
            ("Rgtc R", 20),
            ("Rgtc Rg", 21),
            ("Bptc Rgba", 22),
            ("Bptc Rgbf", 23),
            ("Bptc Rgbfu", 24),
            ("Etc", 25),
            ("Etc2 R11", 26),
            ("Etc2 R11s", 27),
            ("Etc2 Rg11", 28),
            ("Etc2 Rg11s", 29),
            ("Etc2 Rgb8", 30),
            ("Etc2 Rgba8", 31),
            ("Etc2 Rgb8a1", 32),
            ("Etc2 Ra As Rg", 33),
            ("Dxt5 Ra As Rg", 34),
            ("Astc4x4", 35),
            ("Astc4x4 Hdr", 36),
            ("Astc8x8", 37),
            ("Astc8x8 Hdr", 38),
            ("Max", 39),]
        }
    }
    public enum Interpolation: UInt32, GodotEnum {
        case nearest = 0
        case bilinear = 1
        case cubic = 2
        case trilinear = 3
        case lanczos = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Bilinear", 1),
            ("Cubic", 2),
            ("Trilinear", 3),
            ("Lanczos", 4),]
        }
    }
    public enum AlphaMode: UInt32, GodotEnum {
        case none = 0
        case bit = 1
        case blend = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Bit", 1),
            ("Blend", 2),]
        }
    }
    public enum CompressMode: UInt32, GodotEnum {
        case s3tc = 0
        case etc = 1
        case etc2 = 2
        case bptc = 3
        case astc = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("S3tc", 0),
            ("Etc", 1),
            ("Etc2", 2),
            ("Bptc", 3),
            ("Astc", 4),
            ("Max", 5),]
        }
    }
    public enum UsedChannels: UInt32, GodotEnum {
        case l = 0
        case la = 1
        case r = 2
        case rg = 3
        case rgb = 4
        case rgba = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("L", 0),
            ("La", 1),
            ("R", 2),
            ("Rg", 3),
            ("Rgb", 4),
            ("Rgba", 5),]
        }
    }
    public enum CompressSource: UInt32, GodotEnum {
        case generic = 0
        case srgb = 1
        case normal = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Generic", 0),
            ("Srgb", 1),
            ("Normal", 2),]
        }
    }
    public enum ASTCFormat: UInt32, GodotEnum {
        case astcFormat4x4 = 0
        case astcFormat8x8 = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Astc Format4x4", 0),
            ("Astc Format8x8", 1),]
        }
    }

    public static let maxWidth: Int = 16777216
    public static let maxHeight: Int = 16777216

    internal static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func width() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func height() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3690982128)!
        }
        }
    }()
    public func size() -> Godot.Vector2I {
        Godot.Vector2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_has_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasMipmaps() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_mipmaps,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_format: GDExtensionMethodBindPtr = {
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

    internal static var __method_binding_get_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2362200018)!
        }
        }
    }()
    public func data() -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_convert: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "convert").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2120693146)!
        }
        }
    }()
    public func convert(format: Godot.Image.Format) {
        format.withGodotUnsafeRawPointer { __ptr_format in
        withUnsafeArgumentPackPointer(__ptr_format) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_convert,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_mipmap_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mipmap_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func mipmapCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mipmap_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_mipmap_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mipmap_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func mipmapOffset(mipmap: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        mipmap.withGodotUnsafeRawPointer { __ptr_mipmap in
        withUnsafeArgumentPackPointer(__ptr_mipmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mipmap_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_resize_to_po2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "resize_to_po2").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4189212329)!
        }
        }
    }()
    public func resizeToPo2(square: Bool = false, interpolation: Godot.Image.Interpolation = Image.Interpolation(rawValue: 1)!) {
        square.withGodotUnsafeRawPointer { __ptr_square in
        interpolation.withGodotUnsafeRawPointer { __ptr_interpolation in
        withUnsafeArgumentPackPointer(__ptr_square, __ptr_interpolation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_resize_to_po2,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_resize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "resize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 994498151)!
        }
        }
    }()
    public func resize(width: Int32, height: Int32, interpolation: Godot.Image.Interpolation = Image.Interpolation(rawValue: 1)!) {
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        interpolation.withGodotUnsafeRawPointer { __ptr_interpolation in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_interpolation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_resize,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_shrink_x2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shrink_x2").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func shrinkX2() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_shrink_x2,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_crop: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "crop").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func crop(width: Int32, height: Int32) {
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_crop,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_flip_x: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flip_x").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flipX() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_flip_x,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_flip_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flip_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flipY() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_flip_y,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_generate_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1633102583)!
        }
        }
    }()
    public func generateMipmaps(renormalize: Bool = false) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        renormalize.withGodotUnsafeRawPointer { __ptr_renormalize in
        withUnsafeArgumentPackPointer(__ptr_renormalize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_generate_mipmaps,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_clear_mipmaps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_mipmaps").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearMipmaps() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_mipmaps,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 986942177)!
        }
        }
    }()
    static public func create(width: Int32, height: Int32, useMipmaps: Bool, format: Godot.Image.Format) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        useMipmaps.withGodotUnsafeRawPointer { __ptr_useMipmaps in
        format.withGodotUnsafeRawPointer { __ptr_format in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_useMipmaps, __ptr_format) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create,
            nil,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_create_from_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_from_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 299398494)!
        }
        }
    }()
    static public func createFromData(width: Int32, height: Int32, useMipmaps: Bool, format: Godot.Image.Format, data: Godot.PackedByteArray) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        useMipmaps.withGodotUnsafeRawPointer { __ptr_useMipmaps in
        format.withGodotUnsafeRawPointer { __ptr_format in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_useMipmaps, __ptr_format, __ptr_data) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_from_data,
            nil,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    internal static var __method_binding_set_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2740482212)!
        }
        }
    }()
    public func setData(width: Int32, height: Int32, useMipmaps: Bool, format: Godot.Image.Format, data: Godot.PackedByteArray) {
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        useMipmaps.withGodotUnsafeRawPointer { __ptr_useMipmaps in
        format.withGodotUnsafeRawPointer { __ptr_format in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_width, __ptr_height, __ptr_useMipmaps, __ptr_format, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_is_empty: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_empty").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isEmpty() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_empty,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_load: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166001499)!
        }
        }
    }()
    public func load(path: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_from_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_from_file").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 736337515)!
        }
        }
    }()
    static public func loadFromFile(path: Godot.GodotString) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_from_file,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    internal static var __method_binding_save_png: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_png").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2113323047)!
        }
        }
    }()
    public func savePng(path: Godot.GodotString) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_png,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_save_png_to_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_png_to_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2362200018)!
        }
        }
    }()
    public func savePngToBuffer() -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_png_to_buffer,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_save_jpg: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_jpg").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2800019068)!
        }
        }
    }()
    public func saveJpg(path: Godot.GodotString, quality: Double = 0.75) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_jpg,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_save_jpg_to_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_jpg_to_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 592235273)!
        }
        }
    }()
    public func saveJpgToBuffer(quality: Double = 0.75) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_jpg_to_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_save_exr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_exr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3108122999)!
        }
        }
    }()
    public func saveExr(path: Godot.GodotString, grayscale: Bool = false) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        grayscale.withGodotUnsafeRawPointer { __ptr_grayscale in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_grayscale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_exr,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_save_exr_to_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_exr_to_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3178917920)!
        }
        }
    }()
    public func saveExrToBuffer(grayscale: Bool = false) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        grayscale.withGodotUnsafeRawPointer { __ptr_grayscale in
        withUnsafeArgumentPackPointer(__ptr_grayscale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_exr_to_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_save_webp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_webp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2781156876)!
        }
        }
    }()
    public func saveWebp(path: Godot.GodotString, lossy: Bool = false, quality: Double = 0.75) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        lossy.withGodotUnsafeRawPointer { __ptr_lossy in
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_lossy, __ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_webp,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_save_webp_to_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save_webp_to_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1214628238)!
        }
        }
    }()
    public func saveWebpToBuffer(lossy: Bool = false, quality: Double = 0.75) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        lossy.withGodotUnsafeRawPointer { __ptr_lossy in
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_lossy, __ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_save_webp_to_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_detect_alpha: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "detect_alpha").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2030116505)!
        }
        }
    }()
    public func detectAlpha() -> Godot.Image.AlphaMode {
        Godot.Image.AlphaMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_detect_alpha,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_invisible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_invisible").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isInvisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_invisible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_detect_used_channels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "detect_used_channels").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2703139984)!
        }
        }
    }()
    public func detectUsedChannels(source: Godot.Image.CompressSource = Image.CompressSource(rawValue: 0)!) -> Godot.Image.UsedChannels {
        Godot.Image.UsedChannels.fromMutatingGodotUnsafePointer { __temporary in
        source.withGodotUnsafeRawPointer { __ptr_source in
        withUnsafeArgumentPackPointer(__ptr_source) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_detect_used_channels,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_compress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compress").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2975424957)!
        }
        }
    }()
    public func compress(mode: Godot.Image.CompressMode, source: Godot.Image.CompressSource = Image.CompressSource(rawValue: 0)!, astcFormat: Godot.Image.ASTCFormat = Image.ASTCFormat(rawValue: 0)!) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        source.withGodotUnsafeRawPointer { __ptr_source in
        astcFormat.withGodotUnsafeRawPointer { __ptr_astcFormat in
        withUnsafeArgumentPackPointer(__ptr_mode, __ptr_source, __ptr_astcFormat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_compress,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_compress_from_channels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compress_from_channels").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4212890953)!
        }
        }
    }()
    public func compressFromChannels(mode: Godot.Image.CompressMode, channels: Godot.Image.UsedChannels, astcFormat: Godot.Image.ASTCFormat = Image.ASTCFormat(rawValue: 0)!) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        channels.withGodotUnsafeRawPointer { __ptr_channels in
        astcFormat.withGodotUnsafeRawPointer { __ptr_astcFormat in
        withUnsafeArgumentPackPointer(__ptr_mode, __ptr_channels, __ptr_astcFormat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_compress_from_channels,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_decompress: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decompress").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    public func decompress() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_decompress,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_is_compressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_compressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isCompressed() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_compressed,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_rotate_90: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_90").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1901204267)!
        }
        }
    }()
    public func rotate90(direction: Godot.ClockDirection) {
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_90,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_rotate_180: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rotate_180").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func rotate180() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rotate_180,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_fix_alpha_edges: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fix_alpha_edges").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func fixAlphaEdges() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fix_alpha_edges,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_premultiply_alpha: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "premultiply_alpha").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func premultiplyAlpha() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_premultiply_alpha,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_srgb_to_linear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "srgb_to_linear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func srgbToLinear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_srgb_to_linear,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_normal_map_to_xy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "normal_map_to_xy").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func normalMapToXy() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_normal_map_to_xy,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_rgbe_to_srgb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rgbe_to_srgb").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 564927088)!
        }
        }
    }()
    public func rgbeToSrgb() -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rgbe_to_srgb,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_bump_map_to_normal_map: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bump_map_to_normal_map").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3423495036)!
        }
        }
    }()
    public func bumpMapToNormalMap(bumpScale: Double = 1.0) {
        bumpScale.withGodotUnsafeRawPointer { __ptr_bumpScale in
        withUnsafeArgumentPackPointer(__ptr_bumpScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_bump_map_to_normal_map,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_compute_image_metrics: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "compute_image_metrics").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3080961247)!
        }
        }
    }()
    public func computeImageMetrics(comparedImage: Godot.Image?, useLuma: Bool) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        comparedImage.withGodotUnsafeRawPointer { __ptr_comparedImage in
        withUnsafePointer(to: __ptr_comparedImage) { _ptr___ptr_comparedImage in
        useLuma.withGodotUnsafeRawPointer { __ptr_useLuma in
        withUnsafeArgumentPackPointer(_ptr___ptr_comparedImage, __ptr_useLuma) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_compute_image_metrics,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_blit_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blit_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2903928755)!
        }
        }
    }()
    public func blitRect(src: Godot.Image?, srcRect: Godot.Rect2I, dst: Godot.Vector2I) {
        src.withGodotUnsafeRawPointer { __ptr_src in
        withUnsafePointer(to: __ptr_src) { _ptr___ptr_src in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        dst.withGodotUnsafeRawPointer { __ptr_dst in
        withUnsafeArgumentPackPointer(_ptr___ptr_src, __ptr_srcRect, __ptr_dst) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_blit_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_blit_rect_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blit_rect_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3383581145)!
        }
        }
    }()
    public func blitRectMask(src: Godot.Image?, mask: Godot.Image?, srcRect: Godot.Rect2I, dst: Godot.Vector2I) {
        src.withGodotUnsafeRawPointer { __ptr_src in
        withUnsafePointer(to: __ptr_src) { _ptr___ptr_src in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafePointer(to: __ptr_mask) { _ptr___ptr_mask in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        dst.withGodotUnsafeRawPointer { __ptr_dst in
        withUnsafeArgumentPackPointer(_ptr___ptr_src, _ptr___ptr_mask, __ptr_srcRect, __ptr_dst) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_blit_rect_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_blend_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2903928755)!
        }
        }
    }()
    public func blendRect(src: Godot.Image?, srcRect: Godot.Rect2I, dst: Godot.Vector2I) {
        src.withGodotUnsafeRawPointer { __ptr_src in
        withUnsafePointer(to: __ptr_src) { _ptr___ptr_src in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        dst.withGodotUnsafeRawPointer { __ptr_dst in
        withUnsafeArgumentPackPointer(_ptr___ptr_src, __ptr_srcRect, __ptr_dst) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_blend_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_blend_rect_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "blend_rect_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3383581145)!
        }
        }
    }()
    public func blendRectMask(src: Godot.Image?, mask: Godot.Image?, srcRect: Godot.Rect2I, dst: Godot.Vector2I) {
        src.withGodotUnsafeRawPointer { __ptr_src in
        withUnsafePointer(to: __ptr_src) { _ptr___ptr_src in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafePointer(to: __ptr_mask) { _ptr___ptr_mask in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        dst.withGodotUnsafeRawPointer { __ptr_dst in
        withUnsafeArgumentPackPointer(_ptr___ptr_src, _ptr___ptr_mask, __ptr_srcRect, __ptr_dst) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_blend_rect_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_fill: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fill").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    public func fill(color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fill,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_fill_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fill_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 514693913)!
        }
        }
    }()
    public func fillRect(_ rect: Godot.Rect2I, color: Godot.Color) {
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_rect, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fill_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_used_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_used_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 410525958)!
        }
        }
    }()
    public func usedRect() -> Godot.Rect2I {
        Godot.Rect2I.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_used_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2601441065)!
        }
        }
    }()
    public func region(_ region: Godot.Rect2I) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_region,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_copy_from: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "copy_from").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 532598488)!
        }
        }
    }()
    public func copyFrom(src: Godot.Image?) {
        src.withGodotUnsafeRawPointer { __ptr_src in
        withUnsafePointer(to: __ptr_src) { _ptr___ptr_src in
        withUnsafeArgumentPackPointer(_ptr___ptr_src) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_copy_from,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_pixelv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pixelv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1532707496)!
        }
        }
    }()
    public func pixelv(point: Godot.Vector2I) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        withUnsafeArgumentPackPointer(__ptr_point) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pixelv,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2165839948)!
        }
        }
    }()
    public func pixel(x: Int32, y: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        x.withGodotUnsafeRawPointer { __ptr_x in
        y.withGodotUnsafeRawPointer { __ptr_y in
        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pixel,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_set_pixelv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pixelv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 287851464)!
        }
        }
    }()
    public func setPixelv(point: Godot.Vector2I, color: Godot.Color) {
        point.withGodotUnsafeRawPointer { __ptr_point in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pixelv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3733378741)!
        }
        }
    }()
    public func setPixel(x: Int32, y: Int32, color: Godot.Color) {
        x.withGodotUnsafeRawPointer { __ptr_x in
        y.withGodotUnsafeRawPointer { __ptr_y in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_x, __ptr_y, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_pixel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_adjust_bcs: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "adjust_bcs").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2385087082)!
        }
        }
    }()
    public func adjustBcs(brightness: Double, contrast: Double, saturation: Double) {
        brightness.withGodotUnsafeRawPointer { __ptr_brightness in
        contrast.withGodotUnsafeRawPointer { __ptr_contrast in
        saturation.withGodotUnsafeRawPointer { __ptr_saturation in
        withUnsafeArgumentPackPointer(__ptr_brightness, __ptr_contrast, __ptr_saturation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_adjust_bcs,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    internal static var __method_binding_load_png_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_png_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadPngFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_png_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_jpg_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_jpg_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadJpgFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_jpg_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_webp_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_webp_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadWebpFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_webp_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_tga_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_tga_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadTgaFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_tga_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_bmp_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_bmp_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadBmpFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_bmp_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_ktx_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_ktx_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 680677267)!
        }
        }
    }()
    public func loadKtxFromBuffer(_ buffer: Godot.PackedByteArray) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_ktx_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_load_svg_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_svg_from_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 311853421)!
        }
        }
    }()
    public func loadSvgFromBuffer(_ buffer: Godot.PackedByteArray, scale: Double = 1.0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_svg_from_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    internal static var __method_binding_load_svg_from_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "load_svg_from_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3254053600)!
        }
        }
    }()
    public func loadSvgFromString(svgStr: Godot.GodotString, scale: Double = 1.0) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        svgStr.withGodotUnsafeRawPointer { __ptr_svgStr in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_svgStr, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_load_svg_from_string,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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