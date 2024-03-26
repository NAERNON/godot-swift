//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class GLTFSpecGloss: Resource {
    internal static var __method_binding_get_diffuse_img: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_diffuse_img").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 564927088)!
        }
        }
    }()

    private func __getDiffuseImg() -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_diffuse_img,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_diffuse_img: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_diffuse_img").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 532598488)!
        }
        }
    }()

    private func __setDiffuseImg(
        _ diffuseImg: Godot.Image?
    ) {
        diffuseImg.withGodotUnsafeRawPointer { __ptr_diffuseImg in
        withUnsafePointer(to: __ptr_diffuseImg) { _ptr___ptr_diffuseImg in
        withUnsafeArgumentPackPointer(_ptr___ptr_diffuseImg) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_diffuse_img,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_diffuse_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_diffuse_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200896285)!
        }
        }
    }()

    private func __getDiffuseFactor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_diffuse_factor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_diffuse_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_diffuse_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()

    private func __setDiffuseFactor(
        _ diffuseFactor: Godot.Color
    ) {
        diffuseFactor.withGodotUnsafeRawPointer { __ptr_diffuseFactor in
        withUnsafeArgumentPackPointer(__ptr_diffuseFactor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_diffuse_factor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_gloss_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_gloss_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()

    private func __getGlossFactor() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_gloss_factor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_gloss_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_gloss_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setGlossFactor(
        _ glossFactor: Double
    ) {
        glossFactor.withGodotUnsafeRawPointer { __ptr_glossFactor in
        withUnsafeArgumentPackPointer(__ptr_glossFactor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_gloss_factor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_specular_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_specular_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200896285)!
        }
        }
    }()

    private func __getSpecularFactor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_specular_factor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_specular_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_specular_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()

    private func __setSpecularFactor(
        _ specularFactor: Godot.Color
    ) {
        specularFactor.withGodotUnsafeRawPointer { __ptr_specularFactor in
        withUnsafeArgumentPackPointer(__ptr_specularFactor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_specular_factor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_spec_gloss_img: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_spec_gloss_img").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 564927088)!
        }
        }
    }()

    private func __getSpecGlossImg() -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_spec_gloss_img,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_spec_gloss_img: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_spec_gloss_img").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 532598488)!
        }
        }
    }()

    private func __setSpecGlossImg(
        _ specGlossImg: Godot.Image?
    ) {
        specGlossImg.withGodotUnsafeRawPointer { __ptr_specGlossImg in
        withUnsafePointer(to: __ptr_specGlossImg) { _ptr___ptr_specGlossImg in
        withUnsafeArgumentPackPointer(_ptr___ptr_specGlossImg) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_spec_gloss_img,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var diffuseImg: Godot.Image? {
        get {
            __getDiffuseImg()
        }
        set {
            __setDiffuseImg(
                newValue
            )
        }
    }

    public var diffuseFactor: Godot.Color {
        get {
            __getDiffuseFactor()
        }
        set {
            __setDiffuseFactor(
                newValue
            )
        }
    }

    public var glossFactor: Double {
        get {
            __getGlossFactor()
        }
        set {
            __setGlossFactor(
                newValue
            )
        }
    }

    public var specularFactor: Godot.Color {
        get {
            __getSpecularFactor()
        }
        set {
            __setSpecularFactor(
                newValue
            )
        }
    }

    public var specGlossImg: Godot.Image? {
        get {
            __getSpecGlossImg()
        }
        set {
            __setSpecGlossImg(
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