//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class RDPipelineDepthStencilState: RefCounted {
    internal static var __method_binding_set_enable_depth_test: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_depth_test").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableDepthTest(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_depth_test,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_depth_test: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_depth_test").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableDepthTest() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_depth_test,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_depth_write: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_depth_write").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableDepthWrite(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_depth_write,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_depth_write: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_depth_write").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableDepthWrite() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_depth_write,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_depth_compare_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_compare_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2573711505)!
        }
        }
    }()

    private func __setDepthCompareOperator(
        pMember: Godot.RenderingDevice.CompareOperator
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_compare_operator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_depth_compare_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_compare_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 269730778)!
        }
        }
    }()

    private func __getDepthCompareOperator() -> Godot.RenderingDevice.CompareOperator {
        Godot.RenderingDevice.CompareOperator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_compare_operator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_depth_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_depth_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableDepthRange(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_depth_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_depth_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_depth_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableDepthRange() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_depth_range,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_depth_range_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_range_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDepthRangeMin(
        pMember: Double
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_range_min,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_depth_range_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_range_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDepthRangeMin() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_range_min,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_depth_range_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_range_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setDepthRangeMax(
        pMember: Double
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_range_max,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_depth_range_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_range_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getDepthRangeMax() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_range_max,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_stencil: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_stencil").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableStencil(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_stencil,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_stencil: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_stencil").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableStencil() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_stencil,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setFrontOpFail(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_fail,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getFrontOpFail() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_fail,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setFrontOpPass(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_pass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getFrontOpPass() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_pass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_depth_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_depth_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setFrontOpDepthFail(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_depth_fail,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_depth_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_depth_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getFrontOpDepthFail() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_depth_fail,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_compare").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2573711505)!
        }
        }
    }()

    private func __setFrontOpCompare(
        pMember: Godot.RenderingDevice.CompareOperator
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_compare,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_compare").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 269730778)!
        }
        }
    }()

    private func __getFrontOpCompare() -> Godot.RenderingDevice.CompareOperator {
        Godot.RenderingDevice.CompareOperator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_compare,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_compare_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_compare_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFrontOpCompareMask(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_compare_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_compare_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_compare_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFrontOpCompareMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_compare_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_write_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_write_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFrontOpWriteMask(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_write_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_write_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_write_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFrontOpWriteMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_write_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_front_op_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_op_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFrontOpReference(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_op_reference,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_front_op_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_op_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getFrontOpReference() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_op_reference,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setBackOpFail(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_fail,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getBackOpFail() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_fail,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setBackOpPass(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_pass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getBackOpPass() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_pass,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_depth_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_depth_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2092799566)!
        }
        }
    }()

    private func __setBackOpDepthFail(
        pMember: Godot.RenderingDevice.StencilOperation
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_depth_fail,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_depth_fail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_depth_fail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1714732389)!
        }
        }
    }()

    private func __getBackOpDepthFail() -> Godot.RenderingDevice.StencilOperation {
        Godot.RenderingDevice.StencilOperation.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_depth_fail,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_compare").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2573711505)!
        }
        }
    }()

    private func __setBackOpCompare(
        pMember: Godot.RenderingDevice.CompareOperator
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_compare,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_compare").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 269730778)!
        }
        }
    }()

    private func __getBackOpCompare() -> Godot.RenderingDevice.CompareOperator {
        Godot.RenderingDevice.CompareOperator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_compare,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_compare_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_compare_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBackOpCompareMask(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_compare_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_compare_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_compare_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBackOpCompareMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_compare_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_write_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_write_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBackOpWriteMask(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_write_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_write_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_write_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBackOpWriteMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_write_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_back_op_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_back_op_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setBackOpReference(
        pMember: UInt32
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_back_op_reference,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_back_op_reference: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_back_op_reference").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    private func __getBackOpReference() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_back_op_reference,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var enableDepthTest: Bool {
        get {
            __getEnableDepthTest()
        }
        set {
            __setEnableDepthTest(
                pMember: newValue
            )
        }
    }

    public var enableDepthWrite: Bool {
        get {
            __getEnableDepthWrite()
        }
        set {
            __setEnableDepthWrite(
                pMember: newValue
            )
        }
    }

    public var depthCompareOperator: Godot.RenderingDevice.CompareOperator {
        get {
            __getDepthCompareOperator()
        }
        set {
            __setDepthCompareOperator(
                pMember: newValue
            )
        }
    }

    public var enableDepthRange: Bool {
        get {
            __getEnableDepthRange()
        }
        set {
            __setEnableDepthRange(
                pMember: newValue
            )
        }
    }

    public var depthRangeMin: Double {
        get {
            __getDepthRangeMin()
        }
        set {
            __setDepthRangeMin(
                pMember: newValue
            )
        }
    }

    public var depthRangeMax: Double {
        get {
            __getDepthRangeMax()
        }
        set {
            __setDepthRangeMax(
                pMember: newValue
            )
        }
    }

    public var enableStencil: Bool {
        get {
            __getEnableStencil()
        }
        set {
            __setEnableStencil(
                pMember: newValue
            )
        }
    }

    public var frontOpFail: Godot.RenderingDevice.StencilOperation {
        get {
            __getFrontOpFail()
        }
        set {
            __setFrontOpFail(
                pMember: newValue
            )
        }
    }

    public var frontOpPass: Godot.RenderingDevice.StencilOperation {
        get {
            __getFrontOpPass()
        }
        set {
            __setFrontOpPass(
                pMember: newValue
            )
        }
    }

    public var frontOpDepthFail: Godot.RenderingDevice.StencilOperation {
        get {
            __getFrontOpDepthFail()
        }
        set {
            __setFrontOpDepthFail(
                pMember: newValue
            )
        }
    }

    public var frontOpCompare: Godot.RenderingDevice.CompareOperator {
        get {
            __getFrontOpCompare()
        }
        set {
            __setFrontOpCompare(
                pMember: newValue
            )
        }
    }

    public var frontOpCompareMask: UInt32 {
        get {
            __getFrontOpCompareMask()
        }
        set {
            __setFrontOpCompareMask(
                pMember: newValue
            )
        }
    }

    public var frontOpWriteMask: UInt32 {
        get {
            __getFrontOpWriteMask()
        }
        set {
            __setFrontOpWriteMask(
                pMember: newValue
            )
        }
    }

    public var frontOpReference: UInt32 {
        get {
            __getFrontOpReference()
        }
        set {
            __setFrontOpReference(
                pMember: newValue
            )
        }
    }

    public var backOpFail: Godot.RenderingDevice.StencilOperation {
        get {
            __getBackOpFail()
        }
        set {
            __setBackOpFail(
                pMember: newValue
            )
        }
    }

    public var backOpPass: Godot.RenderingDevice.StencilOperation {
        get {
            __getBackOpPass()
        }
        set {
            __setBackOpPass(
                pMember: newValue
            )
        }
    }

    public var backOpDepthFail: Godot.RenderingDevice.StencilOperation {
        get {
            __getBackOpDepthFail()
        }
        set {
            __setBackOpDepthFail(
                pMember: newValue
            )
        }
    }

    public var backOpCompare: Godot.RenderingDevice.CompareOperator {
        get {
            __getBackOpCompare()
        }
        set {
            __setBackOpCompare(
                pMember: newValue
            )
        }
    }

    public var backOpCompareMask: UInt32 {
        get {
            __getBackOpCompareMask()
        }
        set {
            __setBackOpCompareMask(
                pMember: newValue
            )
        }
    }

    public var backOpWriteMask: UInt32 {
        get {
            __getBackOpWriteMask()
        }
        set {
            __setBackOpWriteMask(
                pMember: newValue
            )
        }
    }

    public var backOpReference: UInt32 {
        get {
            __getBackOpReference()
        }
        set {
            __setBackOpReference(
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