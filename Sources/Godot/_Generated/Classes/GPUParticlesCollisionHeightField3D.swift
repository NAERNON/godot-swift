//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GPUParticlesCollisionHeightField3D: GPUParticlesCollision3D {
    public enum Resolution: UInt32, GodotEnum {
        case resolution256 = 0
        case resolution512 = 1
        case resolution1024 = 2
        case resolution2048 = 3
        case resolution4096 = 4
        case resolution8192 = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Resolution256", 0),
            ("Resolution512", 1),
            ("Resolution1024", 2),
            ("Resolution2048", 3),
            ("Resolution4096", 4),
            ("Resolution8192", 5),
            ("Max", 6),]
        }
    }
    public enum UpdateMode: UInt32, GodotEnum {
        case whenMoved = 0
        case always = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("When Moved", 0),
            ("Always", 1),]
        }
    }

    private static var __method_binding_set_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3460891852)!
        }
        }
    }()
    private func __setSize(_ size: Godot.Vector3) {
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_size,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3360562783)!
        }
        }
    }()
    private func __getSize() -> Godot.Vector3 {
        var __temporary = Godot.Vector3()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_resolution: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_resolution").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1009996517)!
        }
        }
    }()
    private func __setResolution(_ resolution: Godot.GPUParticlesCollisionHeightField3D.Resolution) {
        withUnsafePointer(to: resolution) { (__ptr_resolution) in
            withUnsafeArgumentPackPointer(__ptr_resolution) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_resolution,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_resolution: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_resolution").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1156065644)!
        }
        }
    }()
    private func __getResolution() -> Godot.GPUParticlesCollisionHeightField3D.Resolution {
        var __temporary = Godot.GPUParticlesCollisionHeightField3D.Resolution.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_resolution,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.GPUParticlesCollisionHeightField3D.Resolution(rawValue: __temporary)!
    }

    private static var __method_binding_set_update_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_update_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 673680859)!
        }
        }
    }()
    private func __setUpdateMode(_ updateMode: Godot.GPUParticlesCollisionHeightField3D.UpdateMode) {
        withUnsafePointer(to: updateMode) { (__ptr_updateMode) in
            withUnsafeArgumentPackPointer(__ptr_updateMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_update_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_update_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_update_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1998141380)!
        }
        }
    }()
    private func __getUpdateMode() -> Godot.GPUParticlesCollisionHeightField3D.UpdateMode {
        var __temporary = Godot.GPUParticlesCollisionHeightField3D.UpdateMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_update_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.GPUParticlesCollisionHeightField3D.UpdateMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_follow_camera_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_follow_camera_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setFollowCameraEnabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { (__ptr_enabled) in
            withUnsafeArgumentPackPointer(__ptr_enabled) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_follow_camera_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_is_follow_camera_enabled: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_follow_camera_enabled").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFollowCameraEnabled() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_follow_camera_enabled,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var size: Godot.Vector3 {
        get {
            __getSize()
        }
        set {
            __setSize(
                newValue
            )
        }
    }

    public var resolution: Godot.GPUParticlesCollisionHeightField3D.Resolution {
        get {
            __getResolution()
        }
        set {
            __setResolution(
                newValue
            )
        }
    }

    public var updateMode: Godot.GPUParticlesCollisionHeightField3D.UpdateMode {
        get {
            __getUpdateMode()
        }
        set {
            __setUpdateMode(
                newValue
            )
        }
    }

    public var isFollowCameraEnabled: Bool {
        get {
            __isFollowCameraEnabled()
        }
        set {
            __setFollowCameraEnabled(
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