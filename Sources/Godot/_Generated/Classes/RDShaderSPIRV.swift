//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDShaderSPIRV: Resource {
    private static var __method_binding_set_stage_bytecode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stage_bytecode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3514097977)!
        }
        }
    }()
    public func setStageBytecode(stage: Godot.RenderingDevice.ShaderStage, bytecode: Godot.PackedByteArray) {
        withUnsafePointer(to: stage) { (__ptr_stage) in
            bytecode.withUnsafeRawPointer { (__ptr_bytecode) in
                withUnsafeArgumentPackPointer(__ptr_stage, __ptr_bytecode) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_stage_bytecode,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_stage_bytecode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_stage_bytecode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3816765404)!
        }
        }
    }()
    private func __getStageBytecode(stage: Godot.RenderingDevice.ShaderStage) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        withUnsafePointer(to: stage) { (__ptr_stage) in
            withUnsafeArgumentPackPointer(__ptr_stage) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_stage_bytecode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_set_stage_compile_error: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stage_compile_error").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 620821314)!
        }
        }
    }()
    public func setStageCompileError(stage: Godot.RenderingDevice.ShaderStage, compileError: Godot.GodotString) {
        withUnsafePointer(to: stage) { (__ptr_stage) in
            compileError.withUnsafeRawPointer { (__ptr_compileError) in
                withUnsafeArgumentPackPointer(__ptr_stage, __ptr_compileError) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_stage_compile_error,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_stage_compile_error: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_stage_compile_error").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3354920045)!
        }
        }
    }()
    private func __getStageCompileError(stage: Godot.RenderingDevice.ShaderStage) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: stage) { (__ptr_stage) in
            withUnsafeArgumentPackPointer(__ptr_stage) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_stage_compile_error,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
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