//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class XRNode3D: Node3D {
    private static var __method_binding_set_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setTracker(trackerName: Godot.GodotStringName) {
        trackerName.withGodotUnsafeRawPointer { __ptr_trackerName in
        withUnsafeArgumentPackPointer(__ptr_trackerName) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_tracker,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_tracker: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getTracker() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_tracker,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_pose_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_pose_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    private func __setPoseName(pose: Godot.GodotStringName) {
        pose.withGodotUnsafeRawPointer { __ptr_pose in
        withUnsafeArgumentPackPointer(__ptr_pose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_pose_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_pose_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pose_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    private func __getPoseName() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_pose_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_is_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_is_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isActive() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_is_active,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_has_tracking_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_has_tracking_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasTrackingData() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_has_tracking_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_pose: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pose").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2806551826)!
        }
        }
    }()
    public func pose() -> Godot.XRPose? {
        Godot.XRPose?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_pose,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_trigger_haptic_pulse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "trigger_haptic_pulse").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 508576839)!
        }
        }
    }()
    public func triggerHapticPulse(actionName: Godot.GodotString, frequency: Double, amplitude: Double, durationSec: Double, delaySec: Double) {
        actionName.withGodotUnsafeRawPointer { __ptr_actionName in
        frequency.withGodotUnsafeRawPointer { __ptr_frequency in
        amplitude.withGodotUnsafeRawPointer { __ptr_amplitude in
        durationSec.withGodotUnsafeRawPointer { __ptr_durationSec in
        delaySec.withGodotUnsafeRawPointer { __ptr_delaySec in
        withUnsafeArgumentPackPointer(__ptr_actionName, __ptr_frequency, __ptr_amplitude, __ptr_durationSec, __ptr_delaySec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_trigger_haptic_pulse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    public var tracker: Godot.GodotStringName {
        get {
            __getTracker()
        }
        set {
            __setTracker(
                trackerName: newValue
            )
        }
    }

    public var poseName: Godot.GodotStringName {
        get {
            __getPoseName()
        }
        set {
            __setPoseName(
                pose: newValue
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