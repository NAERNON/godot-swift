//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDTextureView: RefCounted {
    private static var __method_binding_set_format_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_format_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 565531219)!
        }
        }
    }()
    private func __setFormatOverride(pMember: Godot.RenderingDevice.DataFormat) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_format_override,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_format_override: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_format_override").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2235804183)!
        }
        }
    }()
    private func __getFormatOverride() -> Godot.RenderingDevice.DataFormat {
        var __temporary = Godot.RenderingDevice.DataFormat.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_format_override,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.DataFormat(rawValue: __temporary)!
    }

    private static var __method_binding_set_swizzle_r: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_swizzle_r").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleR(pMember: Godot.RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_swizzle_r,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_swizzle_r: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_swizzle_r").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleR() -> Godot.RenderingDevice.TextureSwizzle {
        var __temporary = Godot.RenderingDevice.TextureSwizzle.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_swizzle_r,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.TextureSwizzle(rawValue: __temporary)!
    }

    private static var __method_binding_set_swizzle_g: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_swizzle_g").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleG(pMember: Godot.RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_swizzle_g,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_swizzle_g: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_swizzle_g").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleG() -> Godot.RenderingDevice.TextureSwizzle {
        var __temporary = Godot.RenderingDevice.TextureSwizzle.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_swizzle_g,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.TextureSwizzle(rawValue: __temporary)!
    }

    private static var __method_binding_set_swizzle_b: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_swizzle_b").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleB(pMember: Godot.RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_swizzle_b,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_swizzle_b: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_swizzle_b").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleB() -> Godot.RenderingDevice.TextureSwizzle {
        var __temporary = Godot.RenderingDevice.TextureSwizzle.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_swizzle_b,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.TextureSwizzle(rawValue: __temporary)!
    }

    private static var __method_binding_set_swizzle_a: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_swizzle_a").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3833362581)!
        }
        }
    }()
    private func __setSwizzleA(pMember: Godot.RenderingDevice.TextureSwizzle) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_swizzle_a,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_swizzle_a: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_swizzle_a").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4150792614)!
        }
        }
    }()
    private func __getSwizzleA() -> Godot.RenderingDevice.TextureSwizzle {
        var __temporary = Godot.RenderingDevice.TextureSwizzle.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_swizzle_a,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.TextureSwizzle(rawValue: __temporary)!
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