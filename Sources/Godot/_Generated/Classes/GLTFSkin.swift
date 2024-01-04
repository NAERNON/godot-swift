//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFSkin: Resource {
    internal static var __method_binding_get_skin_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skin_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    private func __getSkinRoot() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skin_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skin_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skin_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSkinRoot(_ skinRoot: Int32) {
        skinRoot.withGodotUnsafeRawPointer { __ptr_skinRoot in
        withUnsafeArgumentPackPointer(__ptr_skinRoot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skin_root,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_joints_original: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joints_original").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getJointsOriginal() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joints_original,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_joints_original: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_joints_original").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setJointsOriginal(_ jointsOriginal: Godot.PackedInt32Array) {
        jointsOriginal.withGodotUnsafeRawPointer { __ptr_jointsOriginal in
        withUnsafeArgumentPackPointer(__ptr_jointsOriginal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_joints_original,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_inverse_binds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inverse_binds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getInverseBinds() -> Godot.GodotArray<Godot.Transform3D> {
        Godot.GodotArray<Godot.Transform3D>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inverse_binds,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_inverse_binds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_inverse_binds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setInverseBinds(_ inverseBinds: Godot.GodotArray<Godot.Transform3D>) {
        inverseBinds.withGodotUnsafeRawPointer { __ptr_inverseBinds in
        withUnsafeArgumentPackPointer(__ptr_inverseBinds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_inverse_binds,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getJoints() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joints,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setJoints(_ joints: Godot.PackedInt32Array) {
        joints.withGodotUnsafeRawPointer { __ptr_joints in
        withUnsafeArgumentPackPointer(__ptr_joints) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_joints,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_non_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_non_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getNonJoints() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_non_joints,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_non_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_non_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setNonJoints(_ nonJoints: Godot.PackedInt32Array) {
        nonJoints.withGodotUnsafeRawPointer { __ptr_nonJoints in
        withUnsafeArgumentPackPointer(__ptr_nonJoints) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_non_joints,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_roots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_roots").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getRoots() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_roots,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_roots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_roots").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setRoots(_ roots: Godot.PackedInt32Array) {
        roots.withGodotUnsafeRawPointer { __ptr_roots in
        withUnsafeArgumentPackPointer(__ptr_roots) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_roots,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    private func __getSkeleton() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skeleton,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSkeleton(_ skeleton: Int32) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        withUnsafeArgumentPackPointer(__ptr_skeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skeleton,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_joint_i_to_bone_i: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joint_i_to_bone_i").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()
    private func __getJointIToBoneI() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joint_i_to_bone_i,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_joint_i_to_bone_i: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_joint_i_to_bone_i").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setJointIToBoneI<Value1: VariantStorable, Value2: VariantStorable>(_ jointIToBoneI: Godot.GodotDictionary<Value1, Value2>) {
        jointIToBoneI.withGodotUnsafeRawPointer { __ptr_jointIToBoneI in
        withUnsafeArgumentPackPointer(__ptr_jointIToBoneI) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_joint_i_to_bone_i,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_joint_i_to_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joint_i_to_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()
    private func __getJointIToName() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_joint_i_to_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_joint_i_to_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_joint_i_to_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setJointIToName<Value1: VariantStorable, Value2: VariantStorable>(_ jointIToName: Godot.GodotDictionary<Value1, Value2>) {
        jointIToName.withGodotUnsafeRawPointer { __ptr_jointIToName in
        withUnsafeArgumentPackPointer(__ptr_jointIToName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_joint_i_to_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_godot_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_godot_skin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1032037385)!
        }
        }
    }()
    private func __getGodotSkin() -> Godot.Skin? {
        Godot.Skin?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_godot_skin,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_godot_skin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_godot_skin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3971435618)!
        }
        }
    }()
    private func __setGodotSkin(_ godotSkin: Godot.Skin?) {
        godotSkin.withGodotUnsafeRawPointer { __ptr_godotSkin in
        withUnsafePointer(to: __ptr_godotSkin) { _ptr___ptr_godotSkin in
        withUnsafeArgumentPackPointer(_ptr___ptr_godotSkin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_godot_skin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var skinRoot: Int32 {
        get {
            __getSkinRoot()
        }
        set {
            __setSkinRoot(
                newValue
            )
        }
    }

    public var jointsOriginal: Godot.PackedInt32Array {
        get {
            __getJointsOriginal()
        }
        set {
            __setJointsOriginal(
                newValue
            )
        }
    }

    public var inverseBinds: Godot.GodotArray<Godot.Transform3D> {
        get {
            __getInverseBinds()
        }
        set {
            __setInverseBinds(
                newValue
            )
        }
    }

    public var joints: Godot.PackedInt32Array {
        get {
            __getJoints()
        }
        set {
            __setJoints(
                newValue
            )
        }
    }

    public var nonJoints: Godot.PackedInt32Array {
        get {
            __getNonJoints()
        }
        set {
            __setNonJoints(
                newValue
            )
        }
    }

    public var roots: Godot.PackedInt32Array {
        get {
            __getRoots()
        }
        set {
            __setRoots(
                newValue
            )
        }
    }

    public var skeleton: Int32 {
        get {
            __getSkeleton()
        }
        set {
            __setSkeleton(
                newValue
            )
        }
    }

    public var jointIToBoneI: Godot.AnyGodotDictionary {
        get {
            __getJointIToBoneI()
        }
        set {
            __setJointIToBoneI(
                newValue
            )
        }
    }

    public var jointIToName: Godot.AnyGodotDictionary {
        get {
            __getJointIToName()
        }
        set {
            __setJointIToName(
                newValue
            )
        }
    }

    public var godotSkin: Godot.Skin? {
        get {
            __getGodotSkin()
        }
        set {
            __setGodotSkin(
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