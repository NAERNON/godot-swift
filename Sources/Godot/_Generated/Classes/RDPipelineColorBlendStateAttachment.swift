//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDPipelineColorBlendStateAttachment: RefCounted {
    private static var __method_binding_set_as_mix: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_as_mix").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setAsMix() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_set_as_mix,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_enable_blend: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_enable_blend").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEnableBlend(pMember: Bool) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_enable_blend,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_enable_blend: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_enable_blend").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getEnableBlend() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_enable_blend,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_src_color_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_src_color_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2251019273)!
        }
        }
    }()
    private func __setSrcColorBlendFactor(pMember: Godot.RenderingDevice.BlendFactor) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_src_color_blend_factor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_src_color_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_src_color_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3691288359)!
        }
        }
    }()
    private func __getSrcColorBlendFactor() -> Godot.RenderingDevice.BlendFactor {
        var __temporary = Godot.RenderingDevice.BlendFactor.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_src_color_blend_factor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendFactor(rawValue: __temporary)!
    }

    private static var __method_binding_set_dst_color_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_dst_color_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2251019273)!
        }
        }
    }()
    private func __setDstColorBlendFactor(pMember: Godot.RenderingDevice.BlendFactor) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_dst_color_blend_factor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_dst_color_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_dst_color_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3691288359)!
        }
        }
    }()
    private func __getDstColorBlendFactor() -> Godot.RenderingDevice.BlendFactor {
        var __temporary = Godot.RenderingDevice.BlendFactor.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_dst_color_blend_factor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendFactor(rawValue: __temporary)!
    }

    private static var __method_binding_set_color_blend_op: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_color_blend_op").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3073022720)!
        }
        }
    }()
    private func __setColorBlendOp(pMember: Godot.RenderingDevice.BlendOperation) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_color_blend_op,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_color_blend_op: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_color_blend_op").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1385093561)!
        }
        }
    }()
    private func __getColorBlendOp() -> Godot.RenderingDevice.BlendOperation {
        var __temporary = Godot.RenderingDevice.BlendOperation.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_color_blend_op,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendOperation(rawValue: __temporary)!
    }

    private static var __method_binding_set_src_alpha_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_src_alpha_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2251019273)!
        }
        }
    }()
    private func __setSrcAlphaBlendFactor(pMember: Godot.RenderingDevice.BlendFactor) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_src_alpha_blend_factor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_src_alpha_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_src_alpha_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3691288359)!
        }
        }
    }()
    private func __getSrcAlphaBlendFactor() -> Godot.RenderingDevice.BlendFactor {
        var __temporary = Godot.RenderingDevice.BlendFactor.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_src_alpha_blend_factor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendFactor(rawValue: __temporary)!
    }

    private static var __method_binding_set_dst_alpha_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_dst_alpha_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2251019273)!
        }
        }
    }()
    private func __setDstAlphaBlendFactor(pMember: Godot.RenderingDevice.BlendFactor) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_dst_alpha_blend_factor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_dst_alpha_blend_factor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_dst_alpha_blend_factor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3691288359)!
        }
        }
    }()
    private func __getDstAlphaBlendFactor() -> Godot.RenderingDevice.BlendFactor {
        var __temporary = Godot.RenderingDevice.BlendFactor.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_dst_alpha_blend_factor,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendFactor(rawValue: __temporary)!
    }

    private static var __method_binding_set_alpha_blend_op: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_alpha_blend_op").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3073022720)!
        }
        }
    }()
    private func __setAlphaBlendOp(pMember: Godot.RenderingDevice.BlendOperation) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_alpha_blend_op,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_alpha_blend_op: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_alpha_blend_op").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1385093561)!
        }
        }
    }()
    private func __getAlphaBlendOp() -> Godot.RenderingDevice.BlendOperation {
        var __temporary = Godot.RenderingDevice.BlendOperation.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_alpha_blend_op,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.BlendOperation(rawValue: __temporary)!
    }

    private static var __method_binding_set_write_r: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_write_r").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setWriteR(pMember: Bool) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_write_r,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_write_r: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_write_r").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getWriteR() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_write_r,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_write_g: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_write_g").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setWriteG(pMember: Bool) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_write_g,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_write_g: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_write_g").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getWriteG() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_write_g,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_write_b: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_write_b").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setWriteB(pMember: Bool) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_write_b,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_write_b: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_write_b").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getWriteB() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_write_b,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_write_a: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_write_a").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setWriteA(pMember: Bool) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_write_a,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_write_a: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_write_a").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getWriteA() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_write_a,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var enableBlend: Bool {
        get {
            __getEnableBlend()
        }
        set {
            __setEnableBlend(
                pMember: newValue
            )
        }
    }

    public var srcColorBlendFactor: Godot.RenderingDevice.BlendFactor {
        get {
            __getSrcColorBlendFactor()
        }
        set {
            __setSrcColorBlendFactor(
                pMember: newValue
            )
        }
    }

    public var dstColorBlendFactor: Godot.RenderingDevice.BlendFactor {
        get {
            __getDstColorBlendFactor()
        }
        set {
            __setDstColorBlendFactor(
                pMember: newValue
            )
        }
    }

    public var colorBlendOp: Godot.RenderingDevice.BlendOperation {
        get {
            __getColorBlendOp()
        }
        set {
            __setColorBlendOp(
                pMember: newValue
            )
        }
    }

    public var srcAlphaBlendFactor: Godot.RenderingDevice.BlendFactor {
        get {
            __getSrcAlphaBlendFactor()
        }
        set {
            __setSrcAlphaBlendFactor(
                pMember: newValue
            )
        }
    }

    public var dstAlphaBlendFactor: Godot.RenderingDevice.BlendFactor {
        get {
            __getDstAlphaBlendFactor()
        }
        set {
            __setDstAlphaBlendFactor(
                pMember: newValue
            )
        }
    }

    public var alphaBlendOp: Godot.RenderingDevice.BlendOperation {
        get {
            __getAlphaBlendOp()
        }
        set {
            __setAlphaBlendOp(
                pMember: newValue
            )
        }
    }

    public var writeR: Bool {
        get {
            __getWriteR()
        }
        set {
            __setWriteR(
                pMember: newValue
            )
        }
    }

    public var writeG: Bool {
        get {
            __getWriteG()
        }
        set {
            __setWriteG(
                pMember: newValue
            )
        }
    }

    public var writeB: Bool {
        get {
            __getWriteB()
        }
        set {
            __setWriteB(
                pMember: newValue
            )
        }
    }

    public var writeA: Bool {
        get {
            __getWriteA()
        }
        set {
            __setWriteA(
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