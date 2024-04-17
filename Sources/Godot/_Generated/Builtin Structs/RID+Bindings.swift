//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

private var __constructor: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_RID, 0)!
}()

private var __constructorFromRID: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_RID, 1)!
}()

private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
}()

private var __operator_binding_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __operator_binding_not_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __operator_binding_less_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __operator_binding_less_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __operator_binding_greater_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __operator_binding_greater_equal_rid: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
}()

private var __method_binding_is_valid: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_valid").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3918633141)!
    }
}()

private var __method_binding_get_id: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_id").withUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3173160232)!
    }
}()

extension RID {
    static internal func makeOpaque() -> Opaque {
        Opaque(size: 8, destructorPtr: nil)
    }

    static internal func _make() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            __constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _make(
        from: Godot.RID
    ) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    __constructorFromRID(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _makeFromRIDPointer(
        from: UnsafeRawPointer
    ) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: nil)
        withUnsafeArgumentPackPointer(from) { __accessPtr in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                __constructorFromRID(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.RID,
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
        _ lhs: Godot.RID,
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
        _ lhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                __operator_binding_not(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_equal_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_not_equal_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLess(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_less_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLessEqual(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_less_equal_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreater(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_greater_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreaterEqual(
        _ lhs: Godot.RID,
        _ rhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    __operator_binding_greater_equal_rid(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _isValid() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_is_valid(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _id() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                __method_binding_get_id(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
}