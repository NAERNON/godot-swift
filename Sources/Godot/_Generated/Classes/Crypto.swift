//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Crypto: RefCounted {
    internal static var __method_binding_generate_random_bytes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "generate_random_bytes").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 47165747)!
            }
        }
    }()
    
    public func generateRandomBytes(
        size: Int32
    ) -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_generate_random_bytes,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_generate_rsa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "generate_rsa").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1237515462)!
            }
        }
    }()
    
    public func generateRsa(
        size: Int32
    ) -> Godot.CryptoKey? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_generate_rsa,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_generate_self_signed_certificate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "generate_self_signed_certificate").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 492266173)!
            }
        }
    }()
    
    public func generateSelfSignedCertificate(
        key: Godot.CryptoKey?,
        issuerName: Godot.GodotString = "CN=myserver,O=myorganisation,C=IT",
        notBefore: Godot.GodotString = "20140101000000",
        notAfter: Godot.GodotString = "20340101000000"
    ) -> Godot.X509Certificate? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                    withTransferrableUnsafeRawPointer(to: issuerName) { __ptr_issuerName in
                        withTransferrableUnsafeRawPointer(to: notBefore) { __ptr_notBefore in
                            withTransferrableUnsafeRawPointer(to: notAfter) { __ptr_notAfter in
                                withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_issuerName, __ptr_notBefore, __ptr_notAfter) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_generate_self_signed_certificate,
                                            __ptr_self,
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
        }
    }
    
    internal static var __method_binding_sign: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "sign").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1673662703)!
            }
        }
    }()
    
    public func sign(
        hashType: Godot.HashingContext.HashType,
        hash: Godot.GodotContiguousArray<UInt8>,
        key: Godot.CryptoKey?
    ) -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: hashType) { __ptr_hashType in
                withTransferrableUnsafeRawPointer(to: hash) { __ptr_hash in
                    withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                            withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_hash, _ptr___ptr_key) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_sign,
                                        __ptr_self,
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
    }
    
    internal static var __method_binding_verify: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "verify").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2805902225)!
            }
        }
    }()
    
    public func verify(
        hashType: Godot.HashingContext.HashType,
        hash: Godot.GodotContiguousArray<UInt8>,
        signature: Godot.GodotContiguousArray<UInt8>,
        key: Godot.CryptoKey?
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: hashType) { __ptr_hashType in
                withTransferrableUnsafeRawPointer(to: hash) { __ptr_hash in
                    withTransferrableUnsafeRawPointer(to: signature) { __ptr_signature in
                        withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                            withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                                withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_hash, __ptr_signature, _ptr___ptr_key) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_verify,
                                            __ptr_self,
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
        }
    }
    
    internal static var __method_binding_encrypt: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "encrypt").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2361793670)!
            }
        }
    }()
    
    public func encrypt(
        key: Godot.CryptoKey?,
        plaintext: Godot.GodotContiguousArray<UInt8>
    ) -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                    withTransferrableUnsafeRawPointer(to: plaintext) { __ptr_plaintext in
                        withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_plaintext) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_encrypt,
                                    __ptr_self,
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
    
    internal static var __method_binding_decrypt: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "decrypt").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2361793670)!
            }
        }
    }()
    
    public func decrypt(
        key: Godot.CryptoKey?,
        ciphertext: Godot.GodotContiguousArray<UInt8>
    ) -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
                    withTransferrableUnsafeRawPointer(to: ciphertext) { __ptr_ciphertext in
                        withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_ciphertext) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_decrypt,
                                    __ptr_self,
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
    
    internal static var __method_binding_hmac_digest: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "hmac_digest").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2368951203)!
            }
        }
    }()
    
    public func hmacDigest(
        hashType: Godot.HashingContext.HashType,
        key: Godot.GodotContiguousArray<UInt8>,
        msg: Godot.GodotContiguousArray<UInt8>
    ) -> Godot.GodotContiguousArray<UInt8> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: hashType) { __ptr_hashType in
                withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                    withTransferrableUnsafeRawPointer(to: msg) { __ptr_msg in
                        withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_key, __ptr_msg) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_hmac_digest,
                                    __ptr_self,
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
    
    internal static var __method_binding_constant_time_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "constant_time_compare").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1024142237)!
            }
        }
    }()
    
    public func constantTimeCompare(
        trusted: Godot.GodotContiguousArray<UInt8>,
        received: Godot.GodotContiguousArray<UInt8>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: trusted) { __ptr_trusted in
                withTransferrableUnsafeRawPointer(to: received) { __ptr_received in
                    withUnsafeArgumentPackPointer(__ptr_trusted, __ptr_received) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_constant_time_compare,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
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