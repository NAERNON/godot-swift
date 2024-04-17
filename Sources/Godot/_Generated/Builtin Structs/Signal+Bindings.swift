//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

private var __destructor: GDExtensionPtrDestructor = {
    return GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()

private var __constructor: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 0)!
}()

private var __constructorFromSignal: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 1)!
}()

private var __constructorFromObjectGodotStringName: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 2)!
}()

private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_equal_signal: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()

private var __operator_binding_not_equal_signal: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()

private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()

private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()

private var __method_binding_is_null: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_null").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3918633141)!
    }
}()

private var __method_binding_get_object: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_object").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4008621732)!
    }
}()

private var __method_binding_get_object_id: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_object_id").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3173160232)!
    }
}()

private var __method_binding_get_name: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_name").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 1825232092)!
    }
}()

private var __method_binding_connect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "connect").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 979702392)!
    }
}()

private var __method_binding_disconnect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "disconnect").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3470848906)!
    }
}()

private var __method_binding_is_connected: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_connected").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4129521963)!
    }
}()

private var __method_binding_get_connections: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_connections").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4144163970)!
    }
}()

private var __method_binding_emit: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "emit").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3286317445)!
    }
}()

extension Signal {
    static internal func makeOpaque() -> Opaque {
        Opaque(size: 16, destructorPtr: __destructor)
    }

    static internal func _make() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _make(
        from: Godot.Signal
    ) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    __constructorFromSignal(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _makeFromSignalPointer(
        from: UnsafeRawPointer
    ) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withUnsafeArgumentPackPointer(from) { __accessPtr in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructorFromSignal(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _make(
        object: Godot.Object?,
        signal: Godot.GodotStringName
    ) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withTransferrableUnsafeRawPointer(to: object) { __ptr_object in
            withUnsafePointer(to: __ptr_object) { _ptr___ptr_object in
                withTransferrableUnsafeRawPointer(to: signal) { __ptr_signal in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_signal) { __accessPtr in
                        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                            __constructorFromObjectGodotStringName(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _makeFromObjectGodotStringNamePointer(
        object: UnsafeRawPointer,
        signal: UnsafeRawPointer
    ) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withUnsafeArgumentPackPointer(object, signal) { __accessPtr in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructorFromObjectGodotStringName(__ptr___temporary, __accessPtr)
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
                    __operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __temporary)
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
                    __operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.Signal
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                __operator_binding_not(__ptr_lhs, nil, __temporary)
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
                    __operator_binding_equal_signal(__ptr_lhs, __ptr_rhs, __temporary)
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
                    __operator_binding_not_equal_signal(__ptr_lhs, __ptr_rhs, __temporary)
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
                    __operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
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
                    __operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _isNull() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_is_null(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _object() -> Godot.Object? {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_get_object(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _objectID() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_get_object_id(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _name() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_get_name(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    @discardableResult
    mutating internal func _connect(
        callable: Godot.Callable,
        flags: Int = 0
    ) -> Int {
        replaceOpaqueValueIfNecessary()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: callable) { __ptr_callable in
                withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                    withUnsafeArgumentPackPointer(__ptr_callable, __ptr_flags) { __accessPtr in
                        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                            __method_binding_connect(__ptr_self, __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _disconnect(
        callable: Godot.Callable
    ) {
        replaceOpaqueValueIfNecessary()
        withTransferrableUnsafeRawPointer(to: callable) { __ptr_callable in
            withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
                withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                    __method_binding_disconnect(__ptr_self, __accessPtr, nil, 1)
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
                        __method_binding_is_connected(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _connections() -> Godot.AnyGodotArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_get_connections(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _emit<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { packCount, __accessPtr in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_emit(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, nil, Int32(packCount))
            }
        }
    }
}