//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension Callable {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 0)!
    }()
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_callable: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 1)!
    }()
    static internal func _constructor_callable(from: Godot.Callable) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_callable(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_callable(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_callable(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_object_godotstringname: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 2)!
    }()
    static internal func _constructor_object_godotstringname(object: Godot.Object?, method: Godot.GodotStringName) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                method.withUnsafeRawPointer { (__ptr_method) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_method) { (__accessPtr) in
                        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                            Self.__constructor_object_godotstringname(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_object_godotstringname(object: UnsafeRawPointer, method: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(object, method) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_object_godotstringname(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Callable, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.makeVariant().withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.Callable, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.makeVariant().withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.Callable) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_callable: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.Callable, _ rhs: Godot.Callable) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_callable(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_callable: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.Callable, _ rhs: Godot.Callable) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_callable(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Callable, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.Callable, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_callv: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "callv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 413578926)!
        }
    }()
    internal func _callv(arguments: Godot.GodotArray) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        arguments.withUnsafeRawPointer { (__ptr_arguments) in
            withUnsafeArgumentPackPointer(__ptr_arguments) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_callv(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_is_null: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_null").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isNull() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_null(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_custom: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_custom").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isCustom() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_custom(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_standard: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_standard").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isStandard() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_standard(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_valid: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isValid() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_valid(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_object: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_object").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 4008621732)!
        }
    }()
    internal func _object() -> Godot.Object? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_object(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return Godot.Object.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_object_id: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_object_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _objectId() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_object_id(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_method: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_method").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 1825232092)!
        }
    }()
    internal func _method() -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_method(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_bound_arguments_count: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_bound_arguments_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _boundArgumentsCount() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_bound_arguments_count(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_bound_arguments: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get_bound_arguments").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 4144163970)!
        }
    }()
    internal func _boundArguments() -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_bound_arguments(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_hash: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "hash").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _hash() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_hash(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_bindv: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "bindv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3564560322)!
        }
    }()
    @discardableResult mutating internal func _bindv(arguments: Godot.GodotArray) -> Godot.Callable {
        replaceOpaqueValueIfNecessary()
        let __temporary = Godot.Callable()
        arguments.withUnsafeRawPointer { (__ptr_arguments) in
            withUnsafeArgumentPackPointer(__ptr_arguments) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_bindv(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_unbind: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "unbind").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 755001590)!
        }
    }()
    internal func _unbind(argcount: Int) -> Godot.Callable {
        let __temporary = Godot.Callable()
        withUnsafePointer(to: argcount) { (__ptr_argcount) in
            withUnsafeArgumentPackPointer(__ptr_argcount) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_unbind(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_call: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "call").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3643564216)!
        }
    }()
    internal func _call<each VariantRest : ConvertibleToVariant>(_ rest: repeat each VariantRest) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_call(__ptr_self, __accessPtr, __ptr___temporary, Int32(packCount))
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_call_deferred: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "call_deferred").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3286317445)!
        }
    }()
    internal func _callDeferred<each VariantRest : ConvertibleToVariant>(_ rest: repeat each VariantRest) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_call_deferred(__ptr_self, __accessPtr, nil, Int32(packCount))
            }
        }
    }

    private static var __method_binding_rpc: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "rpc").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3286317445)!
        }
    }()
    internal func _rpc<each VariantRest : ConvertibleToVariant>(_ rest: repeat each VariantRest) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_rpc(__ptr_self, __accessPtr, nil, Int32(packCount))
            }
        }
    }

    private static var __method_binding_rpc_id: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "rpc_id").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 2270047679)!
        }
    }()
    internal func _rpcId<each VariantRest : ConvertibleToVariant>(peerId: Int, _ rest: repeat each VariantRest) {
        withUnsafePointer(to: peerId) { (__ptr_peerId) in
            withUnsafeArgumentPackPointer(__ptr_peerId, varargs: repeat each rest) { (packCount, __accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_rpc_id(__ptr_self, __accessPtr, nil, Int32(packCount))
                }
            }
        }
    }

    private static var __method_binding_bind: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "bind").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3224143119)!
        }
    }()
    internal func _bind<each VariantRest : ConvertibleToVariant>(_ rest: repeat each VariantRest) -> Godot.Callable {
        let __temporary = Godot.Callable()
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_bind(__ptr_self, __accessPtr, __ptr___temporary, Int32(packCount))
                }
            }
        }
        return __temporary
    }

    }
extension Callable: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}