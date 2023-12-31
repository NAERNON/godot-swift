import GodotExtensionHeaders

extension GodotExtension {
    @InterfaceLoader
    internal enum Interface {
        private static func loadInterfaceFunction<FunctionType>(
            _ function: inout FunctionType?,
            _ name: String,
            _ getProcAddress: GDExtensionInterfaceGetProcAddress
        ) {
            name.withCString { cString in
                function = unsafeBitCast(
                    getProcAddress(cString),
                    to: FunctionType.self
                )
            }
            
            precondition(function != nil, "No interface function named \"\(name)\" loaded.")
        }
        
        #interfaceFunction("print_error", GDExtensionInterfacePrintError)
        #interfaceFunction("get_godot_version", GDExtensionInterfaceGetGodotVersion)
        
        #interfaceFunction("mem_alloc", GDExtensionInterfaceMemAlloc)
        #interfaceFunction("mem_realloc", GDExtensionInterfaceMemRealloc)
        #interfaceFunction("mem_free", GDExtensionInterfaceMemFree)
        #interfaceFunction("print_error_with_message", GDExtensionInterfacePrintErrorWithMessage)
        #interfaceFunction("print_warning", GDExtensionInterfacePrintWarning)
        #interfaceFunction("print_warning_with_message", GDExtensionInterfacePrintWarningWithMessage)
        #interfaceFunction("print_script_error", GDExtensionInterfacePrintScriptError)
        #interfaceFunction("print_script_error_with_message", GDExtensionInterfacePrintScriptErrorWithMessage)
        #interfaceFunction("get_native_struct_size", GDExtensionInterfaceGetNativeStructSize)
        #interfaceFunction("variant_new_copy", GDExtensionInterfaceVariantNewCopy)
        #interfaceFunction("variant_new_nil", GDExtensionInterfaceVariantNewNil)
        #interfaceFunction("variant_destroy", GDExtensionInterfaceVariantDestroy)
        #interfaceFunction("variant_call", GDExtensionInterfaceVariantCall)
        #interfaceFunction("variant_call_static", GDExtensionInterfaceVariantCallStatic)
        #interfaceFunction("variant_evaluate", GDExtensionInterfaceVariantEvaluate)
        #interfaceFunction("variant_set", GDExtensionInterfaceVariantSet)
        #interfaceFunction("variant_set_named", GDExtensionInterfaceVariantSetNamed)
        #interfaceFunction("variant_set_keyed", GDExtensionInterfaceVariantSetKeyed)
        #interfaceFunction("variant_set_indexed", GDExtensionInterfaceVariantSetIndexed)
        #interfaceFunction("variant_get", GDExtensionInterfaceVariantGet)
        #interfaceFunction("variant_get_named", GDExtensionInterfaceVariantGetNamed)
        #interfaceFunction("variant_get_keyed", GDExtensionInterfaceVariantGetKeyed)
        #interfaceFunction("variant_get_indexed", GDExtensionInterfaceVariantGetIndexed)
        #interfaceFunction("variant_iter_init", GDExtensionInterfaceVariantIterInit)
        #interfaceFunction("variant_iter_next", GDExtensionInterfaceVariantIterNext)
        #interfaceFunction("variant_iter_get", GDExtensionInterfaceVariantIterGet)
        #interfaceFunction("variant_hash", GDExtensionInterfaceVariantHash)
        #interfaceFunction("variant_recursive_hash", GDExtensionInterfaceVariantRecursiveHash)
        #interfaceFunction("variant_hash_compare", GDExtensionInterfaceVariantHashCompare)
        #interfaceFunction("variant_booleanize", GDExtensionInterfaceVariantBooleanize)
        #interfaceFunction("variant_duplicate", GDExtensionInterfaceVariantDuplicate)
        #interfaceFunction("variant_stringify", GDExtensionInterfaceVariantStringify)
        #interfaceFunction("variant_get_type", GDExtensionInterfaceVariantGetType)
        #interfaceFunction("variant_has_method", GDExtensionInterfaceVariantHasMethod)
        #interfaceFunction("variant_has_member", GDExtensionInterfaceVariantHasMember)
        #interfaceFunction("variant_has_key", GDExtensionInterfaceVariantHasKey)
        #interfaceFunction("variant_get_type_name", GDExtensionInterfaceVariantGetTypeName)
        #interfaceFunction("variant_can_convert", GDExtensionInterfaceVariantCanConvert)
        #interfaceFunction("variant_can_convert_strict", GDExtensionInterfaceVariantCanConvertStrict)
        #interfaceFunction("get_variant_from_type_constructor", GDExtensionInterfaceGetVariantFromTypeConstructor)
        #interfaceFunction("get_variant_to_type_constructor", GDExtensionInterfaceGetVariantToTypeConstructor)
        #interfaceFunction("variant_get_ptr_operator_evaluator", GDExtensionInterfaceVariantGetPtrOperatorEvaluator)
        #interfaceFunction("variant_get_ptr_builtin_method", GDExtensionInterfaceVariantGetPtrBuiltinMethod)
        #interfaceFunction("variant_get_ptr_constructor", GDExtensionInterfaceVariantGetPtrConstructor)
        #interfaceFunction("variant_get_ptr_destructor", GDExtensionInterfaceVariantGetPtrDestructor)
        #interfaceFunction("variant_construct", GDExtensionInterfaceVariantConstruct)
        #interfaceFunction("variant_get_ptr_setter", GDExtensionInterfaceVariantGetPtrSetter)
        #interfaceFunction("variant_get_ptr_getter", GDExtensionInterfaceVariantGetPtrGetter)
        #interfaceFunction("variant_get_ptr_indexed_setter", GDExtensionInterfaceVariantGetPtrIndexedSetter)
        #interfaceFunction("variant_get_ptr_indexed_getter", GDExtensionInterfaceVariantGetPtrIndexedGetter)
        #interfaceFunction("variant_get_ptr_keyed_setter", GDExtensionInterfaceVariantGetPtrKeyedSetter)
        #interfaceFunction("variant_get_ptr_keyed_getter", GDExtensionInterfaceVariantGetPtrKeyedGetter)
        #interfaceFunction("variant_get_ptr_keyed_checker", GDExtensionInterfaceVariantGetPtrKeyedChecker)
        #interfaceFunction("variant_get_constant_value", GDExtensionInterfaceVariantGetConstantValue)
        #interfaceFunction("variant_get_ptr_utility_function", GDExtensionInterfaceVariantGetPtrUtilityFunction)
        #interfaceFunction("string_new_with_latin1_chars", GDExtensionInterfaceStringNewWithLatin1Chars)
        #interfaceFunction("string_new_with_utf8_chars", GDExtensionInterfaceStringNewWithUtf8Chars)
        #interfaceFunction("string_new_with_utf16_chars", GDExtensionInterfaceStringNewWithUtf16Chars)
        #interfaceFunction("string_new_with_utf32_chars", GDExtensionInterfaceStringNewWithUtf32Chars)
        #interfaceFunction("string_new_with_wide_chars", GDExtensionInterfaceStringNewWithWideChars)
        #interfaceFunction("string_new_with_latin1_chars_and_len", GDExtensionInterfaceStringNewWithLatin1CharsAndLen)
        #interfaceFunction("string_new_with_utf8_chars_and_len", GDExtensionInterfaceStringNewWithUtf8CharsAndLen)
        #interfaceFunction("string_new_with_utf16_chars_and_len", GDExtensionInterfaceStringNewWithUtf16CharsAndLen)
        #interfaceFunction("string_new_with_utf32_chars_and_len", GDExtensionInterfaceStringNewWithUtf32CharsAndLen)
        #interfaceFunction("string_new_with_wide_chars_and_len", GDExtensionInterfaceStringNewWithWideCharsAndLen)
        #interfaceFunction("string_to_latin1_chars", GDExtensionInterfaceStringToLatin1Chars)
        #interfaceFunction("string_to_utf8_chars", GDExtensionInterfaceStringToUtf8Chars)
        #interfaceFunction("string_to_utf16_chars", GDExtensionInterfaceStringToUtf16Chars)
        #interfaceFunction("string_to_utf32_chars", GDExtensionInterfaceStringToUtf32Chars)
        #interfaceFunction("string_to_wide_chars", GDExtensionInterfaceStringToWideChars)
        #interfaceFunction("string_operator_index", GDExtensionInterfaceStringOperatorIndex)
        #interfaceFunction("string_operator_index_const", GDExtensionInterfaceStringOperatorIndexConst)
        #interfaceFunction("string_operator_plus_eq_string", GDExtensionInterfaceStringOperatorPlusEqString)
        #interfaceFunction("string_operator_plus_eq_char", GDExtensionInterfaceStringOperatorPlusEqChar)
        #interfaceFunction("string_operator_plus_eq_cstr", GDExtensionInterfaceStringOperatorPlusEqCstr)
        #interfaceFunction("string_operator_plus_eq_wcstr", GDExtensionInterfaceStringOperatorPlusEqWcstr)
        #interfaceFunction("string_operator_plus_eq_c32str", GDExtensionInterfaceStringOperatorPlusEqC32str)
        #interfaceFunction("string_resize", GDExtensionInterfaceStringResize)
        #interfaceFunction("string_name_new_with_latin1_chars", GDExtensionInterfaceStringNameNewWithLatin1Chars)
        #interfaceFunction("xml_parser_open_buffer", GDExtensionInterfaceXmlParserOpenBuffer)
        #interfaceFunction("file_access_store_buffer", GDExtensionInterfaceFileAccessStoreBuffer)
        #interfaceFunction("file_access_get_buffer", GDExtensionInterfaceFileAccessGetBuffer)
        #interfaceFunction("worker_thread_pool_add_native_group_task", GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask)
        #interfaceFunction("worker_thread_pool_add_native_task", GDExtensionInterfaceWorkerThreadPoolAddNativeTask)
        #interfaceFunction("packed_byte_array_operator_index", GDExtensionInterfacePackedByteArrayOperatorIndex)
        #interfaceFunction("packed_byte_array_operator_index_const", GDExtensionInterfacePackedByteArrayOperatorIndexConst)
        #interfaceFunction("packed_color_array_operator_index", GDExtensionInterfacePackedColorArrayOperatorIndex)
        #interfaceFunction("packed_color_array_operator_index_const", GDExtensionInterfacePackedColorArrayOperatorIndexConst)
        #interfaceFunction("packed_float32_array_operator_index", GDExtensionInterfacePackedFloat32ArrayOperatorIndex)
        #interfaceFunction("packed_float32_array_operator_index_const", GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst)
        #interfaceFunction("packed_float64_array_operator_index", GDExtensionInterfacePackedFloat64ArrayOperatorIndex)
        #interfaceFunction("packed_float64_array_operator_index_const", GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst)
        #interfaceFunction("packed_int32_array_operator_index", GDExtensionInterfacePackedInt32ArrayOperatorIndex)
        #interfaceFunction("packed_int32_array_operator_index_const", GDExtensionInterfacePackedInt32ArrayOperatorIndexConst)
        #interfaceFunction("packed_int64_array_operator_index", GDExtensionInterfacePackedInt64ArrayOperatorIndex)
        #interfaceFunction("packed_int64_array_operator_index_const", GDExtensionInterfacePackedInt64ArrayOperatorIndexConst)
        #interfaceFunction("packed_string_array_operator_index", GDExtensionInterfacePackedStringArrayOperatorIndex)
        #interfaceFunction("packed_string_array_operator_index_const", GDExtensionInterfacePackedStringArrayOperatorIndexConst)
        #interfaceFunction("packed_vector2_array_operator_index", GDExtensionInterfacePackedVector2ArrayOperatorIndex)
        #interfaceFunction("packed_vector2_array_operator_index_const", GDExtensionInterfacePackedVector2ArrayOperatorIndexConst)
        #interfaceFunction("packed_vector3_array_operator_index", GDExtensionInterfacePackedVector3ArrayOperatorIndex)
        #interfaceFunction("packed_vector3_array_operator_index_const", GDExtensionInterfacePackedVector3ArrayOperatorIndexConst)
        #interfaceFunction("array_operator_index", GDExtensionInterfaceArrayOperatorIndex)
        #interfaceFunction("array_operator_index_const", GDExtensionInterfaceArrayOperatorIndexConst)
        #interfaceFunction("array_ref", GDExtensionInterfaceArrayRef)
        #interfaceFunction("array_set_typed", GDExtensionInterfaceArraySetTyped)
        #interfaceFunction("dictionary_operator_index", GDExtensionInterfaceDictionaryOperatorIndex)
        #interfaceFunction("dictionary_operator_index_const", GDExtensionInterfaceDictionaryOperatorIndexConst)
        #interfaceFunction("object_method_bind_call", GDExtensionInterfaceObjectMethodBindCall)
        #interfaceFunction("object_method_bind_ptrcall", GDExtensionInterfaceObjectMethodBindPtrcall)
        #interfaceFunction("object_destroy", GDExtensionInterfaceObjectDestroy)
        #interfaceFunction("global_get_singleton", GDExtensionInterfaceGlobalGetSingleton)
        #interfaceFunction("object_get_instance_binding", GDExtensionInterfaceObjectGetInstanceBinding)
        #interfaceFunction("object_set_instance_binding", GDExtensionInterfaceObjectSetInstanceBinding)
        #interfaceFunction("object_set_instance", GDExtensionInterfaceObjectSetInstance)
        #interfaceFunction("object_get_class_name", GDExtensionInterfaceObjectGetClassName)
        #interfaceFunction("object_cast_to", GDExtensionInterfaceObjectCastTo)
        #interfaceFunction("object_get_instance_from_id", GDExtensionInterfaceObjectGetInstanceFromId)
        #interfaceFunction("object_get_instance_id", GDExtensionInterfaceObjectGetInstanceId)
        #interfaceFunction("callable_custom_create", GDExtensionInterfaceCallableCustomCreate)
        #interfaceFunction("callable_custom_get_userdata", GDExtensionInterfaceCallableCustomGetUserData)
        #interfaceFunction("ref_get_object", GDExtensionInterfaceRefGetObject)
        #interfaceFunction("ref_set_object", GDExtensionInterfaceRefSetObject)
        #interfaceFunction("script_instance_create2", GDExtensionInterfaceScriptInstanceCreate2)
        #interfaceFunction("placeholder_script_instance_create", GDExtensionInterfacePlaceHolderScriptInstanceCreate)
        #interfaceFunction("placeholder_script_instance_update", GDExtensionInterfacePlaceHolderScriptInstanceUpdate)
        #interfaceFunction("classdb_construct_object", GDExtensionInterfaceClassdbConstructObject)
        #interfaceFunction("classdb_get_method_bind", GDExtensionInterfaceClassdbGetMethodBind)
        #interfaceFunction("classdb_get_class_tag", GDExtensionInterfaceClassdbGetClassTag)
        #interfaceFunction("classdb_register_extension_class2", GDExtensionInterfaceClassdbRegisterExtensionClass2)
        #interfaceFunction("classdb_register_extension_class_method", GDExtensionInterfaceClassdbRegisterExtensionClassMethod)
        #interfaceFunction("classdb_register_extension_class_integer_constant", GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant)
        #interfaceFunction("classdb_register_extension_class_property", GDExtensionInterfaceClassdbRegisterExtensionClassProperty)
        #interfaceFunction("classdb_register_extension_class_property_indexed", GDExtensionInterfaceClassdbRegisterExtensionClassPropertyIndexed)
        #interfaceFunction("classdb_register_extension_class_property_group", GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup)
        #interfaceFunction("classdb_register_extension_class_property_subgroup", GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup)
        #interfaceFunction("classdb_register_extension_class_signal", GDExtensionInterfaceClassdbRegisterExtensionClassSignal)
        #interfaceFunction("classdb_unregister_extension_class", GDExtensionInterfaceClassdbUnregisterExtensionClass)
        #interfaceFunction("get_library_path", GDExtensionInterfaceGetLibraryPath)
        #interfaceFunction("editor_add_plugin", GDExtensionInterfaceEditorAddPlugin)
        #interfaceFunction("editor_remove_plugin", GDExtensionInterfaceEditorRemovePlugin)
    }
}

// MARK: - Macros

@freestanding(declaration, names: arbitrary)
private macro interfaceFunction(
    _ name: StaticString,
    _ type: Any.Type
) = #externalMacro(module: "GodotMacros", type: "InterfaceFunctionMacro")

@attached(member, names: arbitrary)
private macro InterfaceLoader() = #externalMacro(module: "GodotMacros", type: "InterfaceLoaderMacro")