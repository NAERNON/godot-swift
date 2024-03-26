//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class SkeletonModification2DCCDIK: SkeletonModification2D {
    internal static var __method_binding_set_target_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_target_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setTargetNode(
        targetNodepath: Godot.NodePath
    ) {
        targetNodepath.withGodotUnsafeRawPointer { __ptr_targetNodepath in
        withUnsafeArgumentPackPointer(__ptr_targetNodepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_target_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_target_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_target_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getTargetNode() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_target_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_tip_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tip_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
        }
        }
    }()

    private func __setTipNode(
        tipNodepath: Godot.NodePath
    ) {
        tipNodepath.withGodotUnsafeRawPointer { __ptr_tipNodepath in
        withUnsafeArgumentPackPointer(__ptr_tipNodepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_tip_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_tip_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tip_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
        }
        }
    }()

    private func __getTipNode() -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tip_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_ccdik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_data_chain_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setCcdikDataChainLength(
        _ length: Int32
    ) {
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_data_chain_length,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_ccdik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_data_chain_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getCcdikDataChainLength() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_data_chain_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_ccdik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_bone2d_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()

    public func setCcdikJointBone2dNode(
        jointIdx: Int32,
        bone2dNodepath: Godot.NodePath
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        bone2dNodepath.withGodotUnsafeRawPointer { __ptr_bone2dNodepath in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_bone2dNodepath) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_bone2d_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_bone2d_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()

    public func ccdikJointBone2dNode(
        jointIdx: Int32
    ) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_bone2d_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_bone_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setCcdikJointBoneIndex(
        jointIdx: Int32,
        boneIdx: Int32
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        boneIdx.withGodotUnsafeRawPointer { __ptr_boneIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_boneIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_bone_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_bone_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func ccdikJointBoneIndex(
        jointIdx: Int32
    ) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_bone_index,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_rotate_from_joint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_rotate_from_joint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCcdikJointRotateFromJoint(
        jointIdx: Int32,
        rotateFromJoint: Bool
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        rotateFromJoint.withGodotUnsafeRawPointer { __ptr_rotateFromJoint in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_rotateFromJoint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_rotate_from_joint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_rotate_from_joint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_rotate_from_joint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func ccdikJointRotateFromJoint(
        jointIdx: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_rotate_from_joint,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_enable_constraint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_enable_constraint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCcdikJointEnableConstraint(
        jointIdx: Int32,
        enableConstraint: Bool
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        enableConstraint.withGodotUnsafeRawPointer { __ptr_enableConstraint in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_enableConstraint) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_enable_constraint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_enable_constraint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_enable_constraint").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func ccdikJointEnableConstraint(
        jointIdx: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_enable_constraint,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_constraint_angle_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setCcdikJointConstraintAngleMin(
        jointIdx: Int32,
        angleMin: Double
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        angleMin.withGodotUnsafeRawPointer { __ptr_angleMin in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_angleMin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_constraint_angle_min,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_constraint_angle_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()

    public func ccdikJointConstraintAngleMin(
        jointIdx: Int32
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_constraint_angle_min,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_constraint_angle_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()

    public func setCcdikJointConstraintAngleMax(
        jointIdx: Int32,
        angleMax: Double
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        angleMax.withGodotUnsafeRawPointer { __ptr_angleMax in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_angleMax) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_constraint_angle_max,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_constraint_angle_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
        }
        }
    }()

    public func ccdikJointConstraintAngleMax(
        jointIdx: Int32
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_constraint_angle_max,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_ccdik_joint_constraint_angle_invert: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_invert").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setCcdikJointConstraintAngleInvert(
        jointIdx: Int32,
        invert: Bool
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        invert.withGodotUnsafeRawPointer { __ptr_invert in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_invert) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ccdik_joint_constraint_angle_invert,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_ccdik_joint_constraint_angle_invert: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_invert").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func ccdikJointConstraintAngleInvert(
        jointIdx: Int32
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ccdik_joint_constraint_angle_invert,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var targetNode: Godot.NodePath {
        get {
            __getTargetNode()
        }
        set {
            __setTargetNode(
                targetNodepath: newValue
            )
        }
    }

    public var tipNode: Godot.NodePath {
        get {
            __getTipNode()
        }
        set {
            __setTipNode(
                tipNodepath: newValue
            )
        }
    }

    public var ccdikDataChainLength: Int32 {
        get {
            __getCcdikDataChainLength()
        }
        set {
            __setCcdikDataChainLength(
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