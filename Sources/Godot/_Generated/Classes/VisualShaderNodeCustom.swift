//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeCustom: VisualShaderNode {
    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getDescription() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getCategory() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getReturnIconType() -> Godot.VisualShaderNode.PortType {
        Godot.VisualShaderNode.PortType(rawValue: 0)!
    }

    open func _getInputPortCount() -> Int32 {
        Int32()
    }

    open func _getInputPortType(port: Int32) -> Godot.VisualShaderNode.PortType {
        Godot.VisualShaderNode.PortType(rawValue: 0)!
    }

    open func _getInputPortName(port: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getOutputPortCount() -> Int32 {
        Int32()
    }

    open func _getOutputPortType(port: Int32) -> Godot.VisualShaderNode.PortType {
        Godot.VisualShaderNode.PortType(rawValue: 0)!
    }

    open func _getOutputPortName(port: Int32) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getCode(inputVars: Godot.GodotArray<Godot.GodotString>, outputVars: Godot.GodotArray<Godot.GodotString>, mode: Godot.Shader.Mode, type: Godot.VisualShader.GodotType) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getFuncCode(mode: Godot.Shader.Mode, type: Godot.VisualShader.GodotType) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getGlobalCode(mode: Godot.Shader.Mode) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isHighend() -> Bool {
        Bool()
    }

    open func _isAvailable(mode: Godot.Shader.Mode, type: Godot.VisualShader.GodotType) -> Bool {
        Bool()
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
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getDescription()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_category_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getCategory()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_return_icon_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getReturnIconType()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_input_port_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInputPortCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_input_port_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInputPortType(
            port: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_input_port_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getInputPortName(
            port: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_output_port_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOutputPortCount()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_output_port_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOutputPortType(
            port: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_output_port_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getOutputPortName(
            port: Int32.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getCode(
            inputVars: Godot.GodotArray<Godot.GodotString> .fromGodotUnsafePointer(args[0]!),
            outputVars: Godot.GodotArray<Godot.GodotString> .fromGodotUnsafePointer(args[1]!),
            mode: Godot.Shader.Mode.fromGodotUnsafePointer(args[2]!),
            type: Godot.VisualShader.GodotType.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_func_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getFuncCode(
            mode: Godot.Shader.Mode.fromGodotUnsafePointer(args[0]!),
            type: Godot.VisualShader.GodotType.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_global_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._getGlobalCode(
            mode: Godot.Shader.Mode.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_highend_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._isHighend()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_available_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
        ._isAvailable(
            mode: Godot.Shader.Mode.fromGodotUnsafePointer(args[0]!),
            type: Godot.VisualShader.GodotType.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getName" : ("_get_name", _get_name_call),
            "_getDescription" : ("_get_description", _get_description_call),
            "_getCategory" : ("_get_category", _get_category_call),
            "_getReturnIconType" : ("_get_return_icon_type", _get_return_icon_type_call),
            "_getInputPortCount" : ("_get_input_port_count", _get_input_port_count_call),
            "_getInputPortType" : ("_get_input_port_type", _get_input_port_type_call),
            "_getInputPortName" : ("_get_input_port_name", _get_input_port_name_call),
            "_getOutputPortCount" : ("_get_output_port_count", _get_output_port_count_call),
            "_getOutputPortType" : ("_get_output_port_type", _get_output_port_type_call),
            "_getOutputPortName" : ("_get_output_port_name", _get_output_port_name_call),
            "_getCode" : ("_get_code", _get_code_call),
            "_getFuncCode" : ("_get_func_code", _get_func_code_call),
            "_getGlobalCode" : ("_get_global_code", _get_global_code_call),
            "_isHighend" : ("_is_highend", _is_highend_call),
            "_isAvailable" : ("_is_available", _is_available_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }