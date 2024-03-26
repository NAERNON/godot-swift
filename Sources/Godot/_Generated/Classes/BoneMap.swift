//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class BoneMap: Resource {

    public func boneMapUpdated() {
        _ = boneMapUpdatedSignal.emit()
    }

    public lazy var boneMapUpdatedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "bone_map_updated") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func profileUpdated() {
        _ = profileUpdatedSignal.emit()
    }

    public lazy var profileUpdatedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "profile_updated") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291782652)!
        }
        }
    }()

    private func __getProfile() -> Godot.SkeletonProfile? {
        Godot.SkeletonProfile?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_profile,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3870374136)!
        }
        }
    }()

    private func __setProfile(
        _ profile: Godot.SkeletonProfile?
    ) {
        profile.withGodotUnsafeRawPointer { __ptr_profile in
        withUnsafePointer(to: __ptr_profile) { _ptr___ptr_profile in
        withUnsafeArgumentPackPointer(_ptr___ptr_profile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_skeleton_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()

    public func skeletonBoneName(
        profileBoneName: Godot.GodotStringName
    ) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        profileBoneName.withGodotUnsafeRawPointer { __ptr_profileBoneName in
        withUnsafeArgumentPackPointer(__ptr_profileBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_skeleton_bone_name,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_skeleton_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_skeleton_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()

    public func setSkeletonBoneName(
        profileBoneName: Godot.GodotStringName,
        skeletonBoneName: Godot.GodotStringName
    ) {
        profileBoneName.withGodotUnsafeRawPointer { __ptr_profileBoneName in
        skeletonBoneName.withGodotUnsafeRawPointer { __ptr_skeletonBoneName in
        withUnsafeArgumentPackPointer(__ptr_profileBoneName, __ptr_skeletonBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_skeleton_bone_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_find_profile_bone_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_profile_bone_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()

    public func findProfileBoneName(
        skeletonBoneName: Godot.GodotStringName
    ) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        skeletonBoneName.withGodotUnsafeRawPointer { __ptr_skeletonBoneName in
        withUnsafeArgumentPackPointer(__ptr_skeletonBoneName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
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