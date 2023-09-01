//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDShaderSource: RefCounted {
    private static var __method_binding_set_stage_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stage_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 620821314)!
        }
        }
    }()
    public func setStageSource(stage: Godot.RenderingDevice.ShaderStage, source: Godot.GodotString) {
        withUnsafePointer(to: stage) { (__ptr_stage) in
            source.withUnsafeRawPointer { (__ptr_source) in
                withUnsafeArgumentPackPointer(__ptr_stage, __ptr_source) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_stage_source,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_stage_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_stage_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3354920045)!
        }
        }
    }()
    private func __getStageSource(stage: Godot.RenderingDevice.ShaderStage) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: stage) { (__ptr_stage) in
            withUnsafeArgumentPackPointer(__ptr_stage) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_stage_source,
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

    private static var __method_binding_set_language: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_language").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3422186742)!
        }
        }
    }()
    private func __setLanguage(_ language: Godot.RenderingDevice.ShaderLanguage) {
        withUnsafePointer(to: language) { (__ptr_language) in
            withUnsafeArgumentPackPointer(__ptr_language) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_language,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_language: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_language").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1063538261)!
        }
        }
    }()
    private func __getLanguage() -> Godot.RenderingDevice.ShaderLanguage {
        var __temporary = Godot.RenderingDevice.ShaderLanguage.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_language,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.ShaderLanguage(rawValue: __temporary)!
    }

    public var sourceVertex: Godot.GodotString {
        get {
            __getStageSource(
                stage: .init(rawValue: 0)!
            )
        }
    }

    public var sourceFragment: Godot.GodotString {
        get {
            __getStageSource(
                stage: .init(rawValue: 1)!
            )
        }
    }

    public var sourceTesselationControl: Godot.GodotString {
        get {
            __getStageSource(
                stage: .init(rawValue: 2)!
            )
        }
    }

    public var sourceTesselationEvaluation: Godot.GodotString {
        get {
            __getStageSource(
                stage: .init(rawValue: 3)!
            )
        }
    }

    public var sourceCompute: Godot.GodotString {
        get {
            __getStageSource(
                stage: .init(rawValue: 4)!
            )
        }
    }

    public var language: Godot.RenderingDevice.ShaderLanguage {
        get {
            __getLanguage()
        }
        set {
            __setLanguage(
                newValue
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