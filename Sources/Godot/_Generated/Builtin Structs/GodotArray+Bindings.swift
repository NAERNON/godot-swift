//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension GodotArray {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 0)!
    }()
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 1)!
    }()
    static internal func _constructor_godotarray(from: Godot.GodotArray) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_godotarray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_godotarray(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotarray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotarray_int_godotstringname_variant: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 2)!
    }()
    static internal func _constructor_godotarray_int_godotstringname_variant(base: Godot.GodotArray, type: Int, className: Godot.GodotStringName, script: Godot.Variant) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        base.withUnsafeRawPointer { (__ptr_base) in
            withUnsafePointer(to: type) { (__ptr_type) in
                className.withUnsafeRawPointer { (__ptr_className) in
                    script.withUnsafeRawPointer { (__ptr_script) in
                        withUnsafeArgumentPackPointer(__ptr_base, __ptr_type, __ptr_className, __ptr_script) { (__accessPtr) in
                            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                                Self.__constructor_godotarray_int_godotstringname_variant(__ptr___temporary, __accessPtr)
                            }
                        }
                    }
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_godotarray_int_godotstringname_variant(base: UnsafeRawPointer, type: UnsafeRawPointer, className: UnsafeRawPointer, script: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(base, type, className, script) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotarray_int_godotstringname_variant(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedbytearray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 3)!
    }()
    static internal func _constructor_packedbytearray(from: Godot.PackedByteArray) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedbytearray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedbytearray(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedbytearray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedint32array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 4)!
    }()
    static internal func _constructor_packedint32array(from: Godot.PackedInt32Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedint32array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedint32array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedint32array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedint64array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 5)!
    }()
    static internal func _constructor_packedint64array(from: Godot.PackedInt64Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedint64array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedint64array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedint64array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedfloat32array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 6)!
    }()
    static internal func _constructor_packedfloat32array(from: Godot.PackedFloat32Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedfloat32array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedfloat32array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedfloat32array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedfloat64array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 7)!
    }()
    static internal func _constructor_packedfloat64array(from: Godot.PackedFloat64Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedfloat64array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedfloat64array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedfloat64array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedstringarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 8)!
    }()
    static internal func _constructor_packedstringarray(from: Godot.PackedStringArray) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedstringarray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedstringarray(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedstringarray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedvector2array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 9)!
    }()
    static internal func _constructor_packedvector2array(from: Godot.PackedVector2Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedvector2array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedvector2array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedvector2array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedvector3array: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 10)!
    }()
    static internal func _constructor_packedvector3array(from: Godot.PackedVector3Array) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedvector3array(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedvector3array(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedvector3array(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedcolorarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_ARRAY, 11)!
    }()
    static internal func _constructor_packedcolorarray(from: Godot.PackedColorArray) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_packedcolorarray(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_packedcolorarray(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedcolorarray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.GodotArray, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.GodotArray, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotDictionary) -> Bool {
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

    private static var __operator_binding_equal_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorLess(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_less_equal_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorLessEqual(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_less_equal_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorGreater(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_greater_equal_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorGreaterEqual(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_greater_equal_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Godot.GodotArray {
        let __temporary = GodotArray()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_add_godotarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotArray, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: borrowing Godot.Variant.Storage, at index: GDExtensionInt) {
        replaceOpaqueValueIfNecessary()
        value.withUnsafeRawPointer { (__ptr_value) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_size: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _size() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_size(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_empty: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_empty").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isEmpty() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_empty(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_clear: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _clear() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_clear(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_hash: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "hash").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
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

    private static var __method_binding_assign: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "assign").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2307260970)!
        }
    }()
    mutating internal func _assign(array: Godot.GodotArray) {
        replaceOpaqueValueIfNecessary()
        array.withUnsafeRawPointer { (__ptr_array) in
            withUnsafeArgumentPackPointer(__ptr_array) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_assign(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_push_back: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "push_back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
    }()
    mutating internal func _pushBack<Variant1 : ConvertibleToVariant>(value: Variant1) {
        replaceOpaqueValueIfNecessary()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_push_back(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_push_front: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "push_front").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
    }()
    mutating internal func _pushFront<Variant1 : ConvertibleToVariant>(value: Variant1) {
        replaceOpaqueValueIfNecessary()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_push_front(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_append: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "append").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
    }()
    mutating internal func _append<Variant1 : ConvertibleToVariant>(value: Variant1) {
        replaceOpaqueValueIfNecessary()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_append(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_append_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "append_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2307260970)!
        }
    }()
    mutating internal func _appendArray(_ array: Godot.GodotArray) {
        replaceOpaqueValueIfNecessary()
        array.withUnsafeRawPointer { (__ptr_array) in
            withUnsafeArgumentPackPointer(__ptr_array) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_append_array(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_resize: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "resize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 848867239)!
        }
    }()
    @discardableResult mutating internal func _resize(size: Int) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafeArgumentPackPointer(__ptr_size) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_resize(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_insert: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "insert").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3176316662)!
        }
    }()
    @discardableResult mutating internal func _insert<Variant1 : ConvertibleToVariant>(position: Int, value: Variant1) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: position) { (__ptr_position) in
            value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_position, __ptr_value) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_insert(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_remove_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "remove_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2823966027)!
        }
    }()
    mutating internal func _removeAt(position: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_remove_at(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_fill: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "fill").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
    }()
    mutating internal func _fill<Variant1 : ConvertibleToVariant>(value: Variant1) {
        replaceOpaqueValueIfNecessary()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_fill(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_erase: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "erase").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3316032543)!
        }
    }()
    mutating internal func _erase<Variant1 : ConvertibleToVariant>(value: Variant1) {
        replaceOpaqueValueIfNecessary()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_erase(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_front: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "front").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _front() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_front(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_back: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _back() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_back(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_pick_random: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pick_random").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _pickRandom() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_pick_random(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_find: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "find").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2336346817)!
        }
    }()
    internal func _find<Variant1 : ConvertibleToVariant>(what: Variant1, from: Int = 0) -> Int {
        var __temporary = Int()
        what.makeVariant().withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_find(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_rfind: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "rfind").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2336346817)!
        }
    }()
    internal func _rfind<Variant1 : ConvertibleToVariant>(what: Variant1, from: Int = -1) -> Int {
        var __temporary = Int()
        what.makeVariant().withUnsafeRawPointer { (__ptr_what) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_rfind(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_count: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1481661226)!
        }
    }()
    internal func _count<Variant1 : ConvertibleToVariant>(value: Variant1) -> Int {
        var __temporary = Int()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_count(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "has").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3680194679)!
        }
    }()
    internal func _has<Variant1 : ConvertibleToVariant>(value: Variant1) -> Bool {
        var __temporary = Bool()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_has(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_pop_back: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pop_back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1321915136)!
        }
    }()
    @discardableResult mutating internal func _popBack() -> Godot.Variant.Storage {
        replaceOpaqueValueIfNecessary()
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_pop_back(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_pop_front: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pop_front").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1321915136)!
        }
    }()
    @discardableResult mutating internal func _popFront() -> Godot.Variant.Storage {
        replaceOpaqueValueIfNecessary()
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_pop_front(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_pop_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "pop_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3518259424)!
        }
    }()
    @discardableResult mutating internal func _popAt(position: Int) -> Godot.Variant.Storage {
        replaceOpaqueValueIfNecessary()
        let __temporary = Godot.Variant.Storage()
        withUnsafePointer(to: position) { (__ptr_position) in
            withUnsafeArgumentPackPointer(__ptr_position) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_pop_at(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sort: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sort").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _sort() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_sort(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_sort_custom: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sort_custom").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3470848906)!
        }
    }()
    mutating internal func _sortCustom(`func`: Godot.Callable) {
        replaceOpaqueValueIfNecessary()
        `func`.withUnsafeRawPointer { (__ptr_func) in
            withUnsafeArgumentPackPointer(__ptr_func) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_sort_custom(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_shuffle: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "shuffle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _shuffle() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_shuffle(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_bsearch: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "bsearch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3372222236)!
        }
    }()
    internal func _bsearch<Variant1 : ConvertibleToVariant>(value: Variant1, before: Bool = true) -> Int {
        var __temporary = Int()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafePointer(to: before) { (__ptr_before) in
                withUnsafeArgumentPackPointer(__ptr_value, __ptr_before) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_bsearch(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_bsearch_custom: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "bsearch_custom").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 161317131)!
        }
    }()
    internal func _bsearchCustom<Variant1 : ConvertibleToVariant>(value: Variant1, `func`: Godot.Callable, before: Bool = true) -> Int {
        var __temporary = Int()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            `func`.withUnsafeRawPointer { (__ptr_func) in
                withUnsafePointer(to: before) { (__ptr_before) in
                    withUnsafeArgumentPackPointer(__ptr_value, __ptr_func, __ptr_before) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_bsearch_custom(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_reverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "reverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _reverse() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_reverse(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_duplicate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "duplicate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 636440122)!
        }
    }()
    internal func _duplicate(deep: Bool = false) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: deep) { (__ptr_deep) in
            withUnsafeArgumentPackPointer(__ptr_deep) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_duplicate(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_slice: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "slice").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1393718243)!
        }
    }()
    internal func _slice(begin: Int, end: Int = 2147483647, step: Int = 1, deep: Bool = false) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        withUnsafePointer(to: begin) { (__ptr_begin) in
            withUnsafePointer(to: end) { (__ptr_end) in
                withUnsafePointer(to: step) { (__ptr_step) in
                    withUnsafePointer(to: deep) { (__ptr_deep) in
                        withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end, __ptr_step, __ptr_deep) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    Self.__method_binding_slice(__ptr_self, __accessPtr, __ptr___temporary, 4)
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_filter: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4075186556)!
        }
    }()
    internal func _filter(method: Godot.Callable) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        method.withUnsafeRawPointer { (__ptr_method) in
            withUnsafeArgumentPackPointer(__ptr_method) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_filter(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_map: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "map").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4075186556)!
        }
    }()
    internal func _map(method: Godot.Callable) -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        method.withUnsafeRawPointer { (__ptr_method) in
            withUnsafeArgumentPackPointer(__ptr_method) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_map(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_reduce: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "reduce").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4272450342)!
        }
    }()
    internal func _reduce<Variant1 : ConvertibleToVariant>(method: Godot.Callable, accum: Variant1 = Variant()) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        method.withUnsafeRawPointer { (__ptr_method) in
            accum.makeVariant().withUnsafeRawPointer { (__ptr_accum) in
                withUnsafeArgumentPackPointer(__ptr_method, __ptr_accum) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_reduce(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_any: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "any").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4129521963)!
        }
    }()
    internal func _any(method: Godot.Callable) -> Bool {
        var __temporary = Bool()
        method.withUnsafeRawPointer { (__ptr_method) in
            withUnsafeArgumentPackPointer(__ptr_method) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_any(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_all: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "all").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 4129521963)!
        }
    }()
    internal func _all(method: Godot.Callable) -> Bool {
        var __temporary = Bool()
        method.withUnsafeRawPointer { (__ptr_method) in
            withUnsafeArgumentPackPointer(__ptr_method) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_all(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_max: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "max").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _max() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_max(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_min: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "min").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _min() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_min(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_typed: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_typed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isTyped() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_typed(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_is_same_typed: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_same_typed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 2988181878)!
        }
    }()
    internal func _isSameTyped(array: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        array.withUnsafeRawPointer { (__ptr_array) in
            withUnsafeArgumentPackPointer(__ptr_array) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_is_same_typed(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_typed_builtin: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_typed_builtin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3173160232)!
        }
    }()
    internal func _typedBuiltin() -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_typed_builtin(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_typed_class_name: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_typed_class_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1825232092)!
        }
    }()
    internal func _typedClassName() -> Godot.GodotStringName {
        let __temporary = Godot.GodotStringName()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_typed_class_name(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_typed_script: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_typed_script").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 1460142086)!
        }
    }()
    internal func _typedScript() -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_typed_script(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_make_read_only: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "make_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _makeReadOnly() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_make_read_only(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_is_read_only: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "is_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_ARRAY, __ptr__method_name, 3918633141)!
        }
    }()
    internal func _isReadOnly() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_is_read_only(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    }