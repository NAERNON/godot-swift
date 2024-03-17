//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
private var __constructor: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 0)!
}()
private var __constructor_basis: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 1)!
}()
private var __constructor_quaternion: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 2)!
}()
private var __constructor_vector3_float: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 3)!
}()
private var __constructor_vector3_vector3_vector3: GDExtensionPtrConstructor = {
    return GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_BASIS, 4)!
}()
private var __operator_binding_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not_equal_variant: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_not: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_NIL)!
}()
private var __operator_binding_multiply_int: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_INT)!
}()
private var __operator_binding_multiply_double: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_FLOAT)!
}()
private var __operator_binding_multiply_vector3: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
}()
private var __operator_binding_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_not_equal_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_multiply_basis: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __operator_binding_in_godotdictionary: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
}()
private var __operator_binding_in_godotarray: GDExtensionPtrOperatorEvaluator = {
    return GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_BASIS, GDEXTENSION_VARIANT_TYPE_ARRAY)!
}()
private var __indexed_setter: GDExtensionPtrIndexedSetter = {
    return GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __indexed_getter: GDExtensionPtrIndexedGetter = {
    return GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_BASIS)!
}()
private var __method_binding_inverse: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "inverse").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_transposed: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "transposed").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_orthonormalized: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "orthonormalized").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 594669093)!
    }
}()
private var __method_binding_determinant: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "determinant").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 466405837)!
    }
}()
private var __method_binding_rotated: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "rotated").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1998708965)!
    }
}()
private var __method_binding_scaled: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "scaled").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3934786792)!
    }
}()
private var __method_binding_get_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_scale").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1776574132)!
    }
}()
private var __method_binding_get_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_euler").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1394941017)!
    }
}()
private var __method_binding_tdotx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotx").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdoty: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdoty").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_tdotz: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "tdotz").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 1047977935)!
    }
}()
private var __method_binding_slerp: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "slerp").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3118673011)!
    }
}()
private var __method_binding_is_conformal: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_conformal").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_is_equal_approx: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_equal_approx").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3165333982)!
    }
}()
private var __method_binding_is_finite: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "is_finite").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3918633141)!
    }
}()
private var __method_binding_get_rotation_quaternion: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "get_rotation_quaternion").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 4274879941)!
    }
}()
private var __method_binding_looking_at: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "looking_at").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3728732505)!
    }
}()
private var __method_binding_from_scale: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_scale").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 3703240166)!
    }
}()
private var __method_binding_from_euler: GDExtensionPtrBuiltInMethod = {
    GodotStringName(swiftStaticString: "from_euler").withGodotUnsafeRawPointer { __ptr__method_name in
    return GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_BASIS, __ptr__method_name, 2802321791)!
    }
}()
extension Basis {
}