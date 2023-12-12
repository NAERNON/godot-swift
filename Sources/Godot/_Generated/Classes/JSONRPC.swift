//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class JSONRPC: Object {
    public enum ErrorCode: Int32, GodotEnum {
        case parseError = -32700
        case invalidRequest = -32600
        case methodNotFound = -32601
        case invalidParams = -32602
        case internalError = -32603
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Parse Error", -32700),
            ("Internal Error", -32603),
            ("Invalid Params", -32602),
            ("Method Not Found", -32601),
            ("Invalid Request", -32600),]
        }
    }

    private static var __method_binding_set_scope: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scope").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2572618360)!
        }
        }
    }()
    public func setScope(_ scope: Godot.GodotString, target: Godot.Object?) {
        scope.withGodotUnsafeRawPointer { __ptr_scope in
        target.withGodotUnsafeRawPointer { __ptr_target in
        withUnsafePointer(to: __ptr_target) { _ptr___ptr_target in
        withUnsafeArgumentPackPointer(__ptr_scope, _ptr___ptr_target) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_scope,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_process_action: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "process_action").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2963479484)!
        }
        }
    }()
    public func processAction<Value: VariantStorableIn>(_ action: Value, recurse: Bool = false) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: action) { __ptr_action in
        recurse.withGodotUnsafeRawPointer { __ptr_recurse in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_recurse) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_process_action,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_process_string: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "process_string").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1703090593)!
        }
        }
    }()
    public func processString(action: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        withUnsafeArgumentPackPointer(__ptr_action) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_process_string,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_make_request: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_request").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3423508980)!
        }
        }
    }()
    public func makeRequest<Value1: VariantStorableIn, Value2: VariantStorableIn>(method: Godot.GodotString, params: Value1, id: Value2) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        method.withGodotUnsafeRawPointer { __ptr_method in
        Godot.Variant.withStorageUnsafeRawPointer(to: params) { __ptr_params in
        Godot.Variant.withStorageUnsafeRawPointer(to: id) { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_params, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_request,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_make_response: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_response").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 5053918)!
        }
        }
    }()
    public func makeResponse<Value1: VariantStorableIn, Value2: VariantStorableIn>(result: Value1, id: Value2) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        Godot.Variant.withStorageUnsafeRawPointer(to: result) { __ptr_result in
        Godot.Variant.withStorageUnsafeRawPointer(to: id) { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_result, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_response,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_make_notification: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_notification").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2949127017)!
        }
        }
    }()
    public func makeNotification<Value: VariantStorableIn>(method: Godot.GodotString, params: Value) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        method.withGodotUnsafeRawPointer { __ptr_method in
        Godot.Variant.withStorageUnsafeRawPointer(to: params) { __ptr_params in
        withUnsafeArgumentPackPointer(__ptr_method, __ptr_params) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_notification,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_make_response_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_response_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 928596297)!
        }
        }
    }()
    public func makeResponseError<Value: VariantStorableIn>(code: Int32, message: Godot.GodotString, id: Value = Variant()) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        code.withGodotUnsafeRawPointer { __ptr_code in
        message.withGodotUnsafeRawPointer { __ptr_message in
        Godot.Variant.withStorageUnsafeRawPointer(to: id) { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_code, __ptr_message, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_response_error,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
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