//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class CanvasTexture: Texture2D {
    internal static var __method_binding_set_diffuse_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_diffuse_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setDiffuseTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_diffuse_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_diffuse_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_diffuse_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getDiffuseTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_diffuse_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_normal_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_normal_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setNormalTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_normal_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_normal_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_normal_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getNormalTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_normal_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_specular_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setSpecularTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_specular_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_specular_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getSpecularTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_specular_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_specular_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setSpecularColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_specular_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_specular_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getSpecularColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_specular_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_specular_shininess: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular_shininess").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setSpecularShininess(_ shininess: Double) {
        shininess.withGodotUnsafeRawPointer { __ptr_shininess in
        withUnsafeArgumentPackPointer(__ptr_shininess) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_specular_shininess,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_specular_shininess: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular_shininess").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getSpecularShininess() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_specular_shininess,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1037999706)!
        }
        }
    }()
    private func __setTextureFilter(_ filter: Godot.CanvasItem.TextureFilter) {
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

    internal static var __method_binding_get_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 121960042)!
        }
        }
    }()
    private func __getTextureFilter() -> Godot.CanvasItem.TextureFilter {
        Godot.CanvasItem.TextureFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1716472974)!
        }
        }
    }()
    private func __setTextureRepeat(_ `repeat`: Godot.CanvasItem.TextureRepeat) {
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

    internal static var __method_binding_get_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2667158319)!
        }
        }
    }()
    private func __getTextureRepeat() -> Godot.CanvasItem.TextureRepeat {
        Godot.CanvasItem.TextureRepeat.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_repeat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var diffuseTexture: Godot.Texture2D? {
        get {
            __getDiffuseTexture()
        }
        set {
            __setDiffuseTexture(
                newValue
            )
        }
    }

    public var normalTexture: Godot.Texture2D? {
        get {
            __getNormalTexture()
        }
        set {
            __setNormalTexture(
                newValue
            )
        }
    }

    public var specularTexture: Godot.Texture2D? {
        get {
            __getSpecularTexture()
        }
        set {
            __setSpecularTexture(
                newValue
            )
        }
    }

    public var specularColor: Godot.Color {
        get {
            __getSpecularColor()
        }
        set {
            __setSpecularColor(
                newValue
            )
        }
    }

    public var specularShininess: Double {
        get {
            __getSpecularShininess()
        }
        set {
            __setSpecularShininess(
                newValue
            )
        }
    }

    public var textureFilter: Godot.CanvasItem.TextureFilter {
        get {
            __getTextureFilter()
        }
        set {
            __setTextureFilter(
                newValue
            )
        }
    }

    public var textureRepeat: Godot.CanvasItem.TextureRepeat {
        get {
            __getTextureRepeat()
        }
        set {
            __setTextureRepeat(
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