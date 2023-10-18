//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension PackedByteArray {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 0)!
    }()
    static internal func _constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor() -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            Self.__constructor(__ptr___temporary, nil)
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_packedbytearray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 1)!
    }()
    static internal func _constructor_packedbytearray(from: Godot.PackedByteArray) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
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
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedbytearray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, 2)!
    }()
    static internal func _constructor_godotarray(from: Godot.GodotArray) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
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
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotarray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.PackedByteArray, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.PackedByteArray, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.PackedByteArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.PackedByteArray, _ rhs: Godot.GodotDictionary) -> Bool {
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

    private static var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.PackedByteArray, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __operator_binding_equal_packedbytearray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.PackedByteArray, _ rhs: Godot.PackedByteArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_packedbytearray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_packedbytearray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.PackedByteArray, _ rhs: Godot.PackedByteArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_packedbytearray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_packedbytearray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.PackedByteArray, _ rhs: Godot.PackedByteArray) -> Godot.PackedByteArray {
        let __temporary = PackedByteArray()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_add_packedbytearray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Int {
        var __temporary = Int()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Int, at index: GDExtensionInt) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: value) { (__ptr_value) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_size: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3173160232)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3918633141)!
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

    private static var __method_binding_set: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _set(index: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_set(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_push_back: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "push_back").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 694024632)!
        }
    }()
    @discardableResult mutating internal func _pushBack(value: Int) -> Bool {
        replaceOpaqueValueIfNecessary()
        var __temporary = Bool()
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_push_back(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_append: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "append").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 694024632)!
        }
    }()
    @discardableResult mutating internal func _append(value: Int) -> Bool {
        replaceOpaqueValueIfNecessary()
        var __temporary = Bool()
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_append(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_append_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "append_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 791097111)!
        }
    }()
    mutating internal func _appendArray(_ array: Godot.PackedByteArray) {
        replaceOpaqueValueIfNecessary()
        array.withUnsafeRawPointer { (__ptr_array) in
            withUnsafeArgumentPackPointer(__ptr_array) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_append_array(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_remove_at: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "remove_at").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2823966027)!
        }
    }()
    mutating internal func _removeAt(index: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_remove_at(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_insert: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "insert").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1487112728)!
        }
    }()
    @discardableResult mutating internal func _insert(atIndex index: Int, value: Int) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_index, __ptr_value) { (__accessPtr) in
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

    private static var __method_binding_fill: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "fill").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2823966027)!
        }
    }()
    mutating internal func _fill(value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_fill(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_resize: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "resize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 848867239)!
        }
    }()
    @discardableResult mutating internal func _resize(newSize: Int) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: newSize) { (__ptr_newSize) in
            withUnsafeArgumentPackPointer(__ptr_newSize) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_resize(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_clear: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _clear() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_clear(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_has: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "has").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 931488181)!
        }
    }()
    internal func _has(value: Int) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: value) { (__ptr_value) in
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

    private static var __method_binding_reverse: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "reverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _reverse() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_reverse(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_slice: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "slice").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
    }()
    internal func _slice(begin: Int, end: Int = 2147483647) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        withUnsafePointer(to: begin) { (__ptr_begin) in
            withUnsafePointer(to: end) { (__ptr_end) in
                withUnsafeArgumentPackPointer(__ptr_begin, __ptr_end) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_slice(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sort: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sort").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _sort() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_sort(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_bsearch: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "bsearch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3380005890)!
        }
    }()
    @discardableResult mutating internal func _bsearch(value: Int, before: Bool = true) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: value) { (__ptr_value) in
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

    private static var __method_binding_duplicate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "duplicate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 851781288)!
        }
    }()
    @discardableResult mutating internal func _duplicate() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_duplicate(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_find: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "find").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2984303840)!
        }
    }()
    internal func _find(value: Int, from: Int = 0) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { (__accessPtr) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2984303840)!
        }
    }()
    internal func _rfind(value: Int, from: Int = -1) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: value) { (__ptr_value) in
            withUnsafePointer(to: from) { (__ptr_from) in
                withUnsafeArgumentPackPointer(__ptr_value, __ptr_from) { (__accessPtr) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _count(value: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: value) { (__ptr_value) in
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

    private static var __method_binding_get_string_from_ascii: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_string_from_ascii").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stringFromAscii() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_string_from_ascii(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_string_from_utf8: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_string_from_utf8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stringFromUtf8() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_string_from_utf8(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_string_from_utf16: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_string_from_utf16").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stringFromUtf16() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_string_from_utf16(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_string_from_utf32: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_string_from_utf32").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stringFromUtf32() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_string_from_utf32(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_get_string_from_wchar: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "get_string_from_wchar").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _stringFromWchar() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_get_string_from_wchar(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_hex_encode: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "hex_encode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3942272618)!
        }
    }()
    internal func _hexEncode() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_hex_encode(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_compress: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "compress").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1845905913)!
        }
    }()
    internal func _compress(compressionMode: Int = 0) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        withUnsafePointer(to: compressionMode) { (__ptr_compressionMode) in
            withUnsafeArgumentPackPointer(__ptr_compressionMode) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_compress(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decompress: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decompress").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
    }()
    internal func _decompress(bufferSize: Int, compressionMode: Int = 0) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        withUnsafePointer(to: bufferSize) { (__ptr_bufferSize) in
            withUnsafePointer(to: compressionMode) { (__ptr_compressionMode) in
                withUnsafeArgumentPackPointer(__ptr_bufferSize, __ptr_compressionMode) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_decompress(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decompress_dynamic: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decompress_dynamic").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2278869132)!
        }
    }()
    internal func _decompressDynamic(maxOutputSize: Int, compressionMode: Int = 0) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        withUnsafePointer(to: maxOutputSize) { (__ptr_maxOutputSize) in
            withUnsafePointer(to: compressionMode) { (__ptr_compressionMode) in
                withUnsafeArgumentPackPointer(__ptr_maxOutputSize, __ptr_compressionMode) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_decompress_dynamic(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_u8: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_u8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeU8(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_u8(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_s8: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_s8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeS8(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_s8(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_u16: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_u16").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeU16(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_u16(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_s16: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_s16").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeS16(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_s16(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_u32: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_u32").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeU32(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_u32(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_s32: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_s32").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeS32(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_s32(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_u64: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_u64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeU64(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_u64(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_s64: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_s64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 4103005248)!
        }
    }()
    internal func _decodeS64(byteOffset: Int) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_s64(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_half: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_half").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
    }()
    internal func _decodeHalf(byteOffset: Int) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_half(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_float: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_float").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
    }()
    internal func _decodeFloat(byteOffset: Int) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_float(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_double: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_double").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1401583798)!
        }
    }()
    internal func _decodeDouble(byteOffset: Int) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafeArgumentPackPointer(__ptr_byteOffset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_decode_double(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_encoded_var: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "has_encoded_var").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2914632957)!
        }
    }()
    internal func _hasEncodedVar(byteOffset: Int, allowObjects: Bool = false) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: allowObjects) { (__ptr_allowObjects) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_has_encoded_var(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_var: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_var").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1740420038)!
        }
    }()
    internal func _decodeVar(byteOffset: Int, allowObjects: Bool = false) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: allowObjects) { (__ptr_allowObjects) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_decode_var(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_decode_var_size: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "decode_var_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 954237325)!
        }
    }()
    internal func _decodeVarSize(byteOffset: Int, allowObjects: Bool = false) -> Int {
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: allowObjects) { (__ptr_allowObjects) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_allowObjects) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_decode_var_size(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_to_int32_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_int32_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3158844420)!
        }
    }()
    internal func _toInt32Array() -> Godot.PackedInt32Array {
        let __temporary = Godot.PackedInt32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_int32_array(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_int64_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_int64_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1961294120)!
        }
    }()
    internal func _toInt64Array() -> Godot.PackedInt64Array {
        let __temporary = Godot.PackedInt64Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_int64_array(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_float32_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_float32_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3575107827)!
        }
    }()
    internal func _toFloat32Array() -> Godot.PackedFloat32Array {
        let __temporary = Godot.PackedFloat32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_float32_array(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_to_float64_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_float64_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1627308337)!
        }
    }()
    internal func _toFloat64Array() -> Godot.PackedFloat64Array {
        let __temporary = Godot.PackedFloat64Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_float64_array(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_encode_u8: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_u8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeU8(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_u8(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_s8: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_s8").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeS8(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_s8(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_u16: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_u16").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeU16(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_u16(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_s16: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_s16").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeS16(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_s16(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_u32: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_u32").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeU32(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_u32(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_s32: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_s32").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeS32(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_s32(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_u64: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_u64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeU64(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_u64(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_s64: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_s64").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 3638975848)!
        }
    }()
    mutating internal func _encodeS64(byteOffset: Int, value: Int) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_s64(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_half: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_half").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
    }()
    mutating internal func _encodeHalf(byteOffset: Int, value: Double) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_half(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_float: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_float").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
    }()
    mutating internal func _encodeFloat(byteOffset: Int, value: Double) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_float(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_double: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_double").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 1113000516)!
        }
    }()
    mutating internal func _encodeDouble(byteOffset: Int, value: Double) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            withUnsafePointer(to: value) { (__ptr_value) in
                withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_encode_double(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_encode_var: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "encode_var").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY, __ptr__method_name, 2604460497)!
        }
    }()
    @discardableResult mutating internal func _encodeVar<Variant1 : ConvertibleToVariant>(byteOffset: Int, value: Variant1, allowObjects: Bool = false) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: byteOffset) { (__ptr_byteOffset) in
            value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
                withUnsafePointer(to: allowObjects) { (__ptr_allowObjects) in
                    withUnsafeArgumentPackPointer(__ptr_byteOffset, __ptr_value, __ptr_allowObjects) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                Self.__method_binding_encode_var(__ptr_self, __accessPtr, __ptr___temporary, 3)
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    }