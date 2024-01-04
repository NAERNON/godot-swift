//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDTextureView: RefCounted {
    internal static var __method_binding_set_format_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_format_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 565531219)!
        }
        }
    }()
    private func __setFormatOverride(pMember: Godot.RenderingDevice.DataFormat) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_format_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_format_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_format_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2235804183)!
        }
        }
    }()
    private func __getFormatOverride() -> Godot.RenderingDevice.DataFormat {
        Godot.RenderingDevice.DataFormat.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_format_override,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_swizzle_r: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_swizzle_r").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleR(pMember: Godot.RenderingDevice.TextureSwizzle) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_swizzle_r,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_swizzle_r: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swizzle_r").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleR() -> Godot.RenderingDevice.TextureSwizzle {
        Godot.RenderingDevice.TextureSwizzle.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_swizzle_r,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_swizzle_g: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_swizzle_g").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleG(pMember: Godot.RenderingDevice.TextureSwizzle) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_swizzle_g,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_swizzle_g: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swizzle_g").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleG() -> Godot.RenderingDevice.TextureSwizzle {
        Godot.RenderingDevice.TextureSwizzle.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_swizzle_g,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_swizzle_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_swizzle_b").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleB(pMember: Godot.RenderingDevice.TextureSwizzle) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_swizzle_b,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_swizzle_b: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swizzle_b").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleB() -> Godot.RenderingDevice.TextureSwizzle {
        Godot.RenderingDevice.TextureSwizzle.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_swizzle_b,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_swizzle_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_swizzle_a").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleA(pMember: Godot.RenderingDevice.TextureSwizzle) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_swizzle_a,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_swizzle_a: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_swizzle_a").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleA() -> Godot.RenderingDevice.TextureSwizzle {
        Godot.RenderingDevice.TextureSwizzle.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_swizzle_a,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var formatOverride: Godot.RenderingDevice.DataFormat {
        get {
            __getFormatOverride()
        }
        set {
            __setFormatOverride(
                pMember: newValue
            )
        }
    }

    public var swizzleR: Godot.RenderingDevice.TextureSwizzle {
        get {
            __getSwizzleR()
        }
        set {
            __setSwizzleR(
                pMember: newValue
            )
        }
    }

    public var swizzleG: Godot.RenderingDevice.TextureSwizzle {
        get {
            __getSwizzleG()
        }
        set {
            __setSwizzleG(
                pMember: newValue
            )
        }
    }

    public var swizzleB: Godot.RenderingDevice.TextureSwizzle {
        get {
            __getSwizzleB()
        }
        set {
            __setSwizzleB(
                pMember: newValue
            )
        }
    }

    public var swizzleA: Godot.RenderingDevice.TextureSwizzle {
        get {
            __getSwizzleA()
        }
        set {
            __setSwizzleA(
                pMember: newValue
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