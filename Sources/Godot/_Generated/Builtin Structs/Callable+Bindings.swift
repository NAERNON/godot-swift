//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum CallableBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "Callable bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_CALLABLE)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 0)!
        constructorFromCallable = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 1)!
        constructorFromObjectGodotStringName = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_CALLABLE, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorEqualCallable = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
        operatorNotEqualCallable = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_CALLABLE, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        methodCallv = GodotStringName(swiftStaticString: "callv").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 413578926)!
        }
        methodIsNull = GodotStringName(swiftStaticString: "is_null").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
        methodIsCustom = GodotStringName(swiftStaticString: "is_custom").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
        methodIsStandard = GodotStringName(swiftStaticString: "is_standard").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
        methodIsValid = GodotStringName(swiftStaticString: "is_valid").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3918633141)!
        }
        methodGetObject = GodotStringName(swiftStaticString: "get_object").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 4008621732)!
        }
        methodGetObjectID = GodotStringName(swiftStaticString: "get_object_id").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
        methodGetMethod = GodotStringName(swiftStaticString: "get_method").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 1825232092)!
        }
        methodGetBoundArgumentsCount = GodotStringName(swiftStaticString: "get_bound_arguments_count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
        methodGetBoundArguments = GodotStringName(swiftStaticString: "get_bound_arguments").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 4144163970)!
        }
        methodHash = GodotStringName(swiftStaticString: "hash").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3173160232)!
        }
        methodBindv = GodotStringName(swiftStaticString: "bindv").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3564560322)!
        }
        methodUnbind = GodotStringName(swiftStaticString: "unbind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 755001590)!
        }
        methodCall = GodotStringName(swiftStaticString: "call").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3643564216)!
        }
        methodCallDeferred = GodotStringName(swiftStaticString: "call_deferred").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3286317445)!
        }
        methodRpc = GodotStringName(swiftStaticString: "rpc").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3286317445)!
        }
        methodRpcID = GodotStringName(swiftStaticString: "rpc_id").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 2270047679)!
        }
        methodBind = GodotStringName(swiftStaticString: "bind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_CALLABLE, __ptr__method_name, 3224143119)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromCallable: GDExtensionPtrConstructor!

    static private (set) var constructorFromObjectGodotStringName: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualCallable: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualCallable: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var methodCallv: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsNull: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsCustom: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsStandard: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValid: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetObject: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetObjectID: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetMethod: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetBoundArgumentsCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetBoundArguments: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHash: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBindv: GDExtensionPtrBuiltInMethod!

    static private (set) var methodUnbind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCall: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCallDeferred: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRpc: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRpcID: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBind: GDExtensionPtrBuiltInMethod!
}

extension Callable {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 16, destructorPtr: useDestructor ? CallableBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            CallableBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Godot.Callable
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    CallableBindings.constructorFromCallable(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        object: Godot.Object?,
        method: Godot.GodotStringName
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withTransferrableUnsafeRawPointer(to: method) { __ptr_method in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_method) { __accessPtr in
                        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                            CallableBindings.constructorFromObjectGodotStringName(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.Callable,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.Callable,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.Callable
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                CallableBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.Callable,
        _ rhs: Godot.Callable
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorEqualCallable(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.Callable,
        _ rhs: Godot.Callable
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorNotEqualCallable(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.Callable,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.Callable,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    CallableBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _callv<Value: Variant.Storable>(
        arguments: Godot.GodotArray<Value>
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: arguments) { __ptr_arguments in
                withUnsafeArgumentPackPointer(__ptr_arguments) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        CallableBindings.methodCallv(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _isNull() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodIsNull(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isCustom() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodIsCustom(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isStandard() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodIsStandard(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValid() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodIsValid(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _object() -> Godot.Object? {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodGetObject(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _objectID() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodGetObjectID(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _method() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodGetMethod(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _boundArgumentsCount() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodGetBoundArgumentsCount(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _boundArguments() -> Godot.AnyGodotArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodGetBoundArguments(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hash() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodHash(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    @discardableResult
    mutating internal func _bindv<Value: Variant.Storable>(
        arguments: Godot.GodotArray<Value>
    ) -> Godot.Callable {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: arguments) { __ptr_arguments in
                withUnsafeArgumentPackPointer(__ptr_arguments) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        CallableBindings.methodBindv(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _unbind(
        argcount: Int
    ) -> Godot.Callable {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: argcount) { __ptr_argcount in
                withUnsafeArgumentPackPointer(__ptr_argcount) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        CallableBindings.methodUnbind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _call<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    CallableBindings.methodCall(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, Int32(packCount))
                }
            }
        }
    }

    internal func _callDeferred<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodCallDeferred(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, Int32(packCount))
            }
        }
    }

    internal func _rpc<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                CallableBindings.methodRpc(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, Int32(packCount))
            }
        }
    }

    internal func _rpcID<each VariantRest : Variant.Storable>(
        peerID: Int,
        _ rest: repeat each VariantRest
    ) {
        withTransferrableUnsafeRawPointer(to: peerID) { __ptr_peerID in
            withUnsafeArgumentPackPointer(__ptr_peerID, varargs: repeat each rest) { packCount, __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    CallableBindings.methodRpcID(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, Int32(packCount))
                }
            }
        }
    }

    internal func _bind<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) -> Godot.Callable {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
                withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                    CallableBindings.methodBind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, Int32(packCount))
                }
            }
        }
    }
}