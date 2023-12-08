//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __constructor: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 0)!
}()
private var __constructor_rid: GDExtensionPtrConstructor = {
    return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_RID, 1)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __operator_binding_not_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __operator_binding_less_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __operator_binding_less_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __operator_binding_greater_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __operator_binding_greater_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()
private var __method_binding_is_valid: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_valid").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_id: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_id").withUnsafeRawPointer { __ptr__method_name in
    return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3173160232)!
    }
}()
extension RID {
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _constructor_rid(from: Godot.RID) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    __constructor_rid(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_rid(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructor_rid(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: VariantEncodable>(_ lhs: Godot.RID, _ rhs: Value) -> Bool {
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

    static internal func _operatorNotEqual<Value: VariantEncodable>(_ lhs: Godot.RID, _ rhs: Value) -> Bool {
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

    static internal func _operatorNot(_ lhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                __operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    static internal func _operatorEqual(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_equal_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorNotEqual(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_not_equal_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorLess(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_less_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorLessEqual(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_less_equal_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorGreater(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_greater_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorGreaterEqual(_ lhs: Godot.RID, _ rhs: Godot.RID) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    __operator_binding_greater_equal_rid(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    internal func _isValid() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_is_valid(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    internal func _id() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                __method_binding_get_id(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }