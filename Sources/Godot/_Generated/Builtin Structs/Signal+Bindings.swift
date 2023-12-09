//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __destructor: GDExtensionPtrDestructor = {
    return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()
private var __constructor: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 0)!
}()
private var __constructor_signal: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 1)!
}()
private var __constructor_object_godotstringname: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_SIGNAL, 2)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_equal_signal: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()
private var __operator_binding_not_equal_signal: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
}()
private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()
private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_SIGNAL, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()
private var __method_binding_is_null: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_null").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_object: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_object").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4008621732)!
    }
}()
private var __method_binding_get_object_id: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_object_id").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3173160232)!
    }
}()
private var __method_binding_get_name: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_name").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 1825232092)!
    }
}()
private var __method_binding_connect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "connect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 979702392)!
    }
}()
private var __method_binding_disconnect: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "disconnect").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3470848906)!
    }
}()
private var __method_binding_is_connected: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_connected").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4129521963)!
    }
}()
private var __method_binding_get_connections: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_connections").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 4144163970)!
    }
}()
private var __method_binding_emit: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "emit").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_SIGNAL, __ptr__method_name, 3286317445)!
    }
}()
extension Signal {
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _constructor_signal(from: Godot.Signal) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    __constructor_signal(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_signal(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructor_signal(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _constructor_object_godotstringname(object: Godot.Object?, signal: Godot.GodotStringName) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        object.withUnsafeRawPointer { (__ptr_object) in
            withUnsafePointer(to: __ptr_object) { (_ptr___ptr_object) in
                signal.withUnsafeRawPointer { (__ptr_signal) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_object, __ptr_signal) { (__accessPtr) in
                        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                            __constructor_object_godotstringname(__ptr___temporary, __accessPtr)
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_object_godotstringname(object: UnsafeRawPointer, signal: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: __destructor)
        withUnsafeArgumentPackPointer(object, signal) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructor_object_godotstringname(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: VariantStorableIn>(_ lhs: Godot.Signal, _ rhs: Value) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual<Value: VariantStorableIn>(_ lhs: Godot.Signal, _ rhs: Value) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNot(_ lhs: Godot.Signal) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                __operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    static internal func _operatorEqual(_ lhs: Godot.Signal, _ rhs: Godot.Signal) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_signal(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual(_ lhs: Godot.Signal, _ rhs: Godot.Signal) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_signal(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorIn<Value1: VariantStorable, Value2: VariantStorable>(_ lhs: Godot.Signal, _ rhs: Godot.GodotDictionary<Value1, Value2>) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_in_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorIn<Value: VariantStorable>(_ lhs: Godot.Signal, _ rhs: Godot.GodotArray<Value>) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_in_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    internal func _isNull() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_is_null(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _object() -> Godot.Object? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_get_object(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return Godot.Object.retrievedInstanceManagedByGodot(__temporary)
    }

    internal func _objectId() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_get_object_id(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _name() -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_get_name(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    @discardableResult mutating internal func _connect(callable: Godot.Callable, flags: Int = 0) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafePointer(to: flags) { (__ptr_flags) in
                withUnsafeArgumentPackPointer(__ptr_callable, __ptr_flags) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            __method_binding_connect(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    mutating internal func _disconnect(callable: Godot.Callable) {
        replaceOpaqueValueIfNecessary()
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafeArgumentPackPointer(__ptr_callable) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    __method_binding_disconnect(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    internal func _isConnected(callable: Godot.Callable) -> Bool {
        var __temporary = Bool()
        callable.withUnsafeRawPointer { (__ptr_callable) in
            withUnsafeArgumentPackPointer(__ptr_callable) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        __method_binding_is_connected(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    internal func _connections() -> Godot.AnyGodotArray {
        let __temporary = Godot.AnyGodotArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_get_connections(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _emit<each VariantRest : VariantStorableIn>(_ rest: repeat each VariantRest) {
        withUnsafeArgumentPackPointer(varargs: repeat each rest) { (packCount, __accessPtr) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_emit(__ptr_self, __accessPtr, nil, Int32(packCount))
            }
        }
    }

    }