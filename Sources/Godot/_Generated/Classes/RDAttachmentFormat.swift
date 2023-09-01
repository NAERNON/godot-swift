//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDAttachmentFormat: RefCounted {
    private static var __method_binding_set_format: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 565531219)!
        }
        }
    }()
    private func __setFormat(pMember: Godot.RenderingDevice.DataFormat) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_format,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_format: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2235804183)!
        }
        }
    }()
    private func __getFormat() -> Godot.RenderingDevice.DataFormat {
        var __temporary = Godot.RenderingDevice.DataFormat.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_format,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.DataFormat(rawValue: __temporary)!
    }

    private static var __method_binding_set_samples: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_samples").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3774171498)!
        }
        }
    }()
    private func __setSamples(pMember: Godot.RenderingDevice.TextureSamples) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_samples,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_samples: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_samples").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 407791724)!
        }
        }
    }()
    private func __getSamples() -> Godot.RenderingDevice.TextureSamples {
        var __temporary = Godot.RenderingDevice.TextureSamples.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_samples,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.TextureSamples(rawValue: __temporary)!
    }

    private static var __method_binding_set_usage_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_usage_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setUsageFlags(pMember: UInt32) {
        withUnsafePointer(to: pMember) { (__ptr_pMember) in
            withUnsafeArgumentPackPointer(__ptr_pMember) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_usage_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_usage_flags: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_usage_flags").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getUsageFlags() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_usage_flags,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    public var format: Godot.RenderingDevice.DataFormat {
        get {
            __getFormat()
        }
        set {
            __setFormat(
                pMember: newValue
            )
        }
    }

    public var samples: Godot.RenderingDevice.TextureSamples {
        get {
            __getSamples()
        }
        set {
            __setSamples(
                pMember: newValue
            )
        }
    }

    public var usageFlags: UInt32 {
        get {
            __getUsageFlags()
        }
        set {
            __setUsageFlags(
                pMember: newValue
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