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

    open func _getCode(inputVars: Godot.GodotTypedArray<Godot.GodotString>, outputVars: Godot.GodotTypedArray<Godot.GodotString>, mode: Godot.Shader.Mode, type: Godot.VisualShader.GodotType) -> Godot.GodotString {
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
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getName()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_description_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getDescription()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_category_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getCategory()
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_return_icon_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getReturnIconType()
        returnPtr!.assumingMemoryBound(to: Godot.VisualShaderNode.PortType.self).pointee = returnValue}
        let _get_input_port_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInputPortCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_input_port_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getInputPortType(
            port: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.VisualShaderNode.PortType.self).pointee = returnValue}
        let _get_input_port_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getInputPortName(
            port: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_output_port_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getOutputPortCount()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_output_port_type_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getOutputPortType(
            port: args[0]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.VisualShaderNode.PortType.self).pointee = returnValue}
        let _get_output_port_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getOutputPortName(
            port: args[0]!.load(as: Int32.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getCode(
            inputVars: Godot.GodotTypedArray<Godot.GodotString>(godotExtensionPointer: args[0]!),
            outputVars: Godot.GodotTypedArray<Godot.GodotString>(godotExtensionPointer: args[1]!),
            mode: args[2]!.load(as: Godot.Shader.Mode.self),
            type: args[3]!.load(as: Godot.VisualShader.GodotType.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_func_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getFuncCode(
            mode: args[0]!.load(as: Godot.Shader.Mode.self),
            type: args[1]!.load(as: Godot.VisualShader.GodotType.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _get_global_code_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            var returnValue = instance
        ._getGlobalCode(
            mode: args[0]!.load(as: Godot.Shader.Mode.self)
        )
        returnValue.consumeByGodot(ontoUnsafePointer: returnPtr!)}
        let _is_highend_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isHighend()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _is_available_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<VisualShaderNodeCustom> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isAvailable(
            mode: args[0]!.load(as: Godot.Shader.Mode.self),
            type: args[1]!.load(as: Godot.VisualShader.GodotType.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
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