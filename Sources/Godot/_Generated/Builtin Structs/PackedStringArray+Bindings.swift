//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension PackedStringArray {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 0)!
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

    private static var __constructor_packedstringarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 1)!
    }()
    static internal func _constructor_packedstringarray(from: Godot.PackedStringArray) -> Self {
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
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
        let __temporary: Opaque = .init(size: 16, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_packedstringarray(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __constructor_godotarray: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, 2)!
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : VariantEncodable>(_ lhs: Godot.PackedStringArray, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : VariantEncodable>(_ lhs: Godot.PackedStringArray, _ rhs: Variant1) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_variant(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.PackedStringArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.PackedStringArray, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.PackedStringArray, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __operator_binding_equal_packedstringarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.PackedStringArray, _ rhs: Godot.PackedStringArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_packedstringarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_packedstringarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.PackedStringArray, _ rhs: Godot.PackedStringArray) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_packedstringarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_add_packedstringarray: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    static internal func _operatorAdd(_ lhs: Godot.PackedStringArray, _ rhs: Godot.PackedStringArray) -> Godot.PackedStringArray {
        let __temporary = PackedStringArray()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    Self.__operator_binding_add_packedstringarray(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
        return gdextension_interface_variant_get_ptr_indexed_setter(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
        return gdextension_interface_variant_get_ptr_indexed_getter(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
    }()
    internal func _getValue(at index: GDExtensionInt) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_getter(__ptr_self, index, __ptr___temporary)
            }
        }
        return __temporary
    }
    mutating internal func _setValue(_ value: Godot.GodotString, at index: GDExtensionInt) {
        replaceOpaqueValueIfNecessary()
        value.withUnsafeRawPointer { (__ptr_value) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__indexed_setter(__ptr_self, index, __ptr_value)
            }
        }
    }

    private static var __method_binding_size: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3173160232)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3918633141)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 725585539)!
        }
    }()
    mutating internal func _set(index: Int, value: Godot.GodotString) {
        replaceOpaqueValueIfNecessary()
        withUnsafePointer(to: index) { (__ptr_index) in
            value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 816187996)!
        }
    }()
    @discardableResult mutating internal func _pushBack(value: Godot.GodotString) -> Bool {
        replaceOpaqueValueIfNecessary()
        var __temporary = Bool()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 816187996)!
        }
    }()
    @discardableResult mutating internal func _append(value: Godot.GodotString) -> Bool {
        replaceOpaqueValueIfNecessary()
        var __temporary = Bool()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1120103966)!
        }
    }()
    mutating internal func _appendArray(_ array: Godot.PackedStringArray) {
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2823966027)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2432393153)!
        }
    }()
    @discardableResult mutating internal func _insert(atIndex index: Int, value: Godot.GodotString) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        withUnsafePointer(to: index) { (__ptr_index) in
            value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3174917410)!
        }
    }()
    mutating internal func _fill(value: Godot.GodotString) {
        replaceOpaqueValueIfNecessary()
        value.withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    Self.__method_binding_fill(__ptr_self, __accessPtr, nil, 1)
                }
            }
        }
    }

    private static var __method_binding_resize: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "resize").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 848867239)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2566493496)!
        }
    }()
    internal func _has(value: Godot.GodotString) -> Bool {
        var __temporary = Bool()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2094601407)!
        }
    }()
    internal func _slice(begin: Int, end: Int = 2147483647) -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
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

    private static var __method_binding_to_byte_array: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "to_byte_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 247621236)!
        }
    }()
    internal func _toByteArray() -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_to_byte_array(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_sort: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "sort").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 3218959716)!
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 328976671)!
        }
    }()
    @discardableResult mutating internal func _bsearch(value: Godot.GodotString, before: Bool = true) -> Int {
        replaceOpaqueValueIfNecessary()
        var __temporary = Int()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2991231410)!
        }
    }()
    @discardableResult mutating internal func _duplicate() -> Godot.PackedStringArray {
        let __temporary = Godot.PackedStringArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_duplicate(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_find: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftStaticString: "find").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _find(value: Godot.GodotString, from: Int = 0) -> Int {
        var __temporary = Int()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 1760645412)!
        }
    }()
    internal func _rfind(value: Godot.GodotString, from: Int = -1) -> Int {
        var __temporary = Int()
        value.withUnsafeRawPointer { (__ptr_value) in
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
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, __ptr__method_name, 2920860731)!
        }
    }()
    internal func _count(value: Godot.GodotString) -> Int {
        var __temporary = Int()
        value.withUnsafeRawPointer { (__ptr_value) in
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

    }