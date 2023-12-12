//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class BoneMap: Resource {
    @Emitter(signal: "bone_map_updated")
    public struct BoneMapUpdated {
    }

    @Emitter(signal: "profile_updated")
    public struct ProfileUpdated {
    }

    private static var __method_binding_get_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4291782652)!
        }
        }
    }()
    private func __getProfile() -> Godot.SkeletonProfile? {
        Godot.SkeletonProfile?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_profile,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3870374136)!
        }
        }
    }()
    private func __setProfile(_ profile: Godot.SkeletonProfile?) {
        profile.withGodotUnsafeRawPointer { __ptr_profile in
        withUnsafePointer(to: __ptr_profile) { _ptr___ptr_profile in
        withUnsafeArgumentPackPointer(_ptr___ptr_profile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeleton_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func skeletonBoneName(profileBoneName: Godot.GodotStringName) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        profileBoneName.withGodotUnsafeRawPointer { __ptr_profileBoneName in
        withUnsafeArgumentPackPointer(__ptr_profileBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_skeleton_bone_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeleton_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func setSkeletonBoneName(profileBoneName: Godot.GodotStringName, skeletonBoneName: Godot.GodotStringName) {
        profileBoneName.withGodotUnsafeRawPointer { __ptr_profileBoneName in
        skeletonBoneName.withGodotUnsafeRawPointer { __ptr_skeletonBoneName in
        withUnsafeArgumentPackPointer(__ptr_profileBoneName, __ptr_skeletonBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_skeleton_bone_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_find_profile_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_profile_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func findProfileBoneName(skeletonBoneName: Godot.GodotStringName) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        skeletonBoneName.withGodotUnsafeRawPointer { __ptr_skeletonBoneName in
        withUnsafeArgumentPackPointer(__ptr_skeletonBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_find_profile_bone_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var profile: Godot.SkeletonProfile? {
        get {
            __getProfile()
        }
        set {
            __setProfile(
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