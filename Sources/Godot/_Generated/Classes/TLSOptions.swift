//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class TLSOptions: RefCounted {
    private static var __method_binding_client: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "client").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3565000357)!
        }
        }
    }()
    static public func client(trustedChain: Godot.X509Certificate? = nil, commonNameOverride: Godot.GodotString = "") -> Godot.TLSOptions? {
        var __temporary: GDExtensionObjectPtr!
        trustedChain.withUnsafeRawPointer { (__ptr_trustedChain) in
            withUnsafePointer(to: __ptr_trustedChain) { (_ptr___ptr_trustedChain) in
                commonNameOverride.withUnsafeRawPointer { (__ptr_commonNameOverride) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain, __ptr_commonNameOverride) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_client,
                                nil,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.TLSOptions.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_client_unsafe: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "client_unsafe").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2090251749)!
        }
        }
    }()
    static public func clientUnsafe(trustedChain: Godot.X509Certificate? = nil) -> Godot.TLSOptions? {
        var __temporary: GDExtensionObjectPtr!
        trustedChain.withUnsafeRawPointer { (__ptr_trustedChain) in
            withUnsafePointer(to: __ptr_trustedChain) { (_ptr___ptr_trustedChain) in
                withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_client_unsafe,
                            nil,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.TLSOptions.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_server: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "server").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36969539)!
        }
        }
    }()
    static public func server(key: Godot.CryptoKey?, certificate: Godot.X509Certificate?) -> Godot.TLSOptions? {
        var __temporary: GDExtensionObjectPtr!
        key.withUnsafeRawPointer { (__ptr_key) in
            withUnsafePointer(to: __ptr_key) { (_ptr___ptr_key) in
                certificate.withUnsafeRawPointer { (__ptr_certificate) in
                    withUnsafePointer(to: __ptr_certificate) { (_ptr___ptr_certificate) in
                        withUnsafeArgumentPackPointer(_ptr___ptr_key, _ptr___ptr_certificate) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_server,
                                    nil,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.TLSOptions.retrievedInstanceManagedByGodot(__temporary)
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