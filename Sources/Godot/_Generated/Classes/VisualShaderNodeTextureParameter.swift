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
            ("Default", 0),
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
            ("Default", 0),
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
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2227296876)!
        }
        }
    }()
    private func __setTextureType(_ type: Godot.VisualShaderNodeTextureParameter.TextureType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 367922070)!
        }
        }
    }()
    private func __getTextureType() -> Godot.VisualShaderNodeTextureParameter.TextureType {
        Godot.VisualShaderNodeTextureParameter.TextureType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color_default: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_default").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4217624432)!
        }
        }
    }()
    private func __setColorDefault(color: Godot.VisualShaderNodeTextureParameter.ColorDefault) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color_default,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_color_default: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_default").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3837060134)!
        }
        }
    }()
    private func __getColorDefault() -> Godot.VisualShaderNodeTextureParameter.ColorDefault {
        Godot.VisualShaderNodeTextureParameter.ColorDefault.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_default,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2147684752)!
        }
        }
    }()
    private func __setTextureFilter(_ filter: Godot.VisualShaderNodeTextureParameter.TextureFilter) {
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4184490817)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.VisualShaderNodeTextureParameter.TextureFilter {
        Godot.VisualShaderNodeTextureParameter.TextureFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2036143070)!
        }
        }
    }()
    private func __setTextureRepeat(_ `repeat`: Godot.VisualShaderNodeTextureParameter.TextureRepeat) {
        `repeat`.withGodotUnsafeRawPointer { __ptr_repeat in
        withUnsafeArgumentPackPointer(__ptr_repeat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1690132794)!
        }
        }
    }()
    private func __getTextureRepeat() -> Godot.VisualShaderNodeTextureParameter.TextureRepeat {
        Godot.VisualShaderNodeTextureParameter.TextureRepeat.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_repeat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1212687372)!
        }
        }
    }()
    private func __setTextureSource(_ source: Godot.VisualShaderNodeTextureParameter.TextureSource) {
        source.withGodotUnsafeRawPointer { __ptr_source in
        withUnsafeArgumentPackPointer(__ptr_source) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_source,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_source: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_source").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2039092262)!
        }
        }
    }()
    private func __getTextureSource() -> Godot.VisualShaderNodeTextureParameter.TextureSource {
        Godot.VisualShaderNodeTextureParameter.TextureSource.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_source,
            __ptr_self,
            nil,
            __temporary
        )}}
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