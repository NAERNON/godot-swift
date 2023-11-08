//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeTextureParameter: VisualShaderNodeParameter {
    public enum TextureType: UInt32, GodotEnum {
        case data = 0
        case color = 1
        case normalMap = 2
        case anisotropy = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Data", 0),
            ("Color", 1),
            ("Normal Map", 2),
            ("Anisotropy", 3),
            ("Max", 4),]
        }
    }
    public enum ColorDefault: UInt32, GodotEnum {
        case white = 0
        case black = 1
        case transparent = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("White", 0),
            ("Black", 1),
            ("Transparent", 2),
            ("Max", 3),]
        }
    }
    public enum TextureFilter: UInt32, GodotEnum {
        case `default` = 0
        case nearest = 1
        case linear = 2
        case nearestMipmap = 3
        case linearMipmap = 4
        case nearestMipmapAnisotropic = 5
        case linearMipmapAnisotropic = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("`default`", 0),
            ("Nearest", 1),
            ("Linear", 2),
            ("Nearest Mipmap", 3),
            ("Linear Mipmap", 4),
            ("Nearest Mipmap Anisotropic", 5),
            ("Linear Mipmap Anisotropic", 6),
            ("Max", 7),]
        }
    }
    public enum TextureRepeat: UInt32, GodotEnum {
        case `default` = 0
        case enabled = 1
        case disabled = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("`default`", 0),
            ("Enabled", 1),
            ("Disabled", 2),
            ("Max", 3),]
        }
    }
    public enum TextureSource: UInt32, GodotEnum {
        case none = 0
        case screen = 1
        case depth = 2
        case normalRoughness = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Screen", 1),
            ("Depth", 2),
            ("Normal Roughness", 3),
            ("Max", 4),]
        }
    }

    private static var __method_binding_set_texture_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2227296876)!
        }
        }
    }()
    private func __setTextureType(_ type: Godot.VisualShaderNodeTextureParameter.TextureType) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 367922070)!
        }
        }
    }()
    private func __getTextureType() -> Godot.VisualShaderNodeTextureParameter.TextureType {
        var __temporary = Godot.VisualShaderNodeTextureParameter.TextureType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_type,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTextureParameter.TextureType(rawValue: __temporary)!
    }

    private static var __method_binding_set_color_default: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_default").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4217624432)!
        }
        }
    }()
    private func __setColorDefault(color: Godot.VisualShaderNodeTextureParameter.ColorDefault) {
        withUnsafePointer(to: color) { (__ptr_color) in
            withUnsafeArgumentPackPointer(__ptr_color) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_color_default,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_color_default: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_default").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3837060134)!
        }
        }
    }()
    private func __getColorDefault() -> Godot.VisualShaderNodeTextureParameter.ColorDefault {
        var __temporary = Godot.VisualShaderNodeTextureParameter.ColorDefault.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color_default,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTextureParameter.ColorDefault(rawValue: __temporary)!
    }

    private static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2147684752)!
        }
        }
    }()
    private func __setTextureFilter(_ filter: Godot.VisualShaderNodeTextureParameter.TextureFilter) {
        withUnsafePointer(to: filter) { (__ptr_filter) in
            withUnsafeArgumentPackPointer(__ptr_filter) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_filter,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4184490817)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.VisualShaderNodeTextureParameter.TextureFilter {
        var __temporary = Godot.VisualShaderNodeTextureParameter.TextureFilter.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_filter,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTextureParameter.TextureFilter(rawValue: __temporary)!
    }

    private static var __method_binding_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_repeat").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2036143070)!
        }
        }
    }()
    private func __setTextureRepeat(_ `repeat`: Godot.VisualShaderNodeTextureParameter.TextureRepeat) {
        withUnsafePointer(to: `repeat`) { (__ptr_repeat) in
            withUnsafeArgumentPackPointer(__ptr_repeat) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_repeat,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_repeat: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_repeat").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1690132794)!
        }
        }
    }()
    private func __getTextureRepeat() -> Godot.VisualShaderNodeTextureParameter.TextureRepeat {
        var __temporary = Godot.VisualShaderNodeTextureParameter.TextureRepeat.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_repeat,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTextureParameter.TextureRepeat(rawValue: __temporary)!
    }

    private static var __method_binding_set_texture_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1212687372)!
        }
        }
    }()
    private func __setTextureSource(_ source: Godot.VisualShaderNodeTextureParameter.TextureSource) {
        withUnsafePointer(to: source) { (__ptr_source) in
            withUnsafeArgumentPackPointer(__ptr_source) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_texture_source,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_texture_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2039092262)!
        }
        }
    }()
    private func __getTextureSource() -> Godot.VisualShaderNodeTextureParameter.TextureSource {
        var __temporary = Godot.VisualShaderNodeTextureParameter.TextureSource.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_texture_source,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTextureParameter.TextureSource(rawValue: __temporary)!
    }

    public var textureType: Godot.VisualShaderNodeTextureParameter.TextureType {
        get {
            __getTextureType()
        }
        set {
            __setTextureType(
                newValue
            )
        }
    }

    public var colorDefault: Godot.VisualShaderNodeTextureParameter.ColorDefault {
        get {
            __getColorDefault()
        }
        set {
            __setColorDefault(
                color: newValue
            )
        }
    }

    public var textureFilter: Godot.VisualShaderNodeTextureParameter.TextureFilter {
        get {
            __getTextureFilter()
        }
        set {
            __setTextureFilter(
                newValue
            )
        }
    }

    public var textureRepeat: Godot.VisualShaderNodeTextureParameter.TextureRepeat {
        get {
            __getTextureRepeat()
        }
        set {
            __setTextureRepeat(
                newValue
            )
        }
    }

    public var textureSource: Godot.VisualShaderNodeTextureParameter.TextureSource {
        get {
            __getTextureSource()
        }
        set {
            __setTextureSource(
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