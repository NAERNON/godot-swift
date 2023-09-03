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
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_profile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4291782652)!
        }
        }
    }()
    private func __getProfile() -> Godot.SkeletonProfile? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_profile,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.SkeletonProfile.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_profile: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_profile").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3870374136)!
        }
        }
    }()
    private func __setProfile(_ profile: Godot.SkeletonProfile?) {
        profile.withUnsafeRawPointer { (__ptr_profile) in
            withUnsafePointer(to: __ptr_profile) { (_ptr___ptr_profile) in
                withUnsafeArgumentPackPointer(_ptr___ptr_profile) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_profile,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_skeleton_bone_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func skeletonBoneName(profileBoneName: Godot.GodotStringName) -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        profileBoneName.withUnsafeRawPointer { (__ptr_profileBoneName) in
            withUnsafeArgumentPackPointer(__ptr_profileBoneName) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_skeleton_bone_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_skeleton_bone_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func setSkeletonBoneName(profileBoneName: Godot.GodotStringName, skeletonBoneName: Godot.GodotStringName) {
        profileBoneName.withUnsafeRawPointer { (__ptr_profileBoneName) in
            skeletonBoneName.withUnsafeRawPointer { (__ptr_skeletonBoneName) in
                withUnsafeArgumentPackPointer(__ptr_profileBoneName, __ptr_skeletonBoneName) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_skeleton_bone_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_find_profile_bone_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "find_profile_bone_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func findProfileBoneName(skeletonBoneName: Godot.GodotStringName) -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        skeletonBoneName.withUnsafeRawPointer { (__ptr_skeletonBoneName) in
            withUnsafeArgumentPackPointer(__ptr_skeletonBoneName) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_find_profile_bone_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
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