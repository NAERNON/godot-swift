//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFSkeleton: Resource {
    private static var __method_binding_get_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getJoints() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_joints,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_joints: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_joints").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setJoints(_ joints: Godot.PackedInt32Array) {
        joints.withGodotUnsafeRawPointer { __ptr_joints in
        withUnsafeArgumentPackPointer(__ptr_joints) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_joints,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_roots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_roots").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 969006518)!
        }
        }
    }()
    private func __getRoots() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_roots,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_roots: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_roots").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3614634198)!
        }
        }
    }()
    private func __setRoots(_ roots: Godot.PackedInt32Array) {
        roots.withGodotUnsafeRawPointer { __ptr_roots in
        withUnsafeArgumentPackPointer(__ptr_roots) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_roots,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_godot_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_godot_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1814733083)!
        }
        }
    }()
    public func godotSkeleton() -> Godot.Skeleton3D? {
        Godot.Skeleton3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_godot_skeleton,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_unique_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unique_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    private func __getUniqueNames() -> Godot.GodotArray<Godot.GodotString> {
        Godot.GodotArray<Godot.GodotString>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_unique_names,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_unique_names: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_unique_names").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setUniqueNames(_ uniqueNames: Godot.GodotArray<Godot.GodotString>) {
        uniqueNames.withGodotUnsafeRawPointer { __ptr_uniqueNames in
        withUnsafeArgumentPackPointer(__ptr_uniqueNames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_unique_names,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_godot_bone_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_godot_bone_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2382534195)!
        }
        }
    }()
    private func __getGodotBoneNode() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_godot_bone_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_godot_bone_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_godot_bone_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setGodotBoneNode<Value1: VariantStorable, Value2: VariantStorable>(_ godotBoneNode: Godot.GodotDictionary<Value1, Value2>) {
        godotBoneNode.withGodotUnsafeRawPointer { __ptr_godotBoneNode in
        withUnsafeArgumentPackPointer(__ptr_godotBoneNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_godot_bone_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_bone_attachment_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bone_attachment_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func boneAttachmentCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_bone_attachment_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_bone_attachment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_bone_attachment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 945440495)!
        }
        }
    }()
    public func boneAttachment(idx: Int32) -> Godot.BoneAttachment3D? {
        Godot.BoneAttachment3D?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_bone_attachment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
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

    public var uniqueNames: Godot.GodotArray<Godot.GodotString> {
        get {
            __getUniqueNames()
        }
        set {
            __setUniqueNames(
                newValue
            )
        }
    }

    public var godotBoneNode: Godot.AnyGodotDictionary {
        get {
            __getGodotBoneNode()
        }
        set {
            __setGodotBoneNode(
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