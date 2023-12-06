//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Marshalls: Object {
    private static var __method_binding_variant_to_base64: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "variant_to_base64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3876248563)!
        }
        }
    }()
    public func variantToBase64<Variant1 : VariantEncodable>(variant: Variant1, fullObjects: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        Godot.Variant.withStorageUnsafeRawPointer(to: variant) { (__ptr_variant) in
            withUnsafePointer(to: fullObjects) { (__ptr_fullObjects) in
                withUnsafeArgumentPackPointer(__ptr_variant, __ptr_fullObjects) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_variant_to_base64,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_base64_to_variant: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "base64_to_variant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 218087648)!
        }
        }
    }()
    public func base64ToVariant(base64Str: Godot.GodotString, allowObjects: Bool = false) -> Godot.Variant {
        let __temporary = Godot.Variant()
        base64Str.withUnsafeRawPointer { (__ptr_base64Str) in
            withUnsafePointer(to: allowObjects) { (__ptr_allowObjects) in
                withUnsafeArgumentPackPointer(__ptr_base64Str, __ptr_allowObjects) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_base64_to_variant,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_raw_to_base64: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "raw_to_base64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3999417757)!
        }
        }
    }()
    public func rawToBase64(array: Godot.PackedByteArray) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        array.withUnsafeRawPointer { (__ptr_array) in
            withUnsafeArgumentPackPointer(__ptr_array) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_raw_to_base64,
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

    private static var __method_binding_base64_to_raw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "base64_to_raw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 659035735)!
        }
        }
    }()
    public func base64ToRaw(base64Str: Godot.GodotString) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        base64Str.withUnsafeRawPointer { (__ptr_base64Str) in
            withUnsafeArgumentPackPointer(__ptr_base64Str) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_base64_to_raw,
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

    private static var __method_binding_utf8_to_base64: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "utf8_to_base64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    public func utf8ToBase64(utf8Str: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        utf8Str.withUnsafeRawPointer { (__ptr_utf8Str) in
            withUnsafeArgumentPackPointer(__ptr_utf8Str) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_utf8_to_base64,
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

    private static var __method_binding_base64_to_utf8: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "base64_to_utf8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    public func base64ToUtf8(base64Str: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        base64Str.withUnsafeRawPointer { (__ptr_base64Str) in
            withUnsafeArgumentPackPointer(__ptr_base64Str) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_base64_to_utf8,
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