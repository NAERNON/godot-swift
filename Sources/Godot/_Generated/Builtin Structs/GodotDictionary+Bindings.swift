//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum GodotDictionaryBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotDictionary bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 0)!
        constructorFromGodotDictionary = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 1)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorEqualGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorNotEqualGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        keyedSetter = GodotExtension.Interface.variantGetPtrKeyedSetter(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        keyedGetter = GodotExtension.Interface.variantGetPtrKeyedGetter(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        keyedChecker = GodotExtension.Interface.variantGetPtrKeyedChecker(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        methodSize = GodotStringName(swiftStaticString: "size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3173160232)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3918633141)!
        }
        methodClear = GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3218959716)!
        }
        methodMerge = GodotStringName(swiftStaticString: "merge").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2079548978)!
        }
        methodHas = GodotStringName(swiftStaticString: "has").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3680194679)!
        }
        methodHasAll = GodotStringName(swiftStaticString: "has_all").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2988181878)!
        }
        methodFindKey = GodotStringName(swiftStaticString: "find_key").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 1988825835)!
        }
        methodErase = GodotStringName(swiftStaticString: "erase").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 1776646889)!
        }
        methodHash = GodotStringName(swiftStaticString: "hash").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3173160232)!
        }
        methodKeys = GodotStringName(swiftStaticString: "keys").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 4144163970)!
        }
        methodValues = GodotStringName(swiftStaticString: "values").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 4144163970)!
        }
        methodDuplicate = GodotStringName(swiftStaticString: "duplicate").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 830099069)!
        }
        methodGet = GodotStringName(swiftStaticString: "get").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2205440559)!
        }
        methodMakeReadOnly = GodotStringName(swiftStaticString: "make_read_only").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3218959716)!
        }
        methodIsReadOnly = GodotStringName(swiftStaticString: "is_read_only").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3918633141)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotDictionary: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var keyedSetter: GDExtensionPtrKeyedSetter!

    static private (set) var keyedGetter: GDExtensionPtrKeyedGetter!

    static private (set) var keyedChecker: GDExtensionPtrKeyedChecker!

    static private (set) var methodSize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!

    static private (set) var methodClear: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMerge: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHas: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHasAll: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFindKey: GDExtensionPtrBuiltInMethod!

    static private (set) var methodErase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHash: GDExtensionPtrBuiltInMethod!

    static private (set) var methodKeys: GDExtensionPtrBuiltInMethod!

    static private (set) var methodValues: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDuplicate: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGet: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMakeReadOnly: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsReadOnly: GDExtensionPtrBuiltInMethod!
}

extension GodotDictionary {
    static internal func makeOpaque(
        useDestructor: Bool = true
    ) -> Opaque {
        Opaque(size: 8, destructorPtr: useDestructor ? GodotDictionaryBindings.destructor : nil)
    }

    static internal func make() -> Self {
        let __temporary: Opaque = makeOpaque()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            GodotDictionaryBindings.constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    static internal func make<Value1: Variant.Storable, Value2: Variant.Storable>(
        from: Godot.GodotDictionary<Value1, Value2>
    ) -> Self {
        let __temporary: Opaque = makeOpaque()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotDictionaryBindings.constructorFromGodotDictionary(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }

    static internal func _operatorEqual<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Value3
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Value3
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                GodotDictionaryBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorEqual<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable, Value4: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Godot.GodotDictionary<Value3, Value4>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorEqualGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable, Value4: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Godot.GodotDictionary<Value3, Value4>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorNotEqualGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable, Value4: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Godot.GodotDictionary<Value3, Value4>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable, Value3: Variant.Storable>(
        _ lhs: Godot.GodotDictionary<Value1, Value2>,
        _ rhs: Godot.GodotArray<Value3>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotDictionaryBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        forKey key: borrowing Variant.Storage
    ) -> Variant.Storage {
        let __returnValue = Variant.Storage()

        __returnValue.withUnsafeMutableRawPointer { __ptr___returnValue in
            key.withUnsafeRawPointer { __ptr_key in
                self.withUnsafeOpaquePointer { __ptr_self in
                    GodotDictionaryBindings.keyedGetter(__ptr_self, __ptr_key, __ptr___returnValue)
                }
            }
        }

        return __returnValue
    }

    internal mutating func _set(
        value: borrowing Variant.Storage,
        forKey key: borrowing Variant.Storage
    ) {
        makeUniqueIfSharedOpaque()

        value.withUnsafeRawPointer { __ptr_value in
            key.withUnsafeRawPointer { __ptr_key in
                self.withUnsafeMutableOpaquePointer { __ptr_self in
                    GodotDictionaryBindings.keyedSetter(__ptr_self, __ptr_key, __ptr_value)
                }
            }
        }
    }

    internal func _check(
        key: borrowing Variant.Storage
    ) -> Bool {
        var keyCheck = UInt32()

        key.withUnsafeRawPointer { __ptr_key in
            self.withUnsafeOpaquePointer { __ptr_self in
                keyCheck = GodotDictionaryBindings.keyedChecker(__ptr_self, __ptr_key)
            }
        }

        return keyCheck != 0
    }

    internal func _size() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodSize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    mutating internal func _clear() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotDictionaryBindings.methodClear(__ptr_self, nil, nil, 0)
        }
    }

    mutating internal func _merge<Value1: Variant.Storable, Value2: Variant.Storable>(
        dictionary: Godot.GodotDictionary<Value1, Value2>,
        overwrite: Bool = false
    ) {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeRawPointer(to: dictionary) { __ptr_dictionary in
            withTransferrableUnsafeRawPointer(to: overwrite) { __ptr_overwrite in
                withUnsafeArgumentPackPointer(__ptr_dictionary, __ptr_overwrite) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        GodotDictionaryBindings.methodMerge(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    internal func _has(
        key: borrowing Godot.Variant.Storage
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafeArgumentPackPointer(__ptr_key) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotDictionaryBindings.methodHas(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _hasAll<Value: Variant.Storable>(
        keys: Godot.GodotArray<Value>
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: keys) { __ptr_keys in
                withUnsafeArgumentPackPointer(__ptr_keys) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotDictionaryBindings.methodHasAll(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _findKey(
        value: borrowing Godot.Variant.Storage
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
                withUnsafeArgumentPackPointer(__ptr_value) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotDictionaryBindings.methodFindKey(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    @discardableResult
    mutating internal func _erase(
        key: borrowing Godot.Variant.Storage
    ) -> Bool {
        makeUniqueIfSharedOpaque()
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withUnsafeArgumentPackPointer(__ptr_key) { __accessPtr in
                    withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
                        GodotDictionaryBindings.methodErase(__ptr_self, __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _hash() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodHash(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _keys() -> Godot.AnyGodotArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodKeys(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _values() -> Godot.AnyGodotArray {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodValues(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _duplicate(
        deep: Bool = false
    ) -> Godot.GodotDictionary<Key, AssociatedValue> {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: deep) { __ptr_deep in
                withUnsafeArgumentPackPointer(__ptr_deep) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotDictionaryBindings.methodDuplicate(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _get(
        key: borrowing Godot.Variant.Storage,
        `default`: borrowing Godot.Variant.Storage
    ) -> Godot.Variant.Storage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: key) { __ptr_key in
                withTransferrableUnsafeRawPointer(to: `default`) { __ptr_default in
                    withUnsafeArgumentPackPointer(__ptr_key, __ptr_default) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotDictionaryBindings.methodGet(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    mutating internal func _makeReadOnly() {
        makeUniqueIfSharedOpaque()
        withTransferrableUnsafeMutableRawPointer(to: &`self`) { __ptr_self in
            GodotDictionaryBindings.methodMakeReadOnly(__ptr_self, nil, nil, 0)
        }
    }

    internal func _isReadOnly() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotDictionaryBindings.methodIsReadOnly(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
}