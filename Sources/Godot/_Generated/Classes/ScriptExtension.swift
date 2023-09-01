//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ScriptExtension: Script {
    open func _editorCanReloadFromFile() -> Bool {
        Bool()
    }

    open func _placeholderErased(placeholder: UnsafeMutableRawPointer) {
    }

    open func _canInstantiate() -> Bool {
        Bool()
    }

    open func _getBaseScript() -> Godot.Script? {
        nil
    }

    open func _getGlobalName() -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _inheritsScript(_ script: Godot.Script?) -> Bool {
        Bool()
    }

    open func _getInstanceBaseType() -> Godot.GodotStringName {
        Godot.GodotStringName()
    }

    open func _instanceCreate(forObject object: Godot.Object?) -> UnsafeMutableRawPointer {
        fatalError("No default value provided for pointers.")
    }

    open func _placeholderInstanceCreate(forObject object: Godot.Object?) -> UnsafeMutableRawPointer {
        fatalError("No default value provided for pointers.")
    }

    open func _instanceHas(object: Godot.Object?) -> Bool {
        Bool()
    }

    open func _hasSourceCode() -> Bool {
        Bool()
    }

    open func _getSourceCode() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _setSourceCode(_ code: Godot.GodotString) {
    }

    open func _reload(keepState: Bool) -> Godot.ErrorType {
        Godot.ErrorType(rawValue: 0)!
    }

    open func _getDocumentation() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _hasMethod(_ method: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _getMethodInfo(method: Godot.GodotStringName) -> Godot.GodotDictionary {
        Godot.GodotDictionary()
    }

    open func _isTool() -> Bool {
        Bool()
    }

    open func _isValid() -> Bool {
        Bool()
    }

    open func _getLanguage() -> Godot.ScriptLanguage? {
        nil
    }

    open func _hasScriptSignal(_ signal: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _getScriptSignalList() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _hasPropertyDefaultValue(property: Godot.GodotStringName) -> Bool {
        Bool()
    }

    open func _getPropertyDefaultValue(property: Godot.GodotStringName) -> Godot.Variant {
        nil
    }

    open func _updateExports() {
    }

    open func _getScriptMethodList() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _getScriptPropertyList() -> Godot.GodotTypedArray<Godot.GodotDictionary> {
        Godot.GodotTypedArray<Godot.GodotDictionary>()
    }

    open func _getMemberLine(member: Godot.GodotStringName) -> Int32 {
        Int32()
    }

    open func _getConstants() -> Godot.GodotDictionary {
        Godot.GodotDictionary()
    }

    open func _getMembers() -> Godot.GodotTypedArray<Godot.GodotStringName> {
        Godot.GodotTypedArray<Godot.GodotStringName>()
    }

    open func _isPlaceholderFallbackEnabled() -> Bool {
        Bool()
    }

    open func _getRpcConfig() -> Godot.Variant {
        nil
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _editor_can_reload_from_file_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._editorCanReloadFromFile()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _placeholder_erased_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._placeholderErased(
            placeholder: args[0]!.load(as: UnsafeMutableRawPointer.self)
        )}
        let _can_instantiate_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._canInstantiate()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_base_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getBaseScript()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_global_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getGlobalName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _inherits_script_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._inheritsScript(
            Godot.Script.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_instance_base_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getInstanceBaseType()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _instance_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._instanceCreate(
            forObject: Godot.Object.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: UnsafeMutableRawPointer.self).pointee = returnValue}
        let _placeholder_instance_create_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._placeholderInstanceCreate(
            forObject: Godot.Object.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: UnsafeMutableRawPointer.self).pointee = returnValue}
        let _instance_has_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._instanceHas(
            object: Godot.Object.retreivedInstanceManagedByGodot(gdextension_interface_ref_get_object(args[0]!))
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _has_source_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasSourceCode()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_source_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getSourceCode()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _set_source_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._setSourceCode(
            Godot.GodotString(godotExtensionPointer: args[0]!)
        )}
        let _reload_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._reload(
            keepState: args[0]!.load(as: Bool.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.ErrorType.self).pointee = returnValue}
        let _get_documentation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getDocumentation()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _has_method_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasMethod(
            Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_method_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getMethodInfo(
            method: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_tool_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isTool()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _is_valid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isValid()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_language_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getLanguage()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _has_script_signal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasScriptSignal(
            Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_script_signal_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getScriptSignalList()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _has_property_default_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasPropertyDefaultValue(
            property: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_property_default_value_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getPropertyDefaultValue(
            property: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _update_exports_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._updateExports()}
        let _get_script_method_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getScriptMethodList()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_script_property_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getScriptPropertyList()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_member_line_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMemberLine(
            member: Godot.GodotStringName(godotExtensionPointer: args[0]!)
        )
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_constants_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getConstants()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_members_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getMembers()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_placeholder_fallback_enabled_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isPlaceholderFallbackEnabled()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _get_rpc_config_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<ScriptExtension> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getRpcConfig()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_editorCanReloadFromFile" : ("_editor_can_reload_from_file", _editor_can_reload_from_file_call),
            "_placeholderErased" : ("_placeholder_erased", _placeholder_erased_call),
            "_canInstantiate" : ("_can_instantiate", _can_instantiate_call),
            "_getBaseScript" : ("_get_base_script", _get_base_script_call),
            "_getGlobalName" : ("_get_global_name", _get_global_name_call),
            "_inheritsScript" : ("_inherits_script", _inherits_script_call),
            "_getInstanceBaseType" : ("_get_instance_base_type", _get_instance_base_type_call),
            "_instanceCreate" : ("_instance_create", _instance_create_call),
            "_placeholderInstanceCreate" : ("_placeholder_instance_create", _placeholder_instance_create_call),
            "_instanceHas" : ("_instance_has", _instance_has_call),
            "_hasSourceCode" : ("_has_source_code", _has_source_code_call),
            "_getSourceCode" : ("_get_source_code", _get_source_code_call),
            "_setSourceCode" : ("_set_source_code", _set_source_code_call),
            "_reload" : ("_reload", _reload_call),
            "_getDocumentation" : ("_get_documentation", _get_documentation_call),
            "_hasMethod" : ("_has_method", _has_method_call),
            "_getMethodInfo" : ("_get_method_info", _get_method_info_call),
            "_isTool" : ("_is_tool", _is_tool_call),
            "_isValid" : ("_is_valid", _is_valid_call),
            "_getLanguage" : ("_get_language", _get_language_call),
            "_hasScriptSignal" : ("_has_script_signal", _has_script_signal_call),
            "_getScriptSignalList" : ("_get_script_signal_list", _get_script_signal_list_call),
            "_hasPropertyDefaultValue" : ("_has_property_default_value", _has_property_default_value_call),
            "_getPropertyDefaultValue" : ("_get_property_default_value", _get_property_default_value_call),
            "_updateExports" : ("_update_exports", _update_exports_call),
            "_getScriptMethodList" : ("_get_script_method_list", _get_script_method_list_call),
            "_getScriptPropertyList" : ("_get_script_property_list", _get_script_property_list_call),
            "_getMemberLine" : ("_get_member_line", _get_member_line_call),
            "_getConstants" : ("_get_constants", _get_constants_call),
            "_getMembers" : ("_get_members", _get_members_call),
            "_isPlaceholderFallbackEnabled" : ("_is_placeholder_fallback_enabled", _is_placeholder_fallback_enabled_call),
            "_getRpcConfig" : ("_get_rpc_config", _get_rpc_config_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }