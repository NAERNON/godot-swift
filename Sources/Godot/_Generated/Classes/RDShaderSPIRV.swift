//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDShaderSPIRV: Resource {
    internal static var __method_binding_set_stage_bytecode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stage_bytecode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3514097977)!
        }
        }
    }()
    public func setStageBytecode(stage: Godot.RenderingDevice.ShaderStage, bytecode: Godot.PackedByteArray) {
        stage.withGodotUnsafeRawPointer { __ptr_stage in
        bytecode.withGodotUnsafeRawPointer { __ptr_bytecode in
        withUnsafeArgumentPackPointer(__ptr_stage, __ptr_bytecode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_stage_bytecode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_stage_bytecode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stage_bytecode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3816765404)!
        }
        }
    }()
    private func __getStageBytecode(stage: Godot.RenderingDevice.ShaderStage) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        stage.withGodotUnsafeRawPointer { __ptr_stage in
        withUnsafeArgumentPackPointer(__ptr_stage) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stage_bytecode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_set_stage_compile_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stage_compile_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 620821314)!
        }
        }
    }()
    public func setStageCompileError(stage: Godot.RenderingDevice.ShaderStage, compileError: Godot.GodotString) {
        stage.withGodotUnsafeRawPointer { __ptr_stage in
        compileError.withGodotUnsafeRawPointer { __ptr_compileError in
        withUnsafeArgumentPackPointer(__ptr_stage, __ptr_compileError) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_stage_compile_error,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_stage_compile_error: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stage_compile_error").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3354920045)!
        }
        }
    }()
    private func __getStageCompileError(stage: Godot.RenderingDevice.ShaderStage) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        stage.withGodotUnsafeRawPointer { __ptr_stage in
        withUnsafeArgumentPackPointer(__ptr_stage) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stage_compile_error,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var bytecodeVertex: Godot.PackedByteArray {
        get {
            __getStageBytecode(
                stage: .init(rawValue: 0)!
            )
        }
    }

    public var bytecodeFragment: Godot.PackedByteArray {
        get {
            __getStageBytecode(
                stage: .init(rawValue: 1)!
            )
        }
    }

    public var bytecodeTesselationControl: Godot.PackedByteArray {
        get {
            __getStageBytecode(
                stage: .init(rawValue: 2)!
            )
        }
    }

    public var bytecodeTesselationEvaluation: Godot.PackedByteArray {
        get {
            __getStageBytecode(
                stage: .init(rawValue: 3)!
            )
        }
    }

    public var bytecodeCompute: Godot.PackedByteArray {
        get {
            __getStageBytecode(
                stage: .init(rawValue: 4)!
            )
        }
    }

    public var compileErrorVertex: Godot.GodotString {
        get {
            __getStageCompileError(
                stage: .init(rawValue: 0)!
            )
        }
    }

    public var compileErrorFragment: Godot.GodotString {
        get {
            __getStageCompileError(
                stage: .init(rawValue: 1)!
            )
        }
    }

    public var compileErrorTesselationControl: Godot.GodotString {
        get {
            __getStageCompileError(
                stage: .init(rawValue: 2)!
            )
        }
    }

    public var compileErrorTesselationEvaluation: Godot.GodotString {
        get {
            __getStageCompileError(
                stage: .init(rawValue: 3)!
            )
        }
    }

    public var compileErrorCompute: Godot.GodotString {
        get {
            __getStageCompileError(
                stage: .init(rawValue: 4)!
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }