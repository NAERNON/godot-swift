//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum RIDBindings {
    static private var areBindingsLoaded = false
    
    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "RID bindings are already loaded.")
        areBindingsLoaded = true
        
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_RID, 0)!
        constructorFromRID = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_RID, 1)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorEqualRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        operatorNotEqualRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        operatorLessRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        operatorLessEqualRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        operatorGreaterRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        operatorGreaterEqualRID = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_RID, GDEXTENSION_VARIANT_TYPE_RID)!
        methodIsValid = GodotStringName(swiftStaticString: "is_valid").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3918633141)!
        }
        methodGetID = GodotStringName(swiftStaticString: "get_id").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_RID, __ptr__method_name, 3173160232)!
        }
    }
    
    static private(set) var constructor: GDExtensionPtrConstructor!
    static private(set) var constructorFromRID: GDExtensionPtrConstructor!
    static private(set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNot: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorEqualRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorNotEqualRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorLessRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorLessEqualRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorGreaterRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var operatorGreaterEqualRID: GDExtensionPtrOperatorEvaluator!
    static private(set) var methodIsValid: GDExtensionPtrBuiltInMethod!
    static private(set) var methodGetID: GDExtensionPtrBuiltInMethod!
}

extension RID {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 8, destructorPtr: useDestructor ? nil : nil)
    }
    
    static internal func make() -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            RIDBindings.constructor(__ptr___temporary, nil)
        }
        return __temporary
    }
    
    static internal func make(
        from: Godot.RID
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    RIDBindings.constructorFromRID(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }
    
    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.RID,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    RIDBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    static internal func _operatorNot(
        _ lhs: Godot.RID
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                RIDBindings.operatorNot(__ptr_lhs, nil, __temporary)
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
                    RIDBindings.operatorEqualRID(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorNotEqualRID(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorLessRID(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorLessEqualRID(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorGreaterRID(__ptr_lhs, __ptr_rhs, __temporary)
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
                    RIDBindings.operatorGreaterEqualRID(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }
    
    internal func _isValid() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                RIDBindings.methodIsValid(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
    
    internal func _id() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                RIDBindings.methodGetID(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
}