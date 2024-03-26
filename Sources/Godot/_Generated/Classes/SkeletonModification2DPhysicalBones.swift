//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class SkeletonModification2DPhysicalBones: SkeletonModification2D {
    internal static var __method_binding_set_physical_bone_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physical_bone_chain_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    private func __setPhysicalBoneChainLength(
        _ length: Int32
    ) {
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physical_bone_chain_length,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_physical_bone_chain_length: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physical_bone_chain_length").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    private func __getPhysicalBoneChainLength() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physical_bone_chain_length,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_physical_bone_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physical_bone_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761262315)!
        }
        }
    }()

    public func setPhysicalBoneNode(
        jointIdx: Int32,
        physicalbone2dNode: Godot.NodePath
    ) {
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        physicalbone2dNode.withGodotUnsafeRawPointer { __ptr_physicalbone2dNode in
        withUnsafeArgumentPackPointer(__ptr_jointIdx, __ptr_physicalbone2dNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physical_bone_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_physical_bone_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physical_bone_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 408788394)!
        }
        }
    }()

    public func physicalBoneNode(
        jointIdx: Int32
    ) -> Godot.NodePath {
        Godot.NodePath.fromMutatingGodotUnsafePointer { __temporary in
        jointIdx.withGodotUnsafeRawPointer { __ptr_jointIdx in
        withUnsafeArgumentPackPointer(__ptr_jointIdx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physical_bone_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_fetch_physical_bones: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fetch_physical_bones").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()

    public func fetchPhysicalBones() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fetch_physical_bones,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_start_simulation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "start_simulation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2787316981)!
        }
        }
    }()

    public func startSimulation(
        bones: Godot.GodotArray<Godot.GodotStringName> = []
    ) {
        bones.withGodotUnsafeRawPointer { __ptr_bones in
        withUnsafeArgumentPackPointer(__ptr_bones) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_start_simulation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_stop_simulation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "stop_simulation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2787316981)!
        }
        }
    }()

    public func stopSimulation(
        bones: Godot.GodotArray<Godot.GodotStringName> = []
    ) {
        bones.withGodotUnsafeRawPointer { __ptr_bones in
        withUnsafeArgumentPackPointer(__ptr_bones) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_stop_simulation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var physicalBoneChainLength: Int32 {
        get {
            __getPhysicalBoneChainLength()
        }
        set {
            __setPhysicalBoneChainLength(
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