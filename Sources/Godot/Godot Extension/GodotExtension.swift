import GodotExtensionHeaders

// MARK: - GDExtension interface functions

internal var gdextension_interface_get_godot_version: GDExtensionInterfaceGetGodotVersion!
internal var gdextension_interface_mem_alloc: GDExtensionInterfaceMemAlloc!
internal var gdextension_interface_mem_realloc: GDExtensionInterfaceMemRealloc!
internal var gdextension_interface_mem_free: GDExtensionInterfaceMemFree!
internal var gdextension_interface_print_error: GDExtensionInterfacePrintError!
internal var gdextension_interface_print_error_with_message: GDExtensionInterfacePrintErrorWithMessage!
internal var gdextension_interface_print_warning: GDExtensionInterfacePrintWarning!
internal var gdextension_interface_print_warning_with_message: GDExtensionInterfacePrintWarningWithMessage!
internal var gdextension_interface_print_script_error: GDExtensionInterfacePrintScriptError!
internal var gdextension_interface_print_script_error_with_message: GDExtensionInterfacePrintScriptErrorWithMessage!
internal var gdextension_interface_get_native_struct_size: GDExtensionInterfaceGetNativeStructSize!
internal var gdextension_interface_variant_new_copy: GDExtensionInterfaceVariantNewCopy!
internal var gdextension_interface_variant_new_nil: GDExtensionInterfaceVariantNewNil!
internal var gdextension_interface_variant_destroy: GDExtensionInterfaceVariantDestroy!
internal var gdextension_interface_variant_call: GDExtensionInterfaceVariantCall!
internal var gdextension_interface_variant_call_static: GDExtensionInterfaceVariantCallStatic!
internal var gdextension_interface_variant_evaluate: GDExtensionInterfaceVariantEvaluate!
internal var gdextension_interface_variant_set: GDExtensionInterfaceVariantSet!
internal var gdextension_interface_variant_set_named: GDExtensionInterfaceVariantSetNamed!
internal var gdextension_interface_variant_set_keyed: GDExtensionInterfaceVariantSetKeyed!
internal var gdextension_interface_variant_set_indexed: GDExtensionInterfaceVariantSetIndexed!
internal var gdextension_interface_variant_get: GDExtensionInterfaceVariantGet!
internal var gdextension_interface_variant_get_named: GDExtensionInterfaceVariantGetNamed!
internal var gdextension_interface_variant_get_keyed: GDExtensionInterfaceVariantGetKeyed!
internal var gdextension_interface_variant_get_indexed: GDExtensionInterfaceVariantGetIndexed!
internal var gdextension_interface_variant_iter_init: GDExtensionInterfaceVariantIterInit!
internal var gdextension_interface_variant_iter_next: GDExtensionInterfaceVariantIterNext!
internal var gdextension_interface_variant_iter_get: GDExtensionInterfaceVariantIterGet!
internal var gdextension_interface_variant_hash: GDExtensionInterfaceVariantHash!
internal var gdextension_interface_variant_recursive_hash: GDExtensionInterfaceVariantRecursiveHash!
internal var gdextension_interface_variant_hash_compare: GDExtensionInterfaceVariantHashCompare!
internal var gdextension_interface_variant_booleanize: GDExtensionInterfaceVariantBooleanize!
internal var gdextension_interface_variant_duplicate: GDExtensionInterfaceVariantDuplicate!
internal var gdextension_interface_variant_stringify: GDExtensionInterfaceVariantStringify!
internal var gdextension_interface_variant_get_type: GDExtensionInterfaceVariantGetType!
internal var gdextension_interface_variant_has_method: GDExtensionInterfaceVariantHasMethod!
internal var gdextension_interface_variant_has_member: GDExtensionInterfaceVariantHasMember!
internal var gdextension_interface_variant_has_key: GDExtensionInterfaceVariantHasKey!
internal var gdextension_interface_variant_get_type_name: GDExtensionInterfaceVariantGetTypeName!
internal var gdextension_interface_variant_can_convert: GDExtensionInterfaceVariantCanConvert!
internal var gdextension_interface_variant_can_convert_strict: GDExtensionInterfaceVariantCanConvertStrict!
internal var gdextension_interface_get_variant_from_type_constructor: GDExtensionInterfaceGetVariantFromTypeConstructor!
internal var gdextension_interface_get_variant_to_type_constructor: GDExtensionInterfaceGetVariantToTypeConstructor!
internal var gdextension_interface_variant_get_ptr_operator_evaluator: GDExtensionInterfaceVariantGetPtrOperatorEvaluator!
internal var gdextension_interface_variant_get_ptr_builtin_method: GDExtensionInterfaceVariantGetPtrBuiltinMethod!
internal var gdextension_interface_variant_get_ptr_constructor: GDExtensionInterfaceVariantGetPtrConstructor!
internal var gdextension_interface_variant_get_ptr_destructor: GDExtensionInterfaceVariantGetPtrDestructor!
internal var gdextension_interface_variant_construct: GDExtensionInterfaceVariantConstruct!
internal var gdextension_interface_variant_get_ptr_setter: GDExtensionInterfaceVariantGetPtrSetter!
internal var gdextension_interface_variant_get_ptr_getter: GDExtensionInterfaceVariantGetPtrGetter!
internal var gdextension_interface_variant_get_ptr_indexed_setter: GDExtensionInterfaceVariantGetPtrIndexedSetter!
internal var gdextension_interface_variant_get_ptr_indexed_getter: GDExtensionInterfaceVariantGetPtrIndexedGetter!
internal var gdextension_interface_variant_get_ptr_keyed_setter: GDExtensionInterfaceVariantGetPtrKeyedSetter!
internal var gdextension_interface_variant_get_ptr_keyed_getter: GDExtensionInterfaceVariantGetPtrKeyedGetter!
internal var gdextension_interface_variant_get_ptr_keyed_checker: GDExtensionInterfaceVariantGetPtrKeyedChecker!
internal var gdextension_interface_variant_get_constant_value: GDExtensionInterfaceVariantGetConstantValue!
internal var gdextension_interface_variant_get_ptr_utility_function: GDExtensionInterfaceVariantGetPtrUtilityFunction!
internal var gdextension_interface_string_new_with_latin1_chars: GDExtensionInterfaceStringNewWithLatin1Chars!
internal var gdextension_interface_string_new_with_utf8_chars: GDExtensionInterfaceStringNewWithUtf8Chars!
internal var gdextension_interface_string_new_with_utf16_chars: GDExtensionInterfaceStringNewWithUtf16Chars!
internal var gdextension_interface_string_new_with_utf32_chars: GDExtensionInterfaceStringNewWithUtf32Chars!
internal var gdextension_interface_string_new_with_wide_chars: GDExtensionInterfaceStringNewWithWideChars!
internal var gdextension_interface_string_new_with_latin1_chars_and_len: GDExtensionInterfaceStringNewWithLatin1CharsAndLen!
internal var gdextension_interface_string_new_with_utf8_chars_and_len: GDExtensionInterfaceStringNewWithUtf8CharsAndLen!
internal var gdextension_interface_string_new_with_utf16_chars_and_len: GDExtensionInterfaceStringNewWithUtf16CharsAndLen!
internal var gdextension_interface_string_new_with_utf32_chars_and_len: GDExtensionInterfaceStringNewWithUtf32CharsAndLen!
internal var gdextension_interface_string_new_with_wide_chars_and_len: GDExtensionInterfaceStringNewWithWideCharsAndLen!
internal var gdextension_interface_string_to_latin1_chars: GDExtensionInterfaceStringToLatin1Chars!
internal var gdextension_interface_string_to_utf8_chars: GDExtensionInterfaceStringToUtf8Chars!
internal var gdextension_interface_string_to_utf16_chars: GDExtensionInterfaceStringToUtf16Chars!
internal var gdextension_interface_string_to_utf32_chars: GDExtensionInterfaceStringToUtf32Chars!
internal var gdextension_interface_string_to_wide_chars: GDExtensionInterfaceStringToWideChars!
internal var gdextension_interface_string_operator_index: GDExtensionInterfaceStringOperatorIndex!
internal var gdextension_interface_string_operator_index_const: GDExtensionInterfaceStringOperatorIndexConst!
internal var gdextension_interface_string_operator_plus_eq_string: GDExtensionInterfaceStringOperatorPlusEqString!
internal var gdextension_interface_string_operator_plus_eq_char: GDExtensionInterfaceStringOperatorPlusEqChar!
internal var gdextension_interface_string_operator_plus_eq_cstr: GDExtensionInterfaceStringOperatorPlusEqCstr!
internal var gdextension_interface_string_operator_plus_eq_wcstr: GDExtensionInterfaceStringOperatorPlusEqWcstr!
internal var gdextension_interface_string_operator_plus_eq_c32str: GDExtensionInterfaceStringOperatorPlusEqC32str!
internal var gdextension_interface_xml_parser_open_buffer: GDExtensionInterfaceXmlParserOpenBuffer!
internal var gdextension_interface_file_access_store_buffer: GDExtensionInterfaceFileAccessStoreBuffer!
internal var gdextension_interface_file_access_get_buffer: GDExtensionInterfaceFileAccessGetBuffer!
internal var gdextension_interface_worker_thread_pool_add_native_group_task: GDExtensionInterfaceWorkerThreadPoolAddNativeGroupTask!
internal var gdextension_interface_worker_thread_pool_add_native_task: GDExtensionInterfaceWorkerThreadPoolAddNativeTask!
internal var gdextension_interface_packed_byte_array_operator_index: GDExtensionInterfacePackedByteArrayOperatorIndex!
internal var gdextension_interface_packed_byte_array_operator_index_const: GDExtensionInterfacePackedByteArrayOperatorIndexConst!
internal var gdextension_interface_packed_color_array_operator_index: GDExtensionInterfacePackedColorArrayOperatorIndex!
internal var gdextension_interface_packed_color_array_operator_index_const: GDExtensionInterfacePackedColorArrayOperatorIndexConst!
internal var gdextension_interface_packed_float32_array_operator_index: GDExtensionInterfacePackedFloat32ArrayOperatorIndex!
internal var gdextension_interface_packed_float32_array_operator_index_const: GDExtensionInterfacePackedFloat32ArrayOperatorIndexConst!
internal var gdextension_interface_packed_float64_array_operator_index: GDExtensionInterfacePackedFloat64ArrayOperatorIndex!
internal var gdextension_interface_packed_float64_array_operator_index_const: GDExtensionInterfacePackedFloat64ArrayOperatorIndexConst!
internal var gdextension_interface_packed_int32_array_operator_index: GDExtensionInterfacePackedInt32ArrayOperatorIndex!
internal var gdextension_interface_packed_int32_array_operator_index_const: GDExtensionInterfacePackedInt32ArrayOperatorIndexConst!
internal var gdextension_interface_packed_int64_array_operator_index: GDExtensionInterfacePackedInt64ArrayOperatorIndex!
internal var gdextension_interface_packed_int64_array_operator_index_const: GDExtensionInterfacePackedInt64ArrayOperatorIndexConst!
internal var gdextension_interface_packed_string_array_operator_index: GDExtensionInterfacePackedStringArrayOperatorIndex!
internal var gdextension_interface_packed_string_array_operator_index_const: GDExtensionInterfacePackedStringArrayOperatorIndexConst!
internal var gdextension_interface_packed_vector2_array_operator_index: GDExtensionInterfacePackedVector2ArrayOperatorIndex!
internal var gdextension_interface_packed_vector2_array_operator_index_const: GDExtensionInterfacePackedVector2ArrayOperatorIndexConst!
internal var gdextension_interface_packed_vector3_array_operator_index: GDExtensionInterfacePackedVector3ArrayOperatorIndex!
internal var gdextension_interface_packed_vector3_array_operator_index_const: GDExtensionInterfacePackedVector3ArrayOperatorIndexConst!
internal var gdextension_interface_array_operator_index: GDExtensionInterfaceArrayOperatorIndex!
internal var gdextension_interface_array_operator_index_const: GDExtensionInterfaceArrayOperatorIndexConst!
internal var gdextension_interface_array_ref: GDExtensionInterfaceArrayRef!
internal var gdextension_interface_array_set_typed: GDExtensionInterfaceArraySetTyped!
internal var gdextension_interface_dictionary_operator_index: GDExtensionInterfaceDictionaryOperatorIndex!
internal var gdextension_interface_dictionary_operator_index_const: GDExtensionInterfaceDictionaryOperatorIndexConst!
internal var gdextension_interface_object_method_bind_call: GDExtensionInterfaceObjectMethodBindCall!
internal var gdextension_interface_object_method_bind_ptrcall: GDExtensionInterfaceObjectMethodBindPtrcall!
internal var gdextension_interface_object_destroy: GDExtensionInterfaceObjectDestroy!
internal var gdextension_interface_global_get_singleton: GDExtensionInterfaceGlobalGetSingleton!
internal var gdextension_interface_object_get_instance_binding: GDExtensionInterfaceObjectGetInstanceBinding!
internal var gdextension_interface_object_set_instance_binding: GDExtensionInterfaceObjectSetInstanceBinding!
internal var gdextension_interface_object_set_instance: GDExtensionInterfaceObjectSetInstance!
internal var gdextension_interface_object_get_class_name: GDExtensionInterfaceObjectGetClassName!
internal var gdextension_interface_object_cast_to: GDExtensionInterfaceObjectCastTo!
internal var gdextension_interface_object_get_instance_from_id: GDExtensionInterfaceObjectGetInstanceFromId!
internal var gdextension_interface_object_get_instance_id: GDExtensionInterfaceObjectGetInstanceId!
internal var gdextension_interface_ref_get_object: GDExtensionInterfaceRefGetObject!
internal var gdextension_interface_ref_set_object: GDExtensionInterfaceRefSetObject!
internal var gdextension_interface_script_instance_create: GDExtensionInterfaceScriptInstanceCreate!
internal var gdextension_interface_classdb_construct_object: GDExtensionInterfaceClassdbConstructObject!
internal var gdextension_interface_classdb_get_method_bind: GDExtensionInterfaceClassdbGetMethodBind!
internal var gdextension_interface_classdb_get_class_tag: GDExtensionInterfaceClassdbGetClassTag!
internal var gdextension_interface_classdb_register_extension_class: GDExtensionInterfaceClassdbRegisterExtensionClass!
internal var gdextension_interface_classdb_register_extension_class_method: GDExtensionInterfaceClassdbRegisterExtensionClassMethod!
internal var gdextension_interface_classdb_register_extension_class_integer_constant: GDExtensionInterfaceClassdbRegisterExtensionClassIntegerConstant!
internal var gdextension_interface_classdb_register_extension_class_property: GDExtensionInterfaceClassdbRegisterExtensionClassProperty!
internal var gdextension_interface_classdb_register_extension_class_property_group: GDExtensionInterfaceClassdbRegisterExtensionClassPropertyGroup!
internal var gdextension_interface_classdb_register_extension_class_property_subgroup: GDExtensionInterfaceClassdbRegisterExtensionClassPropertySubgroup!
internal var gdextension_interface_classdb_register_extension_class_signal: GDExtensionInterfaceClassdbRegisterExtensionClassSignal!
internal var gdextension_interface_classdb_unregister_extension_class: GDExtensionInterfaceClassdbUnregisterExtensionClass!
internal var gdextension_interface_get_library_path: GDExtensionInterfaceGetLibraryPath!
internal var gdextension_interface_editor_add_plugin: GDExtensionInterfaceEditorAddPlugin!
internal var gdextension_interface_editor_remove_plugin: GDExtensionInterfaceEditorRemovePlugin!

// MARK: - GodotExtension

/// The centralized point of control of a Godot extension.
///
/// > Warning: Do not use `GodotExtension`, or any of its members, directly.
///
/// Use the ``Bridge()`` macro to setup a bridge that will
/// initialize the `GodotExtension`.
public enum GodotExtension {
    public typealias GetProcAddress = GDExtensionInterfaceGetProcAddress
    public typealias ClassLibraryPointer = GDExtensionClassLibraryPtr
    public typealias InitializationPointer = UnsafeMutablePointer<GDExtensionInitialization>
    public typealias InitializationResult = GDExtensionBool
    
    // MARK: Properties
    
    /// A Boolean value indicating whether the extension is initialized.
    ///
    /// Once initialized, the extension cannot change its interface values.
    public private(set) static var isInitialized = false
    
    public private(set) static var version: GodotVersion!
    
    private(set) static var bridge: GodotBridge.Type!
    
    private(set) static var getProcAddress: GDExtensionInterfaceGetProcAddress!
    private(set) static var libraryPtr: GDExtensionClassLibraryPtr!
    private(set) static var token: GDExtensionClassLibraryPtr!
    private(set) static var initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>!
    
    /// The class register used to register custom classes and expose them to the Godot editor.
    public static let classRegister = ClassRegister.shared
    
    // MARK: Initialize
    
    public enum InitializationError: Error {
        case alreadyInitialized
        case cannotLoadFunction(name: Swift.String)
    }
    
    /// Initializes the extension and all the bindings necessary for Godot to work.
    ///
    /// The extension should be initialized before any call to any type related to Godot.
    ///
    /// Do not initialize the extension directly,
    /// but instead use the ``Bridge()`` macro to setup a bridge.
    public static func initialize<T>(
        using bridge: T.Type,
        getProcAddress: GetProcAddress,
        libraryPtr: ClassLibraryPointer,
        initializationPtr: InitializationPointer
    ) throws where T : GodotBridge {
        guard !isInitialized else {
            throw InitializationError.alreadyInitialized
        }
        
        self.bridge = bridge
        
        self.getProcAddress = getProcAddress
        self.libraryPtr = libraryPtr
        self.token = libraryPtr
        self.initializationPtr = initializationPtr
        
        try loadAllInterfaceFunctions()
        loadGodotVersion()
        
        initializationPtr.pointee.initialize = initializeLevel
        initializationPtr.pointee.deinitialize = deinitializeLevel
        initializationPtr.pointee.minimum_initialization_level = bridge.minimumInitializationLevel.extensionLevel
        
        isInitialized = true
    }
    
    private static func loadAllInterfaceFunctions() throws {
        // Load the "print_error" function first (needed for the loading of the other functions).
        gdextension_interface_print_error = unsafeBitCast(
            getProcAddress("print_error"),
            to: GDExtensionInterfacePrintError.self
        )
        
        if gdextension_interface_print_error == nil {
            print("ERROR: Unable to load GDExtension interface function print_error().")
            throw InitializationError.cannotLoadFunction(name: "print_error")
        }
        
        try loadInterfaceFunction(&gdextension_interface_get_godot_version, name: "get_godot_version")
        try loadInterfaceFunction(&gdextension_interface_mem_alloc, name: "mem_alloc")
        try loadInterfaceFunction(&gdextension_interface_mem_realloc, name: "mem_realloc")
        try loadInterfaceFunction(&gdextension_interface_mem_free, name: "mem_free")
        try loadInterfaceFunction(&gdextension_interface_print_error_with_message, name: "print_error_with_message")
        try loadInterfaceFunction(&gdextension_interface_print_warning, name: "print_warning")
        try loadInterfaceFunction(&gdextension_interface_print_warning_with_message, name: "print_warning_with_message")
        try loadInterfaceFunction(&gdextension_interface_print_script_error, name: "print_script_error")
        try loadInterfaceFunction(&gdextension_interface_print_script_error_with_message, name: "print_script_error_with_message")
        try loadInterfaceFunction(&gdextension_interface_get_native_struct_size, name: "get_native_struct_size")
        try loadInterfaceFunction(&gdextension_interface_variant_new_copy, name: "variant_new_copy")
        try loadInterfaceFunction(&gdextension_interface_variant_new_nil, name: "variant_new_nil")
        try loadInterfaceFunction(&gdextension_interface_variant_destroy, name: "variant_destroy")
        try loadInterfaceFunction(&gdextension_interface_variant_call, name: "variant_call")
        try loadInterfaceFunction(&gdextension_interface_variant_call_static, name: "variant_call_static")
        try loadInterfaceFunction(&gdextension_interface_variant_evaluate, name: "variant_evaluate")
        try loadInterfaceFunction(&gdextension_interface_variant_set, name: "variant_set")
        try loadInterfaceFunction(&gdextension_interface_variant_set_named, name: "variant_set_named")
        try loadInterfaceFunction(&gdextension_interface_variant_set_keyed, name: "variant_set_keyed")
        try loadInterfaceFunction(&gdextension_interface_variant_set_indexed, name: "variant_set_indexed")
        try loadInterfaceFunction(&gdextension_interface_variant_get, name: "variant_get")
        try loadInterfaceFunction(&gdextension_interface_variant_get_named, name: "variant_get_named")
        try loadInterfaceFunction(&gdextension_interface_variant_get_keyed, name: "variant_get_keyed")
        try loadInterfaceFunction(&gdextension_interface_variant_get_indexed, name: "variant_get_indexed")
        try loadInterfaceFunction(&gdextension_interface_variant_iter_init, name: "variant_iter_init")
        try loadInterfaceFunction(&gdextension_interface_variant_iter_next, name: "variant_iter_next")
        try loadInterfaceFunction(&gdextension_interface_variant_iter_get, name: "variant_iter_get")
        try loadInterfaceFunction(&gdextension_interface_variant_hash, name: "variant_hash")
        try loadInterfaceFunction(&gdextension_interface_variant_recursive_hash, name: "variant_recursive_hash")
        try loadInterfaceFunction(&gdextension_interface_variant_hash_compare, name: "variant_hash_compare")
        try loadInterfaceFunction(&gdextension_interface_variant_booleanize, name: "variant_booleanize")
        try loadInterfaceFunction(&gdextension_interface_variant_duplicate, name: "variant_duplicate")
        try loadInterfaceFunction(&gdextension_interface_variant_stringify, name: "variant_stringify")
        try loadInterfaceFunction(&gdextension_interface_variant_get_type, name: "variant_get_type")
        try loadInterfaceFunction(&gdextension_interface_variant_has_method, name: "variant_has_method")
        try loadInterfaceFunction(&gdextension_interface_variant_has_member, name: "variant_has_member")
        try loadInterfaceFunction(&gdextension_interface_variant_has_key, name: "variant_has_key")
        try loadInterfaceFunction(&gdextension_interface_variant_get_type_name, name: "variant_get_type_name")
        try loadInterfaceFunction(&gdextension_interface_variant_can_convert, name: "variant_can_convert")
        try loadInterfaceFunction(&gdextension_interface_variant_can_convert_strict, name: "variant_can_convert_strict")
        try loadInterfaceFunction(&gdextension_interface_get_variant_from_type_constructor, name: "get_variant_from_type_constructor")
        try loadInterfaceFunction(&gdextension_interface_get_variant_to_type_constructor, name: "get_variant_to_type_constructor")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_operator_evaluator, name: "variant_get_ptr_operator_evaluator")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_builtin_method, name: "variant_get_ptr_builtin_method")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_constructor, name: "variant_get_ptr_constructor")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_destructor, name: "variant_get_ptr_destructor")
        try loadInterfaceFunction(&gdextension_interface_variant_construct, name: "variant_construct")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_setter, name: "variant_get_ptr_setter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_getter, name: "variant_get_ptr_getter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_indexed_setter, name: "variant_get_ptr_indexed_setter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_indexed_getter, name: "variant_get_ptr_indexed_getter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_keyed_setter, name: "variant_get_ptr_keyed_setter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_keyed_getter, name: "variant_get_ptr_keyed_getter")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_keyed_checker, name: "variant_get_ptr_keyed_checker")
        try loadInterfaceFunction(&gdextension_interface_variant_get_constant_value, name: "variant_get_constant_value")
        try loadInterfaceFunction(&gdextension_interface_variant_get_ptr_utility_function, name: "variant_get_ptr_utility_function")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_latin1_chars, name: "string_new_with_latin1_chars")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf8_chars, name: "string_new_with_utf8_chars")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf16_chars, name: "string_new_with_utf16_chars")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf32_chars, name: "string_new_with_utf32_chars")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_wide_chars, name: "string_new_with_wide_chars")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_latin1_chars_and_len, name: "string_new_with_latin1_chars_and_len")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf8_chars_and_len, name: "string_new_with_utf8_chars_and_len")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf16_chars_and_len, name: "string_new_with_utf16_chars_and_len")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_utf32_chars_and_len, name: "string_new_with_utf32_chars_and_len")
        try loadInterfaceFunction(&gdextension_interface_string_new_with_wide_chars_and_len, name: "string_new_with_wide_chars_and_len")
        try loadInterfaceFunction(&gdextension_interface_string_to_latin1_chars, name: "string_to_latin1_chars")
        try loadInterfaceFunction(&gdextension_interface_string_to_utf8_chars, name: "string_to_utf8_chars")
        try loadInterfaceFunction(&gdextension_interface_string_to_utf16_chars, name: "string_to_utf16_chars")
        try loadInterfaceFunction(&gdextension_interface_string_to_utf32_chars, name: "string_to_utf32_chars")
        try loadInterfaceFunction(&gdextension_interface_string_to_wide_chars, name: "string_to_wide_chars")
        try loadInterfaceFunction(&gdextension_interface_string_operator_index, name: "string_operator_index")
        try loadInterfaceFunction(&gdextension_interface_string_operator_index_const, name: "string_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_string_operator_plus_eq_string, name: "string_operator_plus_eq_string")
        try loadInterfaceFunction(&gdextension_interface_string_operator_plus_eq_char, name: "string_operator_plus_eq_char")
        try loadInterfaceFunction(&gdextension_interface_string_operator_plus_eq_cstr, name: "string_operator_plus_eq_cstr")
        try loadInterfaceFunction(&gdextension_interface_string_operator_plus_eq_wcstr, name: "string_operator_plus_eq_wcstr")
        try loadInterfaceFunction(&gdextension_interface_string_operator_plus_eq_c32str, name: "string_operator_plus_eq_c32str")
        try loadInterfaceFunction(&gdextension_interface_xml_parser_open_buffer, name: "xml_parser_open_buffer")
        try loadInterfaceFunction(&gdextension_interface_file_access_store_buffer, name: "file_access_store_buffer")
        try loadInterfaceFunction(&gdextension_interface_file_access_get_buffer, name: "file_access_get_buffer")
        try loadInterfaceFunction(&gdextension_interface_worker_thread_pool_add_native_group_task, name: "worker_thread_pool_add_native_group_task")
        try loadInterfaceFunction(&gdextension_interface_worker_thread_pool_add_native_task, name: "worker_thread_pool_add_native_task")
        try loadInterfaceFunction(&gdextension_interface_packed_byte_array_operator_index, name: "packed_byte_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_byte_array_operator_index_const, name: "packed_byte_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_color_array_operator_index, name: "packed_color_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_color_array_operator_index_const, name: "packed_color_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_float32_array_operator_index, name: "packed_float32_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_float32_array_operator_index_const, name: "packed_float32_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_float64_array_operator_index, name: "packed_float64_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_float64_array_operator_index_const, name: "packed_float64_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_int32_array_operator_index, name: "packed_int32_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_int32_array_operator_index_const, name: "packed_int32_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_int64_array_operator_index, name: "packed_int64_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_int64_array_operator_index_const, name: "packed_int64_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_string_array_operator_index, name: "packed_string_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_string_array_operator_index_const, name: "packed_string_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_vector2_array_operator_index, name: "packed_vector2_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_vector2_array_operator_index_const, name: "packed_vector2_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_packed_vector3_array_operator_index, name: "packed_vector3_array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_packed_vector3_array_operator_index_const, name: "packed_vector3_array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_array_operator_index, name: "array_operator_index")
        try loadInterfaceFunction(&gdextension_interface_array_operator_index_const, name: "array_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_array_ref, name: "array_ref")
        try loadInterfaceFunction(&gdextension_interface_array_set_typed, name: "array_set_typed")
        try loadInterfaceFunction(&gdextension_interface_dictionary_operator_index, name: "dictionary_operator_index")
        try loadInterfaceFunction(&gdextension_interface_dictionary_operator_index_const, name: "dictionary_operator_index_const")
        try loadInterfaceFunction(&gdextension_interface_object_method_bind_call, name: "object_method_bind_call")
        try loadInterfaceFunction(&gdextension_interface_object_method_bind_ptrcall, name: "object_method_bind_ptrcall")
        try loadInterfaceFunction(&gdextension_interface_object_destroy, name: "object_destroy")
        try loadInterfaceFunction(&gdextension_interface_global_get_singleton, name: "global_get_singleton")
        try loadInterfaceFunction(&gdextension_interface_object_get_instance_binding, name: "object_get_instance_binding")
        try loadInterfaceFunction(&gdextension_interface_object_set_instance_binding, name: "object_set_instance_binding")
        try loadInterfaceFunction(&gdextension_interface_object_set_instance, name: "object_set_instance")
        try loadInterfaceFunction(&gdextension_interface_object_get_class_name, name: "object_get_class_name")
        try loadInterfaceFunction(&gdextension_interface_object_cast_to, name: "object_cast_to")
        try loadInterfaceFunction(&gdextension_interface_object_get_instance_from_id, name: "object_get_instance_from_id")
        try loadInterfaceFunction(&gdextension_interface_object_get_instance_id, name: "object_get_instance_id")
        try loadInterfaceFunction(&gdextension_interface_ref_get_object, name: "ref_get_object")
        try loadInterfaceFunction(&gdextension_interface_ref_set_object, name: "ref_set_object")
        try loadInterfaceFunction(&gdextension_interface_script_instance_create, name: "script_instance_create")
        try loadInterfaceFunction(&gdextension_interface_classdb_construct_object, name: "classdb_construct_object")
        try loadInterfaceFunction(&gdextension_interface_classdb_get_method_bind, name: "classdb_get_method_bind")
        try loadInterfaceFunction(&gdextension_interface_classdb_get_class_tag, name: "classdb_get_class_tag")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class, name: "classdb_register_extension_class")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_method, name: "classdb_register_extension_class_method")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_integer_constant, name: "classdb_register_extension_class_integer_constant")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_property, name: "classdb_register_extension_class_property")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_property_group, name: "classdb_register_extension_class_property_group")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_property_subgroup, name: "classdb_register_extension_class_property_subgroup")
        try loadInterfaceFunction(&gdextension_interface_classdb_register_extension_class_signal, name: "classdb_register_extension_class_signal")
        try loadInterfaceFunction(&gdextension_interface_classdb_unregister_extension_class, name: "classdb_unregister_extension_class")
        try loadInterfaceFunction(&gdextension_interface_get_library_path, name: "get_library_path")
        try loadInterfaceFunction(&gdextension_interface_editor_add_plugin, name: "editor_add_plugin")
        try loadInterfaceFunction(&gdextension_interface_editor_remove_plugin, name: "editor_remove_plugin")
    }
    
    private static func loadInterfaceFunction<FunctionType>(
        _ function: inout FunctionType?,
        name: String
    ) throws {
        name.withCString { cString in
            function = unsafeBitCast(getProcAddress(cString), to: FunctionType.self)
        }
        
        if function == nil {
            gdDebugPrintError("Cannot load function \(name)")
            throw InitializationError.cannotLoadFunction(name: name)
        }
    }
    
    private static func loadGodotVersion() {
        var version = GDExtensionGodotVersion()
        gdextension_interface_get_godot_version(&version)
        self.version = .init(version)
    }
}

// MARK: - Levels

private func initializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    GodotExtension.classRegister.initialize(level: level)
    GodotExtension.bridge.initialize(level: level)
    
    GodotExtension.classRegister.registerGodotClasses(forLevel: level)
    
    guard level == .scene else {
        return
    }
    
    for object in GodotExtension.bridge.exposedClasses {
        object.self.__exposeToGodot()
    }
}

private func deinitializeLevel(userData: UnsafeMutableRawPointer?, level: GDExtensionInitializationLevel) {
    let level = GodotInitializationLevel(level)
    
    GodotExtension.classRegister.deinitialize(level: level)
    GodotExtension.bridge.deinitialize(level: level)
}
