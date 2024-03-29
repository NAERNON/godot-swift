//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class CryptoKey: Resource {
    private static var __method_binding_save: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "save").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 885841341)!
        }
        }
    }()
    public func save(path: Godot.GodotString, publicOnly: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafePointer(to: publicOnly) { (__ptr_publicOnly) in
                withUnsafeArgumentPackPointer(__ptr_path, __ptr_publicOnly) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_save,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_load: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "load").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 885841341)!
        }
        }
    }()
    public func load(path: Godot.GodotString, publicOnly: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        path.withUnsafeRawPointer { (__ptr_path) in
            withUnsafePointer(to: publicOnly) { (__ptr_publicOnly) in
                withUnsafeArgumentPackPointer(__ptr_path, __ptr_publicOnly) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_load,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_is_public_only: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "is_public_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isPublicOnly() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_is_public_only,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_save_to_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "save_to_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 32795936)!
        }
        }
    }()
    public func saveToString(publicOnly: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: publicOnly) { (__ptr_publicOnly) in
            withUnsafeArgumentPackPointer(__ptr_publicOnly) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_save_to_string,
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

    private static var __method_binding_load_from_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "load_from_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 885841341)!
        }
        }
    }()
    public func loadFromString(stringKey: Godot.GodotString, publicOnly: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        stringKey.withUnsafeRawPointer { (__ptr_stringKey) in
            withUnsafePointer(to: publicOnly) { (__ptr_publicOnly) in
                withUnsafeArgumentPackPointer(__ptr_stringKey, __ptr_publicOnly) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_load_from_string,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
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