//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class SkeletonModification2DFABRIK: SkeletonModification2D {
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

    internal static var __method_binding_set_fabrik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fabrik_data_chain_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setFabrikDataChainLength(
        _ length: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
            withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_fabrik_data_chain_length,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_fabrik_data_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fabrik_data_chain_length").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getFabrikDataChainLength() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_fabrik_data_chain_length,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_fabrik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fabrik_joint_bone2d_node").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()

    public func setFabrikJointBone2dNode(
        jointIdx: Int32,
        bone2dNodepath: Godot.NodePath
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: bone2dNodepath) { __ptr_bone2dNodepath in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_bone2dNodepath) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_fabrik_joint_bone2d_node,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_fabrik_joint_bone2d_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fabrik_joint_bone2d_node").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()

    public func fabrikJointBone2dNode(
        jointIdx: Int32
    ) -> Godot.NodePath {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_fabrik_joint_bone2d_node,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_fabrik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fabrik_joint_bone_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()

    public func setFabrikJointBoneIndex(
        jointIdx: Int32,
        boneIdx: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: boneIdx) { __ptr_boneIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_boneIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_fabrik_joint_bone_index,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_fabrik_joint_bone_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fabrik_joint_bone_index").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func fabrikJointBoneIndex(
        jointIdx: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_fabrik_joint_bone_index,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_fabrik_joint_magnet_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fabrik_joint_magnet_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 163021252)!
        }
        }
    }()

    public func setFabrikJointMagnetPosition(
        jointIdx: Int32,
        magnetPosition: Godot.Vector2
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: magnetPosition) { __ptr_magnetPosition in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_magnetPosition) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_fabrik_joint_magnet_position,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_fabrik_joint_magnet_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fabrik_joint_magnet_position").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2299179447)!
        }
        }
    }()

    public func fabrikJointMagnetPosition(
        jointIdx: Int32
    ) -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_fabrik_joint_magnet_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_fabrik_joint_use_target_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fabrik_joint_use_target_rotation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()

    public func setFabrikJointUseTargetRotation(
        jointIdx: Int32,
        useTargetRotation: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
            withTransferrableUnsafeRawPointer(to: useTargetRotation) { __ptr_useTargetRotation in
                withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_useTargetRotation) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_fabrik_joint_use_target_rotation,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_fabrik_joint_use_target_rotation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fabrik_joint_use_target_rotation").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func fabrikJointUseTargetRotation(
        jointIdx: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: jointIdx) { __ptr_jointIdx in
                withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_fabrik_joint_use_target_rotation,
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
        set {
            __setTargetNode(
                targetNodepath: newValue
            )
        }
    }

    public var fabrikDataChainLength: Int32 {
        get {
            __getFabrikDataChainLength()
        }
        set {
            __setFabrikDataChainLength(
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