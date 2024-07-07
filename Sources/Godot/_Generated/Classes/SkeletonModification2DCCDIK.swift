//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class SkeletonModification2DCCDIK: SkeletonModification2D {
    internal static var __method_binding_set_target_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_target_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
            }
        }
    }()
    
    private func __setTargetNode(
        targetNodepath: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: targetNodepath) { __ptr_targetNodepath in
            withUnsafeArgumentPackPointer(__ptr_targetNodepath) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_target_node,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_target_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_target_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
            }
        }
    }()
    
    private func __getTargetNode() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_target_node,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_tip_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_tip_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1348162250)!
            }
        }
    }()
    
    private func __setTipNode(
        tipNodepath: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: tipNodepath) { __ptr_tipNodepath in
            withUnsafeArgumentPackPointer(__ptr_tipNodepath) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_tip_node,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_tip_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_tip_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4075236667)!
            }
        }
    }()
    
    private func __getTipNode() -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_tip_node,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_data_chain_length").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setCcdikDataChainLength(
        _ length: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
            withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_ccdik_data_chain_length,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_data_chain_length").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
            }
        }
    }()
    
    private func __getCcdikDataChainLength() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_ccdik_data_chain_length,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_bone2d_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
            }
        }
    }()
    
    public func setCcdikJointBone2dNode(
        jointIdx: Int32,
        bone2dNodepath: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: bone2dNodepath) { __ptr_bone2dNodepath in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_bone2dNodepath) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_bone2d_node,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_bone2d_node").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
            }
        }
    }()
    
    public func ccdikJointBone2dNode(
        jointIdx: Int32
    ) -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_bone2d_node,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_bone_index").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func setCcdikJointBoneIndex(
        jointIdx: Int32,
        boneIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: boneIdx) { __ptr_boneIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_boneIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_bone_index,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_bone_index").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func ccdikJointBoneIndex(
        jointIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_bone_index,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_rotate_from_joint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_rotate_from_joint").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setCcdikJointRotateFromJoint(
        jointIdx: Int32,
        rotateFromJoint: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: rotateFromJoint) { __ptr_rotateFromJoint in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_rotateFromJoint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_rotate_from_joint,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_rotate_from_joint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_rotate_from_joint").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func ccdikJointRotateFromJoint(
        jointIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_rotate_from_joint,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_enable_constraint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_enable_constraint").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setCcdikJointEnableConstraint(
        jointIdx: Int32,
        enableConstraint: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: enableConstraint) { __ptr_enableConstraint in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_enableConstraint) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_enable_constraint,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_enable_constraint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_enable_constraint").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func ccdikJointEnableConstraint(
        jointIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_enable_constraint,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_constraint_angle_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_min").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
            }
        }
    }()
    
    public func setCcdikJointConstraintAngleMin(
        jointIdx: Int32,
        angleMin: Double
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: angleMin) { __ptr_angleMin in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_angleMin) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_constraint_angle_min,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_constraint_angle_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_min").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
            }
        }
    }()
    
    public func ccdikJointConstraintAngleMin(
        jointIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_constraint_angle_min,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_constraint_angle_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_max").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1602489585)!
            }
        }
    }()
    
    public func setCcdikJointConstraintAngleMax(
        jointIdx: Int32,
        angleMax: Double
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: angleMax) { __ptr_angleMax in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_angleMax) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_constraint_angle_max,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_constraint_angle_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_max").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339986948)!
            }
        }
    }()
    
    public func ccdikJointConstraintAngleMax(
        jointIdx: Int32
    ) -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_constraint_angle_max,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_ccdik_joint_constraint_angle_invert: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_ccdik_joint_constraint_angle_invert").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setCcdikJointConstraintAngleInvert(
        jointIdx: Int32,
        invert: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: invert) { __ptr_invert in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_invert) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_ccdik_joint_constraint_angle_invert,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_ccdik_joint_constraint_angle_invert: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_ccdik_joint_constraint_angle_invert").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func ccdikJointConstraintAngleInvert(
        jointIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_ccdik_joint_constraint_angle_invert,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    public var targetNode: Godot.NodePath {
        get {
            __getTargetNode()
        }
        set(newValue) {
            __setTargetNode(
                targetNodepath: newValue
            )
        }
    }
    
    public var tipNode: Godot.NodePath {
        get {
            __getTipNode()
        }
        set(newValue) {
            __setTipNode(
                tipNodepath: newValue
            )
        }
    }
    
    public var ccdikDataChainLength: Int32 {
        get {
            __getCcdikDataChainLength()
        }
        set(newValue) {
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
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}