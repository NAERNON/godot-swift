//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDPipelineColorBlendState: RefCounted {
    private static var __method_binding_set_enable_logic_op: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_logic_op").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEnableLogicOp(pMember: Bool) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_enable_logic_op,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_enable_logic_op: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_logic_op").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getEnableLogicOp() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_enable_logic_op,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_logic_op: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_logic_op").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3610841058)!
        }
        }
    }()
    private func __setLogicOp(pMember: Godot.RenderingDevice.LogicOperation) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_logic_op,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_logic_op: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_logic_op").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 988254690)!
        }
        }
    }()
    private func __getLogicOp() -> Godot.RenderingDevice.LogicOperation {
        Godot.RenderingDevice.LogicOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_logic_op,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_blend_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_blend_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setBlendConstant(pMember: Godot.Color) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_blend_constant,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_blend_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_blend_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getBlendConstant() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_blend_constant,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_attachments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_attachments").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setAttachments(_ attachments: Godot.GodotArray<Godot.RDPipelineColorBlendStateAttachment?>) {
        attachments.withGodotUnsafeRawPointer { __ptr_attachments in
        withUnsafeArgumentPackPointer(__ptr_attachments) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_attachments,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_attachments: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_attachments").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getAttachments() -> Godot.GodotArray<Godot.RDPipelineColorBlendStateAttachment?> {
        Godot.GodotArray<Godot.RDPipelineColorBlendStateAttachment?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_attachments,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var enableLogicOp: Bool {
        get {
            __getEnableLogicOp()
        }
        set {
            __setEnableLogicOp(
                pMember: newValue
            )
        }
    }

    public var logicOp: Godot.RenderingDevice.LogicOperation {
        get {
            __getLogicOp()
        }
        set {
            __setLogicOp(
                pMember: newValue
            )
        }
    }

    public var blendConstant: Godot.Color {
        get {
            __getBlendConstant()
        }
        set {
            __setBlendConstant(
                pMember: newValue
            )
        }
    }

    public var attachments: Godot.GodotArray<Godot.RDPipelineColorBlendStateAttachment?> {
        get {
            __getAttachments()
        }
        set {
            __setAttachments(
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