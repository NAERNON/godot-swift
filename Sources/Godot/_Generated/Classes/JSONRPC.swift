//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class JSONRPC: Object {
    public enum ErrorCode: Int32 {
        case parseError = -32700
        case invalidRequest = -32600
        case methodNotFound = -32601
        case invalidParams = -32602
        case internalError = -32603
    }

    private static var __method_binding_set_scope: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_scope").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2572618360)!
        }
        }
    }()
    public func setScope(_ scope: Godot.GodotString, target: Godot.Object?) {
        scope.withUnsafeRawPointer { (__ptr_scope) in
            target.withUnsafeRawPointer { (__ptr_target) in
                withUnsafePointer(to: __ptr_target) { (_ptr___ptr_target) in
                    withUnsafeArgumentPackPointer(__ptr_scope, _ptr___ptr_target) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_set_scope,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_process_action: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "process_action").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2963479484)!
        }
        }
    }()
    public func processAction<Variant1 : ConvertibleToVariant>(_ action: Variant1, recurse: Bool = false) -> Godot.Variant {
        let __temporary = Godot.Variant()
        action.makeVariant().withUnsafeRawPointer { (__ptr_action) in
            withUnsafePointer(to: recurse) { (__ptr_recurse) in
                withUnsafeArgumentPackPointer(__ptr_action, __ptr_recurse) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_process_action,
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

    private static var __method_binding_process_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "process_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    public func processString(action: Godot.GodotString) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        action.withUnsafeRawPointer { (__ptr_action) in
            withUnsafeArgumentPackPointer(__ptr_action) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_process_string,
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

    private static var __method_binding_make_request: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "make_request").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3423508980)!
        }
        }
    }()
    public func makeRequest<Variant1 : ConvertibleToVariant, Variant2 : ConvertibleToVariant>(method: Godot.GodotString, params: Variant1, id: Variant2) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        method.withUnsafeRawPointer { (__ptr_method) in
            params.makeVariant().withUnsafeRawPointer { (__ptr_params) in
                id.makeVariant().withUnsafeRawPointer { (__ptr_id) in
                    withUnsafeArgumentPackPointer(__ptr_method, __ptr_params, __ptr_id) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_make_request,
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
        return __temporary
    }

    private static var __method_binding_make_response: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "make_response").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 5053918)!
        }
        }
    }()
    public func makeResponse<Variant1 : ConvertibleToVariant, Variant2 : ConvertibleToVariant>(result: Variant1, id: Variant2) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        result.makeVariant().withUnsafeRawPointer { (__ptr_result) in
            id.makeVariant().withUnsafeRawPointer { (__ptr_id) in
                withUnsafeArgumentPackPointer(__ptr_result, __ptr_id) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_make_response,
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

    private static var __method_binding_make_notification: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "make_notification").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2949127017)!
        }
        }
    }()
    public func makeNotification<Variant1 : ConvertibleToVariant>(method: Godot.GodotString, params: Variant1) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        method.withUnsafeRawPointer { (__ptr_method) in
            params.makeVariant().withUnsafeRawPointer { (__ptr_params) in
                withUnsafeArgumentPackPointer(__ptr_method, __ptr_params) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_make_notification,
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

    private static var __method_binding_make_response_error: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "make_response_error").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 928596297)!
        }
        }
    }()
    public func makeResponseError<Variant1 : ConvertibleToVariant>(code: Int32, message: Godot.GodotString, id: Variant1 = Variant()) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
        withUnsafePointer(to: code) { (__ptr_code) in
            message.withUnsafeRawPointer { (__ptr_message) in
                id.makeVariant().withUnsafeRawPointer { (__ptr_id) in
                    withUnsafeArgumentPackPointer(__ptr_code, __ptr_message, __ptr_id) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_make_response_error,
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