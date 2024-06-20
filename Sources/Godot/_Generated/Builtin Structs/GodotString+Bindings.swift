//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

internal enum GodotStringBindings {
    static private var areBindingsLoaded = false

    internal static func loadBindings() {
        precondition(!areBindingsLoaded, "GodotString bindings are already loaded.")
        areBindingsLoaded = true
        destructor = GodotExtension.Interface.variantGetPtrDestructor(GDEXTENSION_VARIANT_TYPE_STRING)!
        constructor = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_STRING, 0)!
        constructorFromGodotString = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_STRING, 1)!
        constructorFromGodotStringName = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_STRING, 2)!
        constructorFromNodePath = GodotExtension.Interface.variantGetPtrConstructor(GDEXTENSION_VARIANT_TYPE_STRING, 3)!
        operatorEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNotEqualVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorModuleVariant = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorNot = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NIL)!
        operatorModuleBool = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_BOOL)!
        operatorModuleInt = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_INT)!
        operatorModuleDouble = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_FLOAT)!
        operatorEqualGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorNotEqualGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorLessGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorLessEqualGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorGreaterGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorGreaterEqualGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorAddGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorModuleGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorInGodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING)!
        operatorModuleVector2 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR2)!
        operatorModuleVector2i = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
        operatorModuleRect2 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_RECT2)!
        operatorModuleRect2i = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_RECT2I)!
        operatorModuleVector3 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR3)!
        operatorModuleVector3i = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR3I)!
        operatorModuleTransform2d = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)!
        operatorModuleVector4 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR4)!
        operatorModuleVector4i = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_VECTOR4I)!
        operatorModulePlane = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PLANE)!
        operatorModuleQuaternion = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_QUATERNION)!
        operatorModuleAABB = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_AABB)!
        operatorModuleBasis = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_BASIS)!
        operatorModuleTransform3d = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)!
        operatorModuleProjection = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PROJECTION)!
        operatorModuleColor = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_COLOR)!
        operatorEqualGodotstringname = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
        operatorNotEqualGodotstringname = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
        operatorAddGodotstringname = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
        operatorModuleGodotstringname = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
        operatorInGodotstringname = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_STRING_NAME)!
        operatorModuleNodepath = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_NODE_PATH)!
        operatorModuleObject = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_OBJECT)!
        operatorInObject = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_OBJECT)!
        operatorModuleCallable = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_CALLABLE)!
        operatorModuleSignal = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_SIGNAL)!
        operatorModuleGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorInGodotdictionary = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_DICTIONARY)!
        operatorModuleGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorInGodotarray = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_ARRAY)!
        operatorModuleGodotcontiguousarrayuint8 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)!
        operatorModuleGodotcontiguousarrayint32 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)!
        operatorModuleGodotcontiguousarrayint64 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)!
        operatorModuleGodotcontiguousarrayfloat = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)!
        operatorModuleGodotcontiguousarraydouble = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)!
        operatorModuleGodotcontiguousarraygodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        operatorInGodotcontiguousarraygodotstring = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_IN, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)!
        operatorModuleGodotcontiguousarrayvector2 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)!
        operatorModuleGodotcontiguousarrayvector3 = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)!
        operatorModuleGodotcontiguousarraycolor = GodotExtension.Interface.variantGetPtrOperatorEvaluator(GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_STRING, GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)!
        indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(GDEXTENSION_VARIANT_TYPE_STRING)!
        indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(GDEXTENSION_VARIANT_TYPE_STRING)!
        methodCasecmpTo = GodotStringName(swiftStaticString: "casecmp_to").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2920860731)!
        }
        methodNocasecmpTo = GodotStringName(swiftStaticString: "nocasecmp_to").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2920860731)!
        }
        methodNaturalcasecmpTo = GodotStringName(swiftStaticString: "naturalcasecmp_to").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2920860731)!
        }
        methodNaturalnocasecmpTo = GodotStringName(swiftStaticString: "naturalnocasecmp_to").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2920860731)!
        }
        methodLength = GodotStringName(swiftStaticString: "length").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3173160232)!
        }
        methodSubstr = GodotStringName(swiftStaticString: "substr").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 787537301)!
        }
        methodGetSlice = GodotStringName(swiftStaticString: "get_slice").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3535100402)!
        }
        methodGetSlicec = GodotStringName(swiftStaticString: "get_slicec").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 787537301)!
        }
        methodGetSliceCount = GodotStringName(swiftStaticString: "get_slice_count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2920860731)!
        }
        methodFind = GodotStringName(swiftStaticString: "find").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1760645412)!
        }
        methodCount = GodotStringName(swiftStaticString: "count").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2343087891)!
        }
        methodCountn = GodotStringName(swiftStaticString: "countn").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2343087891)!
        }
        methodFindn = GodotStringName(swiftStaticString: "findn").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1760645412)!
        }
        methodRfind = GodotStringName(swiftStaticString: "rfind").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1760645412)!
        }
        methodRfindn = GodotStringName(swiftStaticString: "rfindn").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1760645412)!
        }
        methodMatch = GodotStringName(swiftStaticString: "match").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodMatchn = GodotStringName(swiftStaticString: "matchn").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodBeginsWith = GodotStringName(swiftStaticString: "begins_with").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodEndsWith = GodotStringName(swiftStaticString: "ends_with").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodIsSubsequenceOf = GodotStringName(swiftStaticString: "is_subsequence_of").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodIsSubsequenceOfn = GodotStringName(swiftStaticString: "is_subsequence_ofn").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodBigrams = GodotStringName(swiftStaticString: "bigrams").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 747180633)!
        }
        methodSimilarity = GodotStringName(swiftStaticString: "similarity").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2697460964)!
        }
        methodFormat = GodotStringName(swiftStaticString: "format").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3212199029)!
        }
        methodReplace = GodotStringName(swiftStaticString: "replace").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1340436205)!
        }
        methodReplacen = GodotStringName(swiftStaticString: "replacen").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1340436205)!
        }
        methodRepeat = GodotStringName(swiftStaticString: "repeat").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2162347432)!
        }
        methodReverse = GodotStringName(swiftStaticString: "reverse").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodInsert = GodotStringName(swiftStaticString: "insert").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 248737229)!
        }
        methodErase = GodotStringName(swiftStaticString: "erase").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 787537301)!
        }
        methodCapitalize = GodotStringName(swiftStaticString: "capitalize").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodToCamelCase = GodotStringName(swiftStaticString: "to_camel_case").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodToPascalCase = GodotStringName(swiftStaticString: "to_pascal_case").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodToSnakeCase = GodotStringName(swiftStaticString: "to_snake_case").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodSplit = GodotStringName(swiftStaticString: "split").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1252735785)!
        }
        methodRsplit = GodotStringName(swiftStaticString: "rsplit").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1252735785)!
        }
        methodSplitFloats = GodotStringName(swiftStaticString: "split_floats").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2092079095)!
        }
        methodJoin = GodotStringName(swiftStaticString: "join").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3595973238)!
        }
        methodToUpper = GodotStringName(swiftStaticString: "to_upper").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodToLower = GodotStringName(swiftStaticString: "to_lower").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodLeft = GodotStringName(swiftStaticString: "left").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2162347432)!
        }
        methodRight = GodotStringName(swiftStaticString: "right").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2162347432)!
        }
        methodStripEdges = GodotStringName(swiftStaticString: "strip_edges").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 907855311)!
        }
        methodStripEscapes = GodotStringName(swiftStaticString: "strip_escapes").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodLstrip = GodotStringName(swiftStaticString: "lstrip").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodRstrip = GodotStringName(swiftStaticString: "rstrip").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodGetExtension = GodotStringName(swiftStaticString: "get_extension").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodGetBasename = GodotStringName(swiftStaticString: "get_basename").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodPathJoin = GodotStringName(swiftStaticString: "path_join").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodUnicodeAt = GodotStringName(swiftStaticString: "unicode_at").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 4103005248)!
        }
        methodIndent = GodotStringName(swiftStaticString: "indent").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodDedent = GodotStringName(swiftStaticString: "dedent").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodHash = GodotStringName(swiftStaticString: "hash").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3173160232)!
        }
        methodMd5Text = GodotStringName(swiftStaticString: "md5_text").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodSha1Text = GodotStringName(swiftStaticString: "sha1_text").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodSha256Text = GodotStringName(swiftStaticString: "sha256_text").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodMd5Buffer = GodotStringName(swiftStaticString: "md5_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodSha1Buffer = GodotStringName(swiftStaticString: "sha1_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodSha256Buffer = GodotStringName(swiftStaticString: "sha256_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodIsEmpty = GodotStringName(swiftStaticString: "is_empty").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodContains = GodotStringName(swiftStaticString: "contains").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2566493496)!
        }
        methodIsAbsolutePath = GodotStringName(swiftStaticString: "is_absolute_path").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsRelativePath = GodotStringName(swiftStaticString: "is_relative_path").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodSimplifyPath = GodotStringName(swiftStaticString: "simplify_path").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodGetBaseDir = GodotStringName(swiftStaticString: "get_base_dir").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodGetFile = GodotStringName(swiftStaticString: "get_file").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodXmlEscape = GodotStringName(swiftStaticString: "xml_escape").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3429816538)!
        }
        methodXmlUnescape = GodotStringName(swiftStaticString: "xml_unescape").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodUriEncode = GodotStringName(swiftStaticString: "uri_encode").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodUriDecode = GodotStringName(swiftStaticString: "uri_decode").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodCEscape = GodotStringName(swiftStaticString: "c_escape").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodCUnescape = GodotStringName(swiftStaticString: "c_unescape").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodJsonEscape = GodotStringName(swiftStaticString: "json_escape").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodValidateNodeName = GodotStringName(swiftStaticString: "validate_node_name").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodValidateFilename = GodotStringName(swiftStaticString: "validate_filename").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3942272618)!
        }
        methodIsValidIdentifier = GodotStringName(swiftStaticString: "is_valid_identifier").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsValidInt = GodotStringName(swiftStaticString: "is_valid_int").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsValidFloat = GodotStringName(swiftStaticString: "is_valid_float").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsValidHexNumber = GodotStringName(swiftStaticString: "is_valid_hex_number").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 593672999)!
        }
        methodIsValidHtmlColor = GodotStringName(swiftStaticString: "is_valid_html_color").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsValidIpAddress = GodotStringName(swiftStaticString: "is_valid_ip_address").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodIsValidFilename = GodotStringName(swiftStaticString: "is_valid_filename").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3918633141)!
        }
        methodToInt = GodotStringName(swiftStaticString: "to_int").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3173160232)!
        }
        methodToFloat = GodotStringName(swiftStaticString: "to_float").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 466405837)!
        }
        methodHexToInt = GodotStringName(swiftStaticString: "hex_to_int").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3173160232)!
        }
        methodBinToInt = GodotStringName(swiftStaticString: "bin_to_int").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3173160232)!
        }
        methodLpad = GodotStringName(swiftStaticString: "lpad").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 248737229)!
        }
        methodRpad = GodotStringName(swiftStaticString: "rpad").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 248737229)!
        }
        methodPadDecimals = GodotStringName(swiftStaticString: "pad_decimals").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2162347432)!
        }
        methodPadZeros = GodotStringName(swiftStaticString: "pad_zeros").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2162347432)!
        }
        methodTrimPrefix = GodotStringName(swiftStaticString: "trim_prefix").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodTrimSuffix = GodotStringName(swiftStaticString: "trim_suffix").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 3134094431)!
        }
        methodToAsciiBuffer = GodotStringName(swiftStaticString: "to_ascii_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodToUtf8Buffer = GodotStringName(swiftStaticString: "to_utf8_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodToUtf16Buffer = GodotStringName(swiftStaticString: "to_utf16_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodToUtf32Buffer = GodotStringName(swiftStaticString: "to_utf32_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodHexDecode = GodotStringName(swiftStaticString: "hex_decode").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodToWcharBuffer = GodotStringName(swiftStaticString: "to_wchar_buffer").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 247621236)!
        }
        methodNumScientific = GodotStringName(swiftStaticString: "num_scientific").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2710373411)!
        }
        methodNum = GodotStringName(swiftStaticString: "num").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 1555901022)!
        }
        methodNumInt64 = GodotStringName(swiftStaticString: "num_int64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2111271071)!
        }
        methodNumUint64 = GodotStringName(swiftStaticString: "num_uint64").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 2111271071)!
        }
        methodChr = GodotStringName(swiftStaticString: "chr").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 897497541)!
        }
        methodHumanizeSize = GodotStringName(swiftStaticString: "humanize_size").withUnsafeOpaquePointer { __ptr__method_name in
            GodotExtension.Interface.variantGetPtrBuiltinMethod(GDEXTENSION_VARIANT_TYPE_STRING, __ptr__method_name, 897497541)!
        }
    }

    static private (set) var destructor: GDExtensionPtrDestructor!

    static private (set) var constructor: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotString: GDExtensionPtrConstructor!

    static private (set) var constructorFromGodotStringName: GDExtensionPtrConstructor!

    static private (set) var constructorFromNodePath: GDExtensionPtrConstructor!

    static private (set) var operatorEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVariant: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNot: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleBool: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleInt: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleDouble: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorLessGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorLessEqualGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorGreaterGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorGreaterEqualGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector2: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector2i: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleRect2: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleRect2i: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector3: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector3i: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleTransform2d: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector4: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleVector4i: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModulePlane: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleQuaternion: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleAABB: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleBasis: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleTransform3d: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleProjection: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleColor: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorEqualGodotstringname: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorNotEqualGodotstringname: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorAddGodotstringname: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotstringname: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotstringname: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleNodepath: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleObject: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInObject: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleCallable: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleSignal: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotdictionary: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotarray: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayuint8: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayint32: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayint64: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayfloat: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarraydouble: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarraygodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorInGodotcontiguousarraygodotstring: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayvector2: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarrayvector3: GDExtensionPtrOperatorEvaluator!

    static private (set) var operatorModuleGodotcontiguousarraycolor: GDExtensionPtrOperatorEvaluator!

    static private (set) var indexedSetter: GDExtensionPtrIndexedSetter!

    static private (set) var indexedGetter: GDExtensionPtrIndexedGetter!

    static private (set) var methodCasecmpTo: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNocasecmpTo: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNaturalcasecmpTo: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNaturalnocasecmpTo: GDExtensionPtrBuiltInMethod!

    static private (set) var methodLength: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSubstr: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetSlice: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetSlicec: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetSliceCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCount: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCountn: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFindn: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRfind: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRfindn: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMatch: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMatchn: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBeginsWith: GDExtensionPtrBuiltInMethod!

    static private (set) var methodEndsWith: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsSubsequenceOf: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsSubsequenceOfn: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBigrams: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSimilarity: GDExtensionPtrBuiltInMethod!

    static private (set) var methodFormat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReplace: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReplacen: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRepeat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodReverse: GDExtensionPtrBuiltInMethod!

    static private (set) var methodInsert: GDExtensionPtrBuiltInMethod!

    static private (set) var methodErase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCapitalize: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToCamelCase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToPascalCase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToSnakeCase: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSplit: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRsplit: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSplitFloats: GDExtensionPtrBuiltInMethod!

    static private (set) var methodJoin: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToUpper: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToLower: GDExtensionPtrBuiltInMethod!

    static private (set) var methodLeft: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRight: GDExtensionPtrBuiltInMethod!

    static private (set) var methodStripEdges: GDExtensionPtrBuiltInMethod!

    static private (set) var methodStripEscapes: GDExtensionPtrBuiltInMethod!

    static private (set) var methodLstrip: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRstrip: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetExtension: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetBasename: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPathJoin: GDExtensionPtrBuiltInMethod!

    static private (set) var methodUnicodeAt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIndent: GDExtensionPtrBuiltInMethod!

    static private (set) var methodDedent: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHash: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMd5Text: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSha1Text: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSha256Text: GDExtensionPtrBuiltInMethod!

    static private (set) var methodMd5Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSha1Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSha256Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsEmpty: GDExtensionPtrBuiltInMethod!

    static private (set) var methodContains: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsAbsolutePath: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsRelativePath: GDExtensionPtrBuiltInMethod!

    static private (set) var methodSimplifyPath: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetBaseDir: GDExtensionPtrBuiltInMethod!

    static private (set) var methodGetFile: GDExtensionPtrBuiltInMethod!

    static private (set) var methodXmlEscape: GDExtensionPtrBuiltInMethod!

    static private (set) var methodXmlUnescape: GDExtensionPtrBuiltInMethod!

    static private (set) var methodUriEncode: GDExtensionPtrBuiltInMethod!

    static private (set) var methodUriDecode: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCEscape: GDExtensionPtrBuiltInMethod!

    static private (set) var methodCUnescape: GDExtensionPtrBuiltInMethod!

    static private (set) var methodJsonEscape: GDExtensionPtrBuiltInMethod!

    static private (set) var methodValidateNodeName: GDExtensionPtrBuiltInMethod!

    static private (set) var methodValidateFilename: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidIdentifier: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidInt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidFloat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidHexNumber: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidHtmlColor: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidIpAddress: GDExtensionPtrBuiltInMethod!

    static private (set) var methodIsValidFilename: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToInt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToFloat: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHexToInt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodBinToInt: GDExtensionPtrBuiltInMethod!

    static private (set) var methodLpad: GDExtensionPtrBuiltInMethod!

    static private (set) var methodRpad: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPadDecimals: GDExtensionPtrBuiltInMethod!

    static private (set) var methodPadZeros: GDExtensionPtrBuiltInMethod!

    static private (set) var methodTrimPrefix: GDExtensionPtrBuiltInMethod!

    static private (set) var methodTrimSuffix: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToAsciiBuffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToUtf8Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToUtf16Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToUtf32Buffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHexDecode: GDExtensionPtrBuiltInMethod!

    static private (set) var methodToWcharBuffer: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNumScientific: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNum: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNumInt64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodNumUint64: GDExtensionPtrBuiltInMethod!

    static private (set) var methodChr: GDExtensionPtrBuiltInMethod!

    static private (set) var methodHumanizeSize: GDExtensionPtrBuiltInMethod!
}

internal typealias GodotStringRawOpaque = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

extension GodotString {
    static internal func makeOpaqueStorage(
        useDestructor: Bool = true
    ) -> Opaque.Storage {
        Opaque.Storage(size: 8, destructorPtr: useDestructor ? GodotStringBindings.destructor : nil)
    }

    static internal func make() -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
            GodotStringBindings.constructor(__ptr___temporary, nil)
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
                    GodotStringBindings.constructorFromGodotString(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }

    static internal func make(
        from: Godot.GodotStringName
    ) -> Opaque.Storage {
        var __temporary: Opaque.Storage = makeOpaqueStorage()
        withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
            withUnsafeArgumentPackPointer(__ptr_from) { __accessPtr in
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    GodotStringBindings.constructorFromGodotStringName(__ptr___temporary, __accessPtr)
                }
            }
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
                    GodotStringBindings.constructorFromNodePath(__ptr___temporary, __accessPtr)
                }
            }
        }
        return __temporary
    }

    static internal func _operatorEqual<Value: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual<Value: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Value
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorNotEqualVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule<Value: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Value
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                Godot.Variant.withStorageUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVariant(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNot(
        _ lhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                GodotStringBindings.operatorNot(__ptr_lhs, nil, __temporary)
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Bool
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleBool(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Int
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleInt(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Double
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleDouble(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorEqualGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorNotEqualGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLess(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorLessGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorLessEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorLessEqualGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreater(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorGreaterGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorGreaterEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorGreaterEqualGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorAddGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotString
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorInGodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector2
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector2(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector2I
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector2i(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Rect2
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleRect2(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Rect2I
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleRect2i(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector3
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector3(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector3I
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector3i(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Transform2D
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleTransform2d(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector4
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector4(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Vector4I
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleVector4i(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Plane
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModulePlane(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Quaternion
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleQuaternion(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.AABB
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleAABB(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Basis
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleBasis(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Transform3D
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleTransform3d(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Projection
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleProjection(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Color
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleColor(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorEqualGodotstringname(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorNotEqual(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorNotEqualGodotstringname(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorAdd(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotStringName
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorAddGodotstringname(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotStringName
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotstringname(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotStringName
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorInGodotstringname(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.NodePath
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleNodepath(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Object?
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    withUnsafePointer(to: __ptr_rhs) { _ptr___ptr_rhs in
                        GodotStringBindings.operatorModuleObject(__ptr_lhs, _ptr___ptr_rhs, __temporary)
                    }
                }
            }
        }
    }

    static internal func _operatorIn(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Object?
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    withUnsafePointer(to: __ptr_rhs) { _ptr___ptr_rhs in
                        GodotStringBindings.operatorInObject(__ptr_lhs, _ptr___ptr_rhs, __temporary)
                    }
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Callable
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleCallable(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.Signal
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleSignal(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value1: Variant.Storable, Value2: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotDictionary<Value1, Value2>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorInGodotdictionary(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule<Value: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotArray<Value>
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn<Value: Variant.Storable>(
        _ lhs: Godot.GodotString,
        _ rhs: Godot.GodotArray<Value>
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorInGodotarray(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: UInt8.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayuint8(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Int32.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayint32(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Int64.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayint64(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Float.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayfloat(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Double.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarraydouble(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: GodotString.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarraygodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorIn(
        _ lhs: Godot.GodotString,
        _ rhs: GodotString.GodotContiguousArrayStorage
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorInGodotcontiguousarraygodotstring(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Vector2.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayvector2(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Vector3.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarrayvector3(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    static internal func _operatorModule(
        _ lhs: Godot.GodotString,
        _ rhs: Color.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: lhs) { __ptr_lhs in
                withTransferrableUnsafeRawPointer(to: rhs) { __ptr_rhs in
                    GodotStringBindings.operatorModuleGodotcontiguousarraycolor(__ptr_lhs, __ptr_rhs, __temporary)
                }
            }
        }
    }

    internal func _getValue(
        at index: GDExtensionInt
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.indexedGetter(__ptr_self, index, __temporary)
            }
        }
    }

    internal func _setValue(
        _ value: Godot.GodotString,
        at index: GDExtensionInt
    ) {
        withTransferrableUnsafeRawPointer(to: value) { __ptr_value in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.indexedSetter(UnsafeMutableRawPointer(mutating: __ptr_self), index, __ptr_value)
            }
        }
    }

    internal func _casecmp(
        to: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                withUnsafeArgumentPackPointer(__ptr_to) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodCasecmpTo(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _nocasecmp(
        to: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                withUnsafeArgumentPackPointer(__ptr_to) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodNocasecmpTo(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _naturalcasecmp(
        to: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                withUnsafeArgumentPackPointer(__ptr_to) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodNaturalcasecmpTo(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _naturalnocasecmp(
        to: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                withUnsafeArgumentPackPointer(__ptr_to) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodNaturalnocasecmpTo(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _length() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodLength(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _substr(
        from: Int,
        len: Int = -1
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withTransferrableUnsafeRawPointer(to: len) { __ptr_len in
                    withUnsafeArgumentPackPointer(__ptr_from, __ptr_len) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodSubstr(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _slice(
        delimiter: Godot.GodotString,
        slice: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withTransferrableUnsafeRawPointer(to: slice) { __ptr_slice in
                    withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_slice) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodGetSlice(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _slicec(
        delimiter: Int,
        slice: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withTransferrableUnsafeRawPointer(to: slice) { __ptr_slice in
                    withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_slice) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodGetSlicec(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _sliceCount(
        delimiter: Godot.GodotString
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withUnsafeArgumentPackPointer(__ptr_delimiter) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodGetSliceCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _find(
        what: Godot.GodotString,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodFind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _count(
        what: Godot.GodotString,
        from: Int = 0,
        to: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                        withUnsafeArgumentPackPointer(__ptr_what, __ptr_from, __ptr_to) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                GodotStringBindings.methodCount(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }

    internal func _countn(
        what: Godot.GodotString,
        from: Int = 0,
        to: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withTransferrableUnsafeRawPointer(to: to) { __ptr_to in
                        withUnsafeArgumentPackPointer(__ptr_what, __ptr_from, __ptr_to) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                GodotStringBindings.methodCountn(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }

    internal func _findn(
        what: Godot.GodotString,
        from: Int = 0
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodFindn(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfind(
        what: Godot.GodotString,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodRfind(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rfindn(
        what: Godot.GodotString,
        from: Int = -1
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_from) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodRfindn(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _match(
        expr: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: expr) { __ptr_expr in
                withUnsafeArgumentPackPointer(__ptr_expr) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodMatch(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _matchn(
        expr: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: expr) { __ptr_expr in
                withUnsafeArgumentPackPointer(__ptr_expr) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodMatchn(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _beginsWith(
        text: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodBeginsWith(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _endsWith(
        text: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodEndsWith(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _isSubsequenceOf(
        text: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodIsSubsequenceOf(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _isSubsequenceOfn(
        text: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodIsSubsequenceOfn(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _bigrams() -> GodotString.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodBigrams(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _similarity(
        text: Godot.GodotString
    ) -> Double {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: text) { __ptr_text in
                withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodSimilarity(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _format(
        values: borrowing Godot.Variant.Storage,
        placeholder: Godot.GodotString = "{_}"
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: values) { __ptr_values in
                withTransferrableUnsafeRawPointer(to: placeholder) { __ptr_placeholder in
                    withUnsafeArgumentPackPointer(__ptr_values, __ptr_placeholder) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodFormat(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _replace(
        what: Godot.GodotString,
        forwhat: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: forwhat) { __ptr_forwhat in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_forwhat) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodReplace(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _replacen(
        what: Godot.GodotString,
        forwhat: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withTransferrableUnsafeRawPointer(to: forwhat) { __ptr_forwhat in
                    withUnsafeArgumentPackPointer(__ptr_what, __ptr_forwhat) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodReplacen(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _repeat(
        count: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: count) { __ptr_count in
                withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodRepeat(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _reverse() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodReverse(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _insert(
        position: Int,
        what: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                    withUnsafeArgumentPackPointer(__ptr_position, __ptr_what) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodInsert(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _erase(
        position: Int,
        chars: Int = 1
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withTransferrableUnsafeRawPointer(to: chars) { __ptr_chars in
                    withUnsafeArgumentPackPointer(__ptr_position, __ptr_chars) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodErase(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _capitalize() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodCapitalize(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toCamelCase() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToCamelCase(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toPascalCase() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToPascalCase(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toSnakeCase() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToSnakeCase(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _split(
        delimiter: Godot.GodotString = "",
        allowEmpty: Bool = true,
        maxsplit: Int = 0
    ) -> GodotString.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withTransferrableUnsafeRawPointer(to: allowEmpty) { __ptr_allowEmpty in
                    withTransferrableUnsafeRawPointer(to: maxsplit) { __ptr_maxsplit in
                        withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty, __ptr_maxsplit) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                GodotStringBindings.methodSplit(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }

    internal func _rsplit(
        delimiter: Godot.GodotString = "",
        allowEmpty: Bool = true,
        maxsplit: Int = 0
    ) -> GodotString.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withTransferrableUnsafeRawPointer(to: allowEmpty) { __ptr_allowEmpty in
                    withTransferrableUnsafeRawPointer(to: maxsplit) { __ptr_maxsplit in
                        withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty, __ptr_maxsplit) { __accessPtr in
                            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                                GodotStringBindings.methodRsplit(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 3)
                            }
                        }
                    }
                }
            }
        }
    }

    internal func _splitFloats(
        delimiter: Godot.GodotString,
        allowEmpty: Bool = true
    ) -> Double.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: delimiter) { __ptr_delimiter in
                withTransferrableUnsafeRawPointer(to: allowEmpty) { __ptr_allowEmpty in
                    withUnsafeArgumentPackPointer(__ptr_delimiter, __ptr_allowEmpty) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodSplitFloats(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _join(
        parts: GodotString.GodotContiguousArrayStorage
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: parts) { __ptr_parts in
                withUnsafeArgumentPackPointer(__ptr_parts) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodJoin(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _toUpper() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToUpper(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toLower() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToLower(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _left(
        length: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
                withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodLeft(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _right(
        length: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: length) { __ptr_length in
                withUnsafeArgumentPackPointer(__ptr_length) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodRight(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _stripEdges(
        left: Bool = true,
        right: Bool = true
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: left) { __ptr_left in
                withTransferrableUnsafeRawPointer(to: right) { __ptr_right in
                    withUnsafeArgumentPackPointer(__ptr_left, __ptr_right) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodStripEdges(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _stripEscapes() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodStripEscapes(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _lstrip(
        chars: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: chars) { __ptr_chars in
                withUnsafeArgumentPackPointer(__ptr_chars) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodLstrip(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _rstrip(
        chars: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: chars) { __ptr_chars in
                withUnsafeArgumentPackPointer(__ptr_chars) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodRstrip(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _extension() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodGetExtension(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _basename() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodGetBasename(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _pathJoin(
        file: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: file) { __ptr_file in
                withUnsafeArgumentPackPointer(__ptr_file) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodPathJoin(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _unicode(
        at: Int
    ) -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: at) { __ptr_at in
                withUnsafeArgumentPackPointer(__ptr_at) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodUnicodeAt(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _indent(
        prefix: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: prefix) { __ptr_prefix in
                withUnsafeArgumentPackPointer(__ptr_prefix) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodIndent(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _dedent() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodDedent(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hash() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodHash(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _md5Text() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodMd5Text(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _sha1Text() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodSha1Text(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _sha256Text() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodSha256Text(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _md5Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodMd5Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _sha1Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodSha1Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _sha256Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodSha256Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isEmpty() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsEmpty(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _contains(
        what: Godot.GodotString
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: what) { __ptr_what in
                withUnsafeArgumentPackPointer(__ptr_what) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodContains(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _isAbsolutePath() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsAbsolutePath(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isRelativePath() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsRelativePath(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _simplifyPath() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodSimplifyPath(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _baseDir() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodGetBaseDir(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _file() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodGetFile(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _xmlEscape(
        escapeQuotes: Bool = false
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: escapeQuotes) { __ptr_escapeQuotes in
                withUnsafeArgumentPackPointer(__ptr_escapeQuotes) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodXmlEscape(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _xmlUnescape() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodXmlUnescape(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _uriEncode() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodUriEncode(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _uriDecode() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodUriDecode(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _cEscape() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodCEscape(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _cUnescape() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodCUnescape(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _jsonEscape() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodJsonEscape(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _validateNodeName() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodValidateNodeName(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _validateFilename() -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodValidateFilename(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidIdentifier() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidIdentifier(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidInt() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidInt(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidFloat() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidFloat(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidHexNumber(
        withPrefix prefix: Bool = false
    ) -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: prefix) { __ptr_prefix in
                withUnsafeArgumentPackPointer(__ptr_prefix) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodIsValidHexNumber(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _isValidHtmlColor() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidHtmlColor(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidIpAddress() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidIpAddress(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _isValidFilename() -> Bool {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodIsValidFilename(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toInt() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToInt(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toFloat() -> Double {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToFloat(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hexToInt() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodHexToInt(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _binToInt() -> Int {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodBinToInt(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _lpad(
        minLength: Int,
        character: Godot.GodotString = " "
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: minLength) { __ptr_minLength in
                withTransferrableUnsafeRawPointer(to: character) { __ptr_character in
                    withUnsafeArgumentPackPointer(__ptr_minLength, __ptr_character) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodLpad(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _rpad(
        minLength: Int,
        character: Godot.GodotString = " "
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: minLength) { __ptr_minLength in
                withTransferrableUnsafeRawPointer(to: character) { __ptr_character in
                    withUnsafeArgumentPackPointer(__ptr_minLength, __ptr_character) { __accessPtr in
                        withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                            GodotStringBindings.methodRpad(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 2)
                        }
                    }
                }
            }
        }
    }

    internal func _padDecimals(
        digits: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: digits) { __ptr_digits in
                withUnsafeArgumentPackPointer(__ptr_digits) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodPadDecimals(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _padZeros(
        digits: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: digits) { __ptr_digits in
                withUnsafeArgumentPackPointer(__ptr_digits) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodPadZeros(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _trimPrefix(
        _ prefix: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: prefix) { __ptr_prefix in
                withUnsafeArgumentPackPointer(__ptr_prefix) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodTrimPrefix(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _trimSuffix(
        _ suffix: Godot.GodotString
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: suffix) { __ptr_suffix in
                withUnsafeArgumentPackPointer(__ptr_suffix) { __accessPtr in
                    withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                        GodotStringBindings.methodTrimSuffix(UnsafeMutableRawPointer(mutating: __ptr_self), __accessPtr, __temporary, 1)
                    }
                }
            }
        }
    }

    internal func _toAsciiBuffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToAsciiBuffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toUtf8Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToUtf8Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toUtf16Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToUtf16Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toUtf32Buffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToUtf32Buffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _hexDecode() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodHexDecode(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    internal func _toWcharBuffer() -> UInt8.GodotContiguousArrayStorage {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: `self`) { __ptr_self in
                GodotStringBindings.methodToWcharBuffer(UnsafeMutableRawPointer(mutating: __ptr_self), nil, __temporary, 0)
            }
        }
    }

    static internal func _numScientific(
        number: Double
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withUnsafeArgumentPackPointer(__ptr_number) { __accessPtr in
                    GodotStringBindings.methodNumScientific(nil, __accessPtr, __temporary, 1)
                }
            }
        }
    }

    static internal func _num(
        number: Double,
        decimals: Int = -1
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withTransferrableUnsafeRawPointer(to: decimals) { __ptr_decimals in
                    withUnsafeArgumentPackPointer(__ptr_number, __ptr_decimals) { __accessPtr in
                        GodotStringBindings.methodNum(nil, __accessPtr, __temporary, 2)
                    }
                }
            }
        }
    }

    static internal func _numInt64(
        number: Int,
        base: Int = 10,
        capitalizeHex: Bool = false
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withTransferrableUnsafeRawPointer(to: base) { __ptr_base in
                    withTransferrableUnsafeRawPointer(to: capitalizeHex) { __ptr_capitalizeHex in
                        withUnsafeArgumentPackPointer(__ptr_number, __ptr_base, __ptr_capitalizeHex) { __accessPtr in
                            GodotStringBindings.methodNumInt64(nil, __accessPtr, __temporary, 3)
                        }
                    }
                }
            }
        }
    }

    static internal func _numUint64(
        number: Int,
        base: Int = 10,
        capitalizeHex: Bool = false
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: number) { __ptr_number in
                withTransferrableUnsafeRawPointer(to: base) { __ptr_base in
                    withTransferrableUnsafeRawPointer(to: capitalizeHex) { __ptr_capitalizeHex in
                        withUnsafeArgumentPackPointer(__ptr_number, __ptr_base, __ptr_capitalizeHex) { __accessPtr in
                            GodotStringBindings.methodNumUint64(nil, __accessPtr, __temporary, 3)
                        }
                    }
                }
            }
        }
    }

    static internal func _chr(
        char: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: char) { __ptr_char in
                withUnsafeArgumentPackPointer(__ptr_char) { __accessPtr in
                    GodotStringBindings.methodChr(nil, __accessPtr, __temporary, 1)
                }
            }
        }
    }

    static internal func _humanizeSize(
        _ size: Int
    ) -> Godot.GodotString {
        return fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: size) { __ptr_size in
                withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
                    GodotStringBindings.methodHumanizeSize(nil, __accessPtr, __temporary, 1)
                }
            }
        }
    }
}