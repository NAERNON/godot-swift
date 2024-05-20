//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum SignalBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "Signal bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 0)!
        constructorFromSignal = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 1)!
        constructorFromObjectGodotStringName = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorEqualSignal = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
        operatorNotEqualSignal = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        methodIsNull = GodotStringName(swiftStaticString: "is_null").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3918633141)!
        }
        methodGetObject = GodotStringName(swiftStaticString: "get_object").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4008621732)!
        }
        methodGetObjectID = GodotStringName(swiftStaticString: "get_object_id").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3173160232)!
        }
        methodGetName = GodotStringName(swiftStaticString: "get_name").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 1825232092)!
        }
        methodConnect = GodotStringName(swiftStaticString: "connect").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 979702392)!
        }
        methodDisconnect = GodotStringName(swiftStaticString: "disconnect").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3470848906)!
        }
        methodIsConnected = GodotStringName(swiftStaticString: "is_connected").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4129521963)!
        }
        methodGetConnections = GodotStringName(swiftStaticString: "get_connections").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4144163970)!
        }
        methodEmit = GodotStringName(swiftStaticString: "emit").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3286317445)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromSignal: GDExtensionPtrConstructor!

    static private (set) var constructorFromObjectGodotStringName: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualSignal: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualSignal: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var methodIsNull: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetObject: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetObjectID: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetName: GDExtensionPtrBuiltInMethod!

    static private (set) var methodConnect: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDisconnect: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsConnected: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetConnections: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEmit: GDExtensionPtrBuiltInMethod!
}

extension Signal {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 16, destructorPtr: useDestructor ? SignalBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            SignalBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        from: Godot.Signal
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    SignalBindings.constructorFromSignal(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make(
        object: Godot.Object?,
        signal: Godot.GodotStringName
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withTransferrableUnsafeRawPointer(to: signal) { __ptr_signal in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_signal) { __accessPtr in
                        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                            SignalBindings.constructorFromObjectGodotStringName(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.Signal,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.Signal,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.Signal
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                SignalBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.Signal,
        _ rhs: Godot.Signal
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorEqualSignal(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.Signal,
        _ rhs: Godot.Signal
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorNotEqualSignal(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.Signal,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.Signal,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    SignalBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _isNull() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodIsNull(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _object() -> Godot.Object? {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodGetObject(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _objectID() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodGetObjectID(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _name() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodGetName(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    @discardableResult
    mutating internal func _connect(
        callable: Godot.Callable,
        flags: Int = 0
    ) -> Int {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: callable) { __ptr_callable in
                withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                    withUnsafeArgumentPackPointer(__ptr_callable, __ptr_flags) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            SignalBindings.methodConnect(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _disconnect(
        callable: Godot.Callable
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: callable) { __ptr_callable in
            withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    SignalBindings.methodDisconnect(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    internal func _isConnected(
        callable: Godot.Callable
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: callable) { __ptr_callable in
                withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        SignalBindings.methodIsConnected(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _connections() -> Godot.AnyGodotArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodGetConnections(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _emit<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                SignalBindings.methodEmit(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, Int32(packCount))
            }
        }
    }
}