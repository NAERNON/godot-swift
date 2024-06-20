//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum NodePathBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "NodePath bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 0)!
        constructorFromNodePath = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 1)!
        constructorFromGodotString = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_NODE_PATH, 2)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorEqualNodepath = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
        operatorNotEqualNodepath = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_NODE_PATH, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        methodIsAbsolute = GodotStringName(swiftStaticString: "is_absolute").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 3918633141)!
        }
        methodGetNameCount = GodotStringName(swiftStaticString: "get_name_count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 3173160232)!
        }
        methodGetName = GodotStringName(swiftStaticString: "get_name").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 2948586938)!
        }
        methodGetSubnameCount = GodotStringName(swiftStaticString: "get_subname_count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 3173160232)!
        }
        methodHash = GodotStringName(swiftStaticString: "hash").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 3173160232)!
        }
        methodGetSubname = GodotStringName(swiftStaticString: "get_subname").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 2948586938)!
        }
        methodGetConcatenatedNames = GodotStringName(swiftStaticString: "get_concatenated_names").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 1825232092)!
        }
        methodGetConcatenatedSubnames = GodotStringName(swiftStaticString: "get_concatenated_subnames").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 1825232092)!
        }
        methodGetAsPropertyPath = GodotStringName(swiftStaticString: "get_as_property_path").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 1598598043)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_NODE_PATH, __ptr__method_name, 3918633141)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromNodePath: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotString: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualNodepath: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualNodepath: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var methodIsAbsolute: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetNameCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetName: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetSubnameCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHash: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetSubname: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetConcatenatedNames: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetConcatenatedSubnames: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetAsPropertyPath: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!
}

extension NodePath {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 8, destructorPtr: useDestructor ? NodePathBindings.destructor : nil)
    }

    static internal func make() -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            NodePathBindings.constructor(__ptr___temporary, nil)
        }
        return __temporary
    }

    static internal func make(
        from: Godot.NodePath
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    NodePathBindings.constructorFromNodePath(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }

    static internal func make(
        from: Godot.GodotString
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    NodePathBindings.constructorFromGodotString(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.NodePath,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.NodePath,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.NodePath
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                NodePathBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.NodePath,
        _ rhs: Godot.NodePath
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorEqualNodepath(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.NodePath,
        _ rhs: Godot.NodePath
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorNotEqualNodepath(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.NodePath,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.NodePath,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    NodePathBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _isAbsolute() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodIsAbsolute(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _nameCount() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodGetNameCount(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _name(
        idx: Int
    ) -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        NodePathBindings.methodGetName(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _subnameCount() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodGetSubnameCount(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hash() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodHash(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _subname(
        idx: Int
    ) -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        NodePathBindings.methodGetSubname(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _concatenatedNames() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodGetConcatenatedNames(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _concatenatedSubnames() -> Godot.GodotStringName {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodGetConcatenatedSubnames(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _asPropertyPath() -> Godot.NodePath {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodGetAsPropertyPath(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                NodePathBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }
}