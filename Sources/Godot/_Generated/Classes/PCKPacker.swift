//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class PCKPacker: RefCounted {
    private static var __method_binding_pck_start: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "pck_start").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3232891339)!
        }
        }
    }()
    public func pckStart(pckName: Godot.GodotString, alignment: Int32 = 32, key: Godot.GodotString = "0000000000000000000000000000000000000000000000000000000000000000", encryptDirectory: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        pckName.withUnsafeRawPointer { (__ptr_pckName) in
            withUnsafePointer(to: alignment) { (__ptr_alignment) in
                key.withUnsafeRawPointer { (__ptr_key) in
                    withUnsafePointer(to: encryptDirectory) { (__ptr_encryptDirectory) in
                        withUnsafeArgumentPackPointer(__ptr_pckName, __ptr_alignment, __ptr_key, __ptr_encryptDirectory) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_pck_start,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_add_file: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_file").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2215643711)!
        }
        }
    }()
    public func addFile(pckPath: Godot.GodotString, sourcePath: Godot.GodotString, encrypt: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        pckPath.withUnsafeRawPointer { (__ptr_pckPath) in
            sourcePath.withUnsafeRawPointer { (__ptr_sourcePath) in
                withUnsafePointer(to: encrypt) { (__ptr_encrypt) in
                    withUnsafeArgumentPackPointer(__ptr_pckPath, __ptr_sourcePath, __ptr_encrypt) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_add_file,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_flush: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "flush").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1633102583)!
        }
        }
    }()
    public func flush(verbose: Bool = false) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        withUnsafePointer(to: verbose) { (__ptr_verbose) in
            withUnsafeArgumentPackPointer(__ptr_verbose) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_flush,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
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