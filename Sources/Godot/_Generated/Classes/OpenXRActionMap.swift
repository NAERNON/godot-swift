//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class OpenXRActionMap: Resource {
    private static var __method_binding_set_action_sets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_action_sets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setActionSets<Value: VariantStorable>(_ actionSets: Godot.GodotArray<Value>) {
        actionSets.withGodotUnsafeRawPointer { __ptr_actionSets in
        withUnsafeArgumentPackPointer(__ptr_actionSets) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_action_sets,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_action_sets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_sets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getActionSets() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_sets,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_action_set_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_set_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func actionSetCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_set_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_action_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_action_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1888809267)!
        }
        }
    }()
    public func findActionSet(name: Godot.GodotString) -> Godot.OpenXRActionSet? {
        Godot.OpenXRActionSet?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_action_set,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_action_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_action_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1789580336)!
        }
        }
    }()
    public func actionSet(idx: Int32) -> Godot.OpenXRActionSet? {
        Godot.OpenXRActionSet?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_action_set,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_action_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_action_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2093310581)!
        }
        }
    }()
    public func addActionSet(_ actionSet: Godot.OpenXRActionSet?) {
        actionSet.withGodotUnsafeRawPointer { __ptr_actionSet in
        withUnsafePointer(to: __ptr_actionSet) { _ptr___ptr_actionSet in
        withUnsafeArgumentPackPointer(_ptr___ptr_actionSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_action_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_action_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_action_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2093310581)!
        }
        }
    }()
    public func removeActionSet(_ actionSet: Godot.OpenXRActionSet?) {
        actionSet.withGodotUnsafeRawPointer { __ptr_actionSet in
        withUnsafePointer(to: __ptr_actionSet) { _ptr___ptr_actionSet in
        withUnsafeArgumentPackPointer(_ptr___ptr_actionSet) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_action_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_interaction_profiles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interaction_profiles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setInteractionProfiles<Value: VariantStorable>(_ interactionProfiles: Godot.GodotArray<Value>) {
        interactionProfiles.withGodotUnsafeRawPointer { __ptr_interactionProfiles in
        withUnsafeArgumentPackPointer(__ptr_interactionProfiles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_interaction_profiles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_interaction_profiles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interaction_profiles").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getInteractionProfiles() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interaction_profiles,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_interaction_profile_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interaction_profile_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func interactionProfileCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interaction_profile_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_interaction_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3095875538)!
        }
        }
    }()
    public func findInteractionProfile(name: Godot.GodotString) -> Godot.OpenXRInteractionProfile? {
        Godot.OpenXRInteractionProfile?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_interaction_profile,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interaction_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2546151210)!
        }
        }
    }()
    public func interactionProfile(idx: Int32) -> Godot.OpenXRInteractionProfile? {
        Godot.OpenXRInteractionProfile?.fromMutatingGodotUnsafePointer { __temporary in
        idx.withGodotUnsafeRawPointer { __ptr_idx in
        withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_interaction_profile,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_interaction_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2697953512)!
        }
        }
    }()
    public func addInteractionProfile(_ interactionProfile: Godot.OpenXRInteractionProfile?) {
        interactionProfile.withGodotUnsafeRawPointer { __ptr_interactionProfile in
        withUnsafePointer(to: __ptr_interactionProfile) { _ptr___ptr_interactionProfile in
        withUnsafeArgumentPackPointer(_ptr___ptr_interactionProfile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_interaction_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_interaction_profile: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_interaction_profile").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2697953512)!
        }
        }
    }()
    public func removeInteractionProfile(_ interactionProfile: Godot.OpenXRInteractionProfile?) {
        interactionProfile.withGodotUnsafeRawPointer { __ptr_interactionProfile in
        withUnsafePointer(to: __ptr_interactionProfile) { _ptr___ptr_interactionProfile in
        withUnsafeArgumentPackPointer(_ptr___ptr_interactionProfile) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_interaction_profile,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_create_default_action_sets: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_default_action_sets").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func createDefaultActionSets() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_default_action_sets,
            __ptr_self,
            nil,
            nil
        )}
    }

    public var actionSets: Godot.AnyGodotArray {
        get {
            __getActionSets()
        }
        set {
            __setActionSets(
                newValue
            )
        }
    }

    public var interactionProfiles: Godot.AnyGodotArray {
        get {
            __getInteractionProfiles()
        }
        set {
            __setInteractionProfiles(
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