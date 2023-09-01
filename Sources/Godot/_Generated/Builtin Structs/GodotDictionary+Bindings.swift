//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
extension GodotDictionary {
    private static var __destructor: GDExtensionPtrDestructor = {
        return gdextension_interface_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    private static var __constructor: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 0)!
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

    private static var __constructor_godotdictionary: GDExtensionPtrConstructor = {
        return gdextension_interface_variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_DICTIONARY, 1)!
    }()
    static internal func _constructor_godotdictionary(from: Godot.GodotDictionary) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        from.withUnsafeRawPointer { (__ptr_from) in
            withUnsafeArgumentPackPointer(__ptr_from) { (__accessPtr) in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    Self.__constructor_godotdictionary(__ptr___temporary, __accessPtr)
                }
            }
        }
        return Self.init(opaque: __temporary)
    }
    static internal func _ptr_constructor_godotdictionary(from: UnsafeRawPointer) -> Self {
        let __temporary: Opaque = .init(size: 8, destructorPtr: Self.__destructor)
        withUnsafeArgumentPackPointer(from) { (__accessPtr) in
            __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                Self.__constructor_godotdictionary(__ptr___temporary, __accessPtr)
            }
        }
        return Self.init(opaque: __temporary)
    }

    private static var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.GodotDictionary, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNotEqual<Variant1 : ConvertibleToVariant>(_ lhs: Godot.GodotDictionary, _ rhs: Variant1) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_NIL)!
    }()
    static internal func _operatorNot(_ lhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                Self.__operator_binding_not(__ptr_lhs, nil, __ptr___temporary)
            }
        }
        return __temporary
    }

    private static var __operator_binding_equal_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorEqual(_ lhs: Godot.GodotDictionary, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_equal_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_not_equal_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorNotEqual(_ lhs: Godot.GodotDictionary, _ rhs: Godot.GodotDictionary) -> Bool {
        var __temporary = Bool()
        lhs.withUnsafeRawPointer { (__ptr_lhs) in
            rhs.withUnsafeRawPointer { (__ptr_rhs) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    Self.__operator_binding_not_equal_godotdictionary(__ptr_lhs, __ptr_rhs, __ptr___temporary)
                }
            }
        }
        return __temporary
    }

    private static var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotDictionary, _ rhs: Godot.GodotDictionary) -> Bool {
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
        return gdextension_interface_variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_DICTIONARY, GDEXTENSION_VARIANT_TYPE_ARRAY)!
    }()
    static internal func _operatorIn(_ lhs: Godot.GodotDictionary, _ rhs: Godot.GodotArray) -> Bool {
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

    private static var __keyed_setter: GDExtensionPtrKeyedSetter = {
        return gdextension_interface_variant_get_ptr_keyed_setter(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    internal func _getValue(forKey key: borrowing Variant.Storage) -> Variant.Storage {
        let __returnValue = Variant.Storage()

        __returnValue.withUnsafeRawPointer { __ptr___returnValue in
            key.withUnsafeRawPointer { __ptr_key in
                self.withUnsafeRawPointer { __ptr_self in
                    Self.__keyed_getter(__ptr_self, __ptr_key, __ptr___returnValue)
                }
            }
        }

        return __returnValue
    }

    private static var __keyed_getter: GDExtensionPtrKeyedGetter = {
        return gdextension_interface_variant_get_ptr_keyed_getter(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    internal mutating func _set(value: borrowing Variant.Storage, forKey key: borrowing Variant.Storage) {
        replaceOpaqueValueIfNecessary()

        value.withUnsafeRawPointer { __ptr_value in
            key.withUnsafeRawPointer { __ptr_key in
                self.withUnsafeRawPointer { __ptr_self in
                    Self.__keyed_setter(__ptr_self, __ptr_key, __ptr_value)
                }
            }
        }
    }

    private static var __keyed_checker: GDExtensionPtrKeyedChecker = {
        return gdextension_interface_variant_get_ptr_keyed_checker(GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
    }()
    internal func _check(key: borrowing Variant.Storage) -> Bool {
        var keyCheck = UInt32()

        key.withUnsafeRawPointer { __ptr_key in
            self.withUnsafeRawPointer { __ptr_self in
                keyCheck = Self.__keyed_checker(__ptr_self, __ptr_key)
            }
        }

        return keyCheck != 0
    }

    private static var __method_binding_size: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3173160232)!
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
        GodotStringName(swiftString: "is_empty").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3918633141)!
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
        GodotStringName(swiftString: "clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _clear() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_clear(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_merge: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "merge").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2079548978)!
        }
    }()
    mutating internal func _merge(dictionary: Godot.GodotDictionary, overwrite: Bool = false) {
        replaceOpaqueValueIfNecessary()
        dictionary.withUnsafeRawPointer { (__ptr_dictionary) in
            withUnsafePointer(to: overwrite) { (__ptr_overwrite) in
                withUnsafeArgumentPackPointer(__ptr_dictionary, __ptr_overwrite) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_merge(__ptr_self, __accessPtr, nil, 2)
                    }
                }
            }
        }
    }

    private static var __method_binding_has: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "has").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3680194679)!
        }
    }()
    internal func _has<Variant1 : ConvertibleToVariant>(key: Variant1) -> Bool {
        var __temporary = Bool()
        key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
            withUnsafeArgumentPackPointer(__ptr_key) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_has(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_has_all: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "has_all").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2988181878)!
        }
    }()
    internal func _hasAll(keys: Godot.GodotArray) -> Bool {
        var __temporary = Bool()
        keys.withUnsafeRawPointer { (__ptr_keys) in
            withUnsafeArgumentPackPointer(__ptr_keys) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_has_all(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_find_key: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "find_key").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 1988825835)!
        }
    }()
    internal func _findKey<Variant1 : ConvertibleToVariant>(value: Variant1) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        value.makeVariant().withUnsafeRawPointer { (__ptr_value) in
            withUnsafeArgumentPackPointer(__ptr_value) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_find_key(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_erase: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "erase").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 1776646889)!
        }
    }()
    @discardableResult mutating internal func _erase<Variant1 : ConvertibleToVariant>(key: Variant1) -> Bool {
        replaceOpaqueValueIfNecessary()
        var __temporary = Bool()
        key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
            withUnsafeArgumentPackPointer(__ptr_key) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        Self.__method_binding_erase(__ptr_self, __accessPtr, __ptr___temporary, 1)
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_hash: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "hash").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3173160232)!
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

    private static var __method_binding_keys: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "keys").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 4144163970)!
        }
    }()
    internal func _keys() -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_keys(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_values: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "values").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 4144163970)!
        }
    }()
    internal func _values() -> Godot.GodotArray {
        let __temporary = Godot.GodotArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                Self.__method_binding_values(__ptr_self, nil, __ptr___temporary, 0)
            }
        }
        return __temporary
    }

    private static var __method_binding_duplicate: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "duplicate").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 830099069)!
        }
    }()
    internal func _duplicate(deep: Bool = false) -> Godot.GodotDictionary {
        let __temporary = Godot.GodotDictionary()
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

    private static var __method_binding_get: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "get").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 2205440559)!
        }
    }()
    internal func _get<Variant1 : ConvertibleToVariant, Variant2 : ConvertibleToVariant>(key: Variant1, `default`: Variant2 = Variant()) -> Godot.Variant.Storage {
        let __temporary = Godot.Variant.Storage()
        key.makeVariant().withUnsafeRawPointer { (__ptr_key) in
            `default`.makeVariant().withUnsafeRawPointer { (__ptr_default) in
                withUnsafeArgumentPackPointer(__ptr_key, __ptr_default) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            Self.__method_binding_get(__ptr_self, __accessPtr, __ptr___temporary, 2)
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_make_read_only: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "make_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3218959716)!
        }
    }()
    mutating internal func _makeReadOnly() {
        replaceOpaqueValueIfNecessary()
        `self`.withUnsafeRawPointer { (__ptr_self) in
            Self.__method_binding_make_read_only(__ptr_self, nil, nil, 0)
        }
    }

    private static var __method_binding_is_read_only: GDExtensionPtrBuiltInMethod = {
        GodotStringName(swiftString: "is_read_only").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_DICTIONARY, __ptr__method_name, 3918633141)!
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
extension GodotDictionary: CustomDebugStringConvertible {
    public var debugDescription: String {
        Variant(self).debugDescription
    }
}