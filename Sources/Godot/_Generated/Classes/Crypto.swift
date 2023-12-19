//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Crypto: RefCounted {
    private static var __method_binding_generate_random_bytes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_random_bytes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 47165747)!
        }
        }
    }()
    public func generateRandomBytes(size: Int32) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_random_bytes,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_generate_rsa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_rsa").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1237515462)!
        }
        }
    }()
    public func generateRsa(size: Int32) -> Godot.CryptoKey? {
        Godot.CryptoKey?.fromMutatingGodotUnsafePointer { __temporary in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_rsa,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_generate_self_signed_certificate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_self_signed_certificate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 492266173)!
        }
        }
    }()
    public func generateSelfSignedCertificate(key: Godot.CryptoKey?, issuerName: Godot.GodotString = "CN=myserver,O=myorganisation,C=IT", notBefore: Godot.GodotString = "20140101000000", notAfter: Godot.GodotString = "20340101000000") -> Godot.X509Certificate? {
        Godot.X509Certificate?.fromMutatingGodotUnsafePointer { __temporary in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        issuerName.withGodotUnsafeRawPointer { __ptr_issuerName in
        notBefore.withGodotUnsafeRawPointer { __ptr_notBefore in
        notAfter.withGodotUnsafeRawPointer { __ptr_notAfter in
        withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_issuerName, __ptr_notBefore, __ptr_notAfter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_generate_self_signed_certificate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_sign: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sign").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1673662703)!
        }
        }
    }()
    public func sign(hashType: Godot.HashingContext.HashType, hash: Godot.PackedByteArray, key: Godot.CryptoKey?) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        hashType.withGodotUnsafeRawPointer { __ptr_hashType in
        hash.withGodotUnsafeRawPointer { __ptr_hash in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_hash, _ptr___ptr_key) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sign,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_verify: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "verify").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2805902225)!
        }
        }
    }()
    public func verify(hashType: Godot.HashingContext.HashType, hash: Godot.PackedByteArray, signature: Godot.PackedByteArray, key: Godot.CryptoKey?) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        hashType.withGodotUnsafeRawPointer { __ptr_hashType in
        hash.withGodotUnsafeRawPointer { __ptr_hash in
        signature.withGodotUnsafeRawPointer { __ptr_signature in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_hash, __ptr_signature, _ptr___ptr_key) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_verify,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    private static var __method_binding_encrypt: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "encrypt").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2361793670)!
        }
        }
    }()
    public func encrypt(key: Godot.CryptoKey?, plaintext: Godot.PackedByteArray) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        plaintext.withGodotUnsafeRawPointer { __ptr_plaintext in
        withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_plaintext) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_encrypt,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_decrypt: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decrypt").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2361793670)!
        }
        }
    }()
    public func decrypt(key: Godot.CryptoKey?, ciphertext: Godot.PackedByteArray) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        key.withGodotUnsafeRawPointer { __ptr_key in
        withUnsafePointer(to: __ptr_key) { _ptr___ptr_key in
        ciphertext.withGodotUnsafeRawPointer { __ptr_ciphertext in
        withUnsafeArgumentPackPointer(_ptr___ptr_key, __ptr_ciphertext) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decrypt,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_hmac_digest: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "hmac_digest").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2368951203)!
        }
        }
    }()
    public func hmacDigest(hashType: Godot.HashingContext.HashType, key: Godot.PackedByteArray, msg: Godot.PackedByteArray) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        hashType.withGodotUnsafeRawPointer { __ptr_hashType in
        key.withGodotUnsafeRawPointer { __ptr_key in
        msg.withGodotUnsafeRawPointer { __ptr_msg in
        withUnsafeArgumentPackPointer(__ptr_hashType, __ptr_key, __ptr_msg) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_hmac_digest,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_constant_time_compare: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "constant_time_compare").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1024142237)!
        }
        }
    }()
    public func constantTimeCompare(trusted: Godot.PackedByteArray, received: Godot.PackedByteArray) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        trusted.withGodotUnsafeRawPointer { __ptr_trusted in
        received.withGodotUnsafeRawPointer { __ptr_received in
        withUnsafeArgumentPackPointer(__ptr_trusted, __ptr_received) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_constant_time_compare,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
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