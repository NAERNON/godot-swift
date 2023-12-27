//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class FileAccess: RefCounted {
    public enum ModeFlags: UInt32, GodotEnum {
        case read = 1
        case write = 2
        case readWrite = 3
        case writeRead = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Read", 1),
            ("Write", 2),
            ("Read Write", 3),
            ("Write Read", 7),]
        }
    }
    public enum CompressionMode: UInt32, GodotEnum {
        case fastlz = 0
        case deflate = 1
        case zstd = 2
        case gzip = 3
        case brotli = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Fastlz", 0),
            ("Deflate", 1),
            ("Zstd", 2),
            ("Gzip", 3),
            ("Brotli", 4),]
        }
    }
    public struct UnixPermissionFlags: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let readOwner: Self = .init(rawValue: 256)
        public static let writeOwner: Self = .init(rawValue: 128)
        public static let executeOwner: Self = .init(rawValue: 64)
        public static let readGroup: Self = .init(rawValue: 32)
        public static let writeGroup: Self = .init(rawValue: 16)
        public static let executeGroup: Self = .init(rawValue: 8)
        public static let readOther: Self = .init(rawValue: 4)
        public static let writeOther: Self = .init(rawValue: 2)
        public static let executeOther: Self = .init(rawValue: 1)
        public static let setUserId: Self = .init(rawValue: 2048)
        public static let setGroupId: Self = .init(rawValue: 1024)
        public static let restrictedDelete: Self = .init(rawValue: 512)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Execute Other", 1),
            ("Write Other", 2),
            ("Read Other", 4),
            ("Execute Group", 8),
            ("Write Group", 16),
            ("Read Group", 32),
            ("Execute Owner", 64),
            ("Write Owner", 128),
            ("Read Owner", 256),
            ("Restricted Delete", 512),
            ("Set Group Id", 1024),
            ("Set User Id", 2048),]
        }
    }

    private static var __method_binding_open: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1247358404)!
        }
        }
    }()
    static public func open(path: Godot.GodotString, flags: Godot.FileAccess.ModeFlags) -> Godot.FileAccess? {
        Godot.FileAccess?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_flags) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_open,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_open_encrypted: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_encrypted").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1482131466)!
        }
        }
    }()
    static public func openEncrypted(path: Godot.GodotString, modeFlags: Godot.FileAccess.ModeFlags, key: Godot.PackedByteArray) -> Godot.FileAccess? {
        Godot.FileAccess?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        modeFlags.withGodotUnsafeRawPointer { __ptr_modeFlags in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_modeFlags, __ptr_key) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_open_encrypted,
            nil,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_open_encrypted_with_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_encrypted_with_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 790283377)!
        }
        }
    }()
    static public func openEncryptedWithPass(path: Godot.GodotString, modeFlags: Godot.FileAccess.ModeFlags, pass: Godot.GodotString) -> Godot.FileAccess? {
        Godot.FileAccess?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        modeFlags.withGodotUnsafeRawPointer { __ptr_modeFlags in
        pass.withGodotUnsafeRawPointer { __ptr_pass in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_modeFlags, __ptr_pass) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_open_encrypted_with_pass,
            nil,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_open_compressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "open_compressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3686439335)!
        }
        }
    }()
    static public func openCompressed(path: Godot.GodotString, modeFlags: Godot.FileAccess.ModeFlags, compressionMode: Godot.FileAccess.CompressionMode = FileAccess.CompressionMode(rawValue: 0)!) -> Godot.FileAccess? {
        Godot.FileAccess?.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        modeFlags.withGodotUnsafeRawPointer { __ptr_modeFlags in
        compressionMode.withGodotUnsafeRawPointer { __ptr_compressionMode in
        withUnsafeArgumentPackPointer(__ptr_path, __ptr_modeFlags, __ptr_compressionMode) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_open_compressed,
            nil,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_open_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_open_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 166280745)!
        }
        }
    }()
    static public func openError() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_open_error,
            nil,
            nil,
            __temporary
        )}
    }

    private static var __method_binding_get_file_as_bytes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_file_as_bytes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 659035735)!
        }
        }
    }()
    static public func fileAsBytes(path: Godot.GodotString) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_file_as_bytes,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_get_file_as_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_file_as_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    static public func fileAsString(path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_file_as_string,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func flush() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_flush,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func path() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_path_absolute: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path_absolute").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func pathAbsolute() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path_absolute,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_is_open: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_open").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isOpen() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_open,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_seek: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "seek").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func seek(position: UInt64) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_seek,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_seek_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "seek_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1995695955)!
        }
        }
    }()
    public func seekEnd(position: Int64 = 0) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_seek_end,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func position() -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func length() -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_eof_reached: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "eof_reached").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func eofReached() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_eof_reached,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_8: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_8").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func get8() -> UInt8 {
        UInt8.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_8,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_16: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_16").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func get16() -> UInt16 {
        UInt16.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_16,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_32: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_32").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func get32() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_32,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_64: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_64").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func get64() -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_64,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_float: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_float").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func float() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_float,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_double: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_double").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func double() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_double,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_real: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_real").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func real() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_real,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4131300905)!
        }
        }
    }()
    public func buffer(length: Int64) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func line() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_csv_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_csv_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2358116058)!
        }
        }
    }()
    public func csvLine(delim: Godot.GodotString = ",") -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        delim.withGodotUnsafeRawPointer { __ptr_delim in
        withUnsafeArgumentPackPointer(__ptr_delim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_csv_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_as_text: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_as_text").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1162154673)!
        }
        }
    }()
    public func asText(skipCr: Bool = false) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        skipCr.withGodotUnsafeRawPointer { __ptr_skipCr in
        withUnsafeArgumentPackPointer(__ptr_skipCr) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_as_text,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_md5: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_md5").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    static public func md5(path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_md5,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_get_sha256: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sha256").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    static public func sha256(path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sha256,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_is_big_endian: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_big_endian").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isBigEndian() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_big_endian,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_big_endian: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_big_endian").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setBigEndian(_ bigEndian: Bool) {
        bigEndian.withGodotUnsafeRawPointer { __ptr_bigEndian in
        withUnsafeArgumentPackPointer(__ptr_bigEndian) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_big_endian,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3185525595)!
        }
        }
    }()
    public func error() -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_error,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_var: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_var").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 189129690)!
        }
        }
    }()
    public func `var`(allowObjects: Bool = false) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        allowObjects.withGodotUnsafeRawPointer { __ptr_allowObjects in
        withUnsafeArgumentPackPointer(__ptr_allowObjects) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_var,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_store_8: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_8").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func store8(value: UInt8) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_8,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_16: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_16").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func store16(value: UInt16) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_16,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_32: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_32").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func store32(value: UInt32) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_32,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_64: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_64").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func store64(value: UInt64) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_64,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_float: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_float").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func storeFloat(value: Double) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_float,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_double: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_double").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func storeDouble(value: Double) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_double,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_real: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_real").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func storeReal(value: Double) {
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_real,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2971499966)!
        }
        }
    }()
    public func storeBuffer(_ buffer: Godot.PackedByteArray) {
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_buffer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func storeLine(_ line: Godot.GodotString) {
        line.withGodotUnsafeRawPointer { __ptr_line in
        withUnsafeArgumentPackPointer(__ptr_line) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_csv_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_csv_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2173791505)!
        }
        }
    }()
    public func storeCsvLine(values: Godot.PackedStringArray, delim: Godot.GodotString = ",") {
        values.withGodotUnsafeRawPointer { __ptr_values in
        delim.withGodotUnsafeRawPointer { __ptr_delim in
        withUnsafeArgumentPackPointer(__ptr_values, __ptr_delim) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_csv_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_store_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func storeString(_ string: Godot.GodotString) {
        string.withGodotUnsafeRawPointer { __ptr_string in
        withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_string,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_store_var: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_var").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 738511890)!
        }
        }
    }()
    public func storeVar<Value: VariantStorableIn>(value: Value, fullObjects: Bool = false) {
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        fullObjects.withGodotUnsafeRawPointer { __ptr_fullObjects in
        withUnsafeArgumentPackPointer(__ptr_value, __ptr_fullObjects) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_var,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_store_pascal_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "store_pascal_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func storePascalString(_ string: Godot.GodotString) {
        string.withGodotUnsafeRawPointer { __ptr_string in
        withUnsafeArgumentPackPointer(__ptr_string) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_store_pascal_string,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_pascal_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pascal_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    public func pascalString() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_pascal_string,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_close: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "close").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func close() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_close,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_file_exists: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "file_exists").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    static public func fileExists(path: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_file_exists,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_get_modified_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_modified_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1597066294)!
        }
        }
    }()
    static public func modifiedTime(file: Godot.GodotString) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_modified_time,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_get_unix_permissions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unix_permissions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 524341837)!
        }
        }
    }()
    static public func unixPermissions(file: Godot.GodotString) -> Godot.FileAccess.UnixPermissionFlags {
        Godot.FileAccess.UnixPermissionFlags.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_unix_permissions,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_set_unix_permissions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unix_permissions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 846038644)!
        }
        }
    }()
    static public func setUnixPermissions(file: Godot.GodotString, permissions: Godot.FileAccess.UnixPermissionFlags) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        permissions.withGodotUnsafeRawPointer { __ptr_permissions in
        withUnsafeArgumentPackPointer(__ptr_file, __ptr_permissions) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_unix_permissions,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_hidden_attribute: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_hidden_attribute").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    static public func hiddenAttribute(file: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_hidden_attribute,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_set_hidden_attribute: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hidden_attribute").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2892558115)!
        }
        }
    }()
    static public func setHiddenAttribute(file: Godot.GodotString, hidden: Bool) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_file, __ptr_hidden) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_hidden_attribute,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_read_only_attribute: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_read_only_attribute").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2892558115)!
        }
        }
    }()
    static public func setReadOnlyAttribute(file: Godot.GodotString, ro: Bool) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        ro.withGodotUnsafeRawPointer { __ptr_ro in
        withUnsafeArgumentPackPointer(__ptr_file, __ptr_ro) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_read_only_attribute,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_read_only_attribute: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_read_only_attribute").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2323990056)!
        }
        }
    }()
    static public func readOnlyAttribute(file: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        file.withGodotUnsafeRawPointer { __ptr_file in
        withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_read_only_attribute,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    public var isBigEndian: Bool {
        get {
            __isBigEndian()
        }
        set {
            __setBigEndian(
                newValue
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