//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class TLSOptions: RefCounted {
    internal static var __method_binding_client: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "client").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3565000357)!
            }
        }
    }()
    
    static public func client(
        trustedChain: Godot.X509Certificate? = nil,
        commonNameOverride: Godot.GodotString = ""
    ) -> Godot.TLSOptions? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trustedChain) { __ptr_trustedChain in
                withUnsafePointer(to: __ptr_trustedChain) { _ptr___ptr_trustedChain in
                    withTransferrableUnsafeRawPointer(to: commonNameOverride) { __ptr_commonNameOverride in
                        withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain, __ptr_commonNameOverride) { __accessPtr in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_client,
                                nil,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_client_unsafe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "client_unsafe").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2090251749)!
            }
        }
    }()
    
    static public func clientUnsafe(
        trustedChain: Godot.X509Certificate? = nil
    ) -> Godot.TLSOptions? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trustedChain) { __ptr_trustedChain in
                withUnsafePointer(to: __ptr_trustedChain) { _ptr___ptr_trustedChain in
                    withUnsafeArgumentPackPointer(_ptr___ptr_trustedChain) { __accessPtr in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_client_unsafe,
                            nil,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_server: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "server").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36969539)!
            }
        }
    }()
    
    static public func server(
        key: Godot.CryptoKey?,
        certificate: Godot.X509Certificate?
    ) -> Godot.TLSOptions? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                    withTransferrableUnsafeRawPointer(to: certificate) { __ptr_certificate in
                        withUnsafePointer(to: __ptr_certificate) { _ptr___ptr_certificate in
                            withUnsafeArgumentPackPointer(_ptr___ptr_key, _ptr___ptr_certificate) { __accessPtr in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_server,
                                    nil,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}