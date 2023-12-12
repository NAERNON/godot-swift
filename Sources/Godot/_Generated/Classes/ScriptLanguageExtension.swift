//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ScriptLanguageExtension: ScriptLanguage {
    public enum LookupResultType: UInt32, GodotEnum {
        case scriptLocation = 0
        case `class` = 1
        case classConstant = 2
        case classProperty = 3
        case classMethod = 4
        case classSignal = 5
        case classEnum = 6
        case classTbdGlobalscope = 7
        case classAnnotation = 8
        case max = 9
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Script Location", 0),
            ("Class", 1),
            ("Class Constant", 2),
            ("Class Property", 3),
            ("Class Method", 4),
            ("Class Signal", 5),
            ("Class Enum", 6),
            ("Class Tbd Globalscope", 7),
            ("Class Annotation", 8),
            ("Max", 9),]
        }
    }
    public enum CodeCompletionLocation: UInt32, GodotEnum {
        case local = 0
        case parentMask = 256
        case otherUserCode = 512
        case other = 1024
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Local", 0),
            ("Parent Mask", 256),
            ("Other User Code", 512),
            ("Other", 1024),]
        }
    }
    public enum CodeCompletionKind: UInt32, GodotEnum {
        case `class` = 0
        case function = 1
        case signal = 2
        case variable = 3
        case member = 4
        case `enum` = 5
        case constant = 6
        case nodePath = 7
        case filePath = 8
        case plainText = 9
        case max = 10
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Class", 0),
            ("Function", 1),
            ("Signal", 2),
            ("Variable", 3),
            ("Member", 4),
            ("Enum", 5),
            ("Constant", 6),
            ("Node Path", 7),
            ("File Path", 8),
            ("Plain Text", 9),
            ("Max", 10),]
        }
    }

    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _init() {
    }

    open func _getType() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getExtension() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _finish() {
    }

    open func _getReservedWords() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _isControlFlowKeyword(_ keyword: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _getCommentDelimiters() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getStringDelimiters() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _makeTemplate(_ template: Godot.GodotString, className: Godot.GodotString, baseClassName: Godot.GodotString) -> Godot.Script? {
        nil
    }

    open func _getBuiltInTemplates(object: Godot.GodotStringName) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    open func _isUsingTemplates() -> Bool {
        Bool()
    }

    open func _validate(script: Godot.GodotString, path: Godot.GodotString, validateFunctions: Bool, validateErrors: Bool, validateWarnings: Bool, validateSafeLines: Bool) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _validatePath(_ path: Godot.GodotString) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _createScript() -> Godot.Object? {
        nil
    }

    open func _hasNamedClasses() -> Bool {
        Bool()
    }

    open func _supportsBuiltinMode() -> Bool {
        Bool()
    }

    open func _supportsDocumentation() -> Bool {
        Bool()
    }

    open func _canInheritFromFile() -> Bool {
        Bool()
    }

    open func _findFunction(className: Godot.GodotString, functionName: Godot.GodotString) -> Int32 {
        Int32()
    }

    open func _makeFunction(className: Godot.GodotString, functionName: Godot.GodotString, functionArgs: Godot.PackedStringArray) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _openInExternalEditor(script: Godot.Script?, line: Int32, column: Int32) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _overridesExternalEditor() -> Bool {
        Bool()
    }

    open func _completeCode(_ code: Godot.GodotString, path: Godot.GodotString, owner: Godot.Object?) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _lookupCode(_ code: Godot.GodotString, symbol: Godot.GodotString, path: Godot.GodotString, owner: Godot.Object?) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _autoIndentCode(_ code: Godot.GodotString, fromLine: Int32, toLine: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _addGlobalConstant(name: Godot.GodotStringName, value: Godot.Variant) {
    }

    open func _addNamedGlobalConstant(name: Godot.GodotStringName, value: Godot.Variant) {
    }

    open func _removeNamedGlobalConstant(name: Godot.GodotStringName) {
    }

    open func _threadEnter() {
    }

    open func _threadExit() {
    }

    open func _debugGetError() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _debugGetStackLevelCount() -> Int32 {
        Int32()
    }

    open func _debugGetStackLevelLine(level: Int32) -> Int32 {
        Int32()
    }

    open func _debugGetStackLevelFunction(level: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _debugGetStackLevelLocals(level: Int32, maxSubitems: Int32, maxDepth: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _debugGetStackLevelMembers(level: Int32, maxSubitems: Int32, maxDepth: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _debugGetStackLevelInstance(level: Int32) -> UnsafeMutableRawPointer {
        fatalError("No default value provided for pointers.")
    }

    open func _debugGetGlobals(maxSubitems: Int32, maxDepth: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _debugParseStackLevelExpression(level: Int32, expression: Godot.GodotString, maxSubitems: Int32, maxDepth: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _debugGetCurrentStackInfo() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    open func _reloadAllScripts() {
    }

    open func _reloadToolScript(_ script: Godot.Script?, softReload: Bool) {
    }

    open func _getRecognizedExtensions() -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _getPublicFunctions() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    open func _getPublicConstants() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _getPublicAnnotations() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>()
    }

    open func _profilingStart() {
    }

    open func _profilingStop() {
    }

    open func _profilingGetAccumulatedData(infoArray: UnsafeMutablePointer<ScriptLanguageExtensionProfilingInfo>, infoMax: Int32) -> Int32 {
        Int32()
    }

    open func _profilingGetFrameData(infoArray: UnsafeMutablePointer<ScriptLanguageExtensionProfilingInfo>, infoMax: Int32) -> Int32 {
        Int32()
    }

    open func _frame() {
    }

    open func _handlesGlobalClassType(_ type: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _getGlobalClassName(path: Godot.GodotString) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _init_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._init()}
        let _get_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getType()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_extension_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getExtension()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _finish_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._finish()}
        let _get_reserved_words_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getReservedWords()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_control_flow_keyword_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._isControlFlowKeyword(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_comment_delimiters_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getCommentDelimiters()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_string_delimiters_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getStringDelimiters()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _make_template_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._makeTemplate(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            className: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            baseClassName: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_built_in_templates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getBuiltInTemplates(
            object: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_using_templates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._isUsingTemplates()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _validate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._validate(
            script: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            validateFunctions: Bool.fromGodotUnsafePointer(args[2]!),
            validateErrors: Bool.fromGodotUnsafePointer(args[3]!),
            validateWarnings: Bool.fromGodotUnsafePointer(args[4]!),
            validateSafeLines: Bool.fromGodotUnsafePointer(args[5]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _validate_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._validatePath(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._createScript()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _has_named_classes_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._hasNamedClasses()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _supports_builtin_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._supportsBuiltinMode()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _supports_documentation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._supportsDocumentation()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _can_inherit_from_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._canInheritFromFile()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _find_function_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._findFunction(
            className: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            functionName: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _make_function_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._makeFunction(
            className: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            functionName: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            functionArgs: Godot.PackedStringArray.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _open_in_external_editor_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._openInExternalEditor(
            script: Godot.Script?.fromGodotUnsafePointer(args[0]!),
            line: Int32.fromGodotUnsafePointer(args[1]!),
            column: Int32.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _overrides_external_editor_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._overridesExternalEditor()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _complete_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._completeCode(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            owner: Godot.Object?.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _lookup_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._lookupCode(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            symbol: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            path: Godot.GodotString.fromGodotUnsafePointer(args[2]!),
            owner: Godot.Object?.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _auto_indent_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._autoIndentCode(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            fromLine: Int32.fromGodotUnsafePointer(args[1]!),
            toLine: Int32.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _add_global_constant_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._addGlobalConstant(
            name: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )}
        let _add_named_global_constant_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._addNamedGlobalConstant(
            name: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!),
            value: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )}
        let _remove_named_global_constant_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._removeNamedGlobalConstant(
            name: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!)
        )}
        let _thread_enter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._threadEnter()}
        let _thread_exit_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._threadExit()}
        let _debug_get_error_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetError()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_line_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelLine(
            level: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_function_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelFunction(
            level: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_locals_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelLocals(
            level: Int32.fromGodotUnsafePointer(args[0]!),
            maxSubitems: Int32.fromGodotUnsafePointer(args[1]!),
            maxDepth: Int32.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_members_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelMembers(
            level: Int32.fromGodotUnsafePointer(args[0]!),
            maxSubitems: Int32.fromGodotUnsafePointer(args[1]!),
            maxDepth: Int32.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_stack_level_instance_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetStackLevelInstance(
            level: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_globals_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetGlobals(
            maxSubitems: Int32.fromGodotUnsafePointer(args[0]!),
            maxDepth: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_parse_stack_level_expression_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugParseStackLevelExpression(
            level: Int32.fromGodotUnsafePointer(args[0]!),
            expression: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            maxSubitems: Int32.fromGodotUnsafePointer(args[2]!),
            maxDepth: Int32.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _debug_get_current_stack_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._debugGetCurrentStackInfo()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _reload_all_scripts_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._reloadAllScripts()}
        let _reload_tool_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._reloadToolScript(
            Godot.Script?.fromGodotUnsafePointer(args[0]!),
            softReload: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _get_recognized_extensions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getRecognizedExtensions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_public_functions_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPublicFunctions()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_public_constants_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPublicConstants()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_public_annotations_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getPublicAnnotations()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _profiling_start_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._profilingStart()}
        let _profiling_stop_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._profilingStop()}
        let _profiling_get_accumulated_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._profilingGetAccumulatedData(
            infoArray: UnsafeMutablePointer<ScriptLanguageExtensionProfilingInfo> .fromGodotUnsafePointer(args[0]!),
            infoMax: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _profiling_get_frame_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._profilingGetFrameData(
            infoArray: UnsafeMutablePointer<ScriptLanguageExtensionProfilingInfo> .fromGodotUnsafePointer(args[0]!),
            infoMax: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _frame_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._frame()}
        let _handles_global_class_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._handlesGlobalClassType(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_global_class_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<ScriptLanguageExtension> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getGlobalClassName(
            path: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getName" : ("_get_name", _get_name_call),
            "_init" : ("_init", _init_call),
            "_getType" : ("_get_type", _get_type_call),
            "_getExtension" : ("_get_extension", _get_extension_call),
            "_finish" : ("_finish", _finish_call),
            "_getReservedWords" : ("_get_reserved_words", _get_reserved_words_call),
            "_isControlFlowKeyword" : ("_is_control_flow_keyword", _is_control_flow_keyword_call),
            "_getCommentDelimiters" : ("_get_comment_delimiters", _get_comment_delimiters_call),
            "_getStringDelimiters" : ("_get_string_delimiters", _get_string_delimiters_call),
            "_makeTemplate" : ("_make_template", _make_template_call),
            "_getBuiltInTemplates" : ("_get_built_in_templates", _get_built_in_templates_call),
            "_isUsingTemplates" : ("_is_using_templates", _is_using_templates_call),
            "_validate" : ("_validate", _validate_call),
            "_validatePath" : ("_validate_path", _validate_path_call),
            "_createScript" : ("_create_script", _create_script_call),
            "_hasNamedClasses" : ("_has_named_classes", _has_named_classes_call),
            "_supportsBuiltinMode" : ("_supports_builtin_mode", _supports_builtin_mode_call),
            "_supportsDocumentation" : ("_supports_documentation", _supports_documentation_call),
            "_canInheritFromFile" : ("_can_inherit_from_file", _can_inherit_from_file_call),
            "_findFunction" : ("_find_function", _find_function_call),
            "_makeFunction" : ("_make_function", _make_function_call),
            "_openInExternalEditor" : ("_open_in_external_editor", _open_in_external_editor_call),
            "_overridesExternalEditor" : ("_overrides_external_editor", _overrides_external_editor_call),
            "_completeCode" : ("_complete_code", _complete_code_call),
            "_lookupCode" : ("_lookup_code", _lookup_code_call),
            "_autoIndentCode" : ("_auto_indent_code", _auto_indent_code_call),
            "_addGlobalConstant" : ("_add_global_constant", _add_global_constant_call),
            "_addNamedGlobalConstant" : ("_add_named_global_constant", _add_named_global_constant_call),
            "_removeNamedGlobalConstant" : ("_remove_named_global_constant", _remove_named_global_constant_call),
            "_threadEnter" : ("_thread_enter", _thread_enter_call),
            "_threadExit" : ("_thread_exit", _thread_exit_call),
            "_debugGetError" : ("_debug_get_error", _debug_get_error_call),
            "_debugGetStackLevelCount" : ("_debug_get_stack_level_count", _debug_get_stack_level_count_call),
            "_debugGetStackLevelLine" : ("_debug_get_stack_level_line", _debug_get_stack_level_line_call),
            "_debugGetStackLevelFunction" : ("_debug_get_stack_level_function", _debug_get_stack_level_function_call),
            "_debugGetStackLevelLocals" : ("_debug_get_stack_level_locals", _debug_get_stack_level_locals_call),
            "_debugGetStackLevelMembers" : ("_debug_get_stack_level_members", _debug_get_stack_level_members_call),
            "_debugGetStackLevelInstance" : ("_debug_get_stack_level_instance", _debug_get_stack_level_instance_call),
            "_debugGetGlobals" : ("_debug_get_globals", _debug_get_globals_call),
            "_debugParseStackLevelExpression" : ("_debug_parse_stack_level_expression", _debug_parse_stack_level_expression_call),
            "_debugGetCurrentStackInfo" : ("_debug_get_current_stack_info", _debug_get_current_stack_info_call),
            "_reloadAllScripts" : ("_reload_all_scripts", _reload_all_scripts_call),
            "_reloadToolScript" : ("_reload_tool_script", _reload_tool_script_call),
            "_getRecognizedExtensions" : ("_get_recognized_extensions", _get_recognized_extensions_call),
            "_getPublicFunctions" : ("_get_public_functions", _get_public_functions_call),
            "_getPublicConstants" : ("_get_public_constants", _get_public_constants_call),
            "_getPublicAnnotations" : ("_get_public_annotations", _get_public_annotations_call),
            "_profilingStart" : ("_profiling_start", _profiling_start_call),
            "_profilingStop" : ("_profiling_stop", _profiling_stop_call),
            "_profilingGetAccumulatedData" : ("_profiling_get_accumulated_data", _profiling_get_accumulated_data_call),
            "_profilingGetFrameData" : ("_profiling_get_frame_data", _profiling_get_frame_data_call),
            "_frame" : ("_frame", _frame_call),
            "_handlesGlobalClassType" : ("_handles_global_class_type", _handles_global_class_type_call),
            "_getGlobalClassName" : ("_get_global_class_name", _get_global_class_name_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }