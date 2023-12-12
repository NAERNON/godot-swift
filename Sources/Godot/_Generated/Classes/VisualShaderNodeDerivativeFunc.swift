//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeDerivativeFunc: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case scalar = 0
        case vector2D = 1
        case vector3D = 2
        case vector4d = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Scalar", 0),
            ("Vector2 D", 1),
            ("Vector3 D", 2),
            ("Vector4d", 3),
            ("Max", 4),]
        }
    }
    public enum Function: UInt32, GodotEnum {
        case sum = 0
        case x = 1
        case y = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sum", 0),
            ("X", 1),
            ("Y", 2),
            ("Max", 3),]
        }
    }
    public enum Precision: UInt32, GodotEnum {
        case none = 0
        case coarse = 1
        case fine = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Coarse", 1),
            ("Fine", 2),
            ("Max", 3),]
        }
    }

    private static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 377800221)!
        }
        }
    }()
    private func __setOpType(_ type: Godot.VisualShaderNodeDerivativeFunc.OpType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_op_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3997800514)!
        }
        }
    }()
    private func __getOpType() -> Godot.VisualShaderNodeDerivativeFunc.OpType {
        Godot.VisualShaderNodeDerivativeFunc.OpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_op_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1944704156)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeDerivativeFunc.Function) {
        `func`.withGodotUnsafeRawPointer { __ptr_func in
        withUnsafeArgumentPackPointer(__ptr_func) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_function,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2389093396)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeDerivativeFunc.Function {
        Godot.VisualShaderNodeDerivativeFunc.Function.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_precision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_precision").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 797270566)!
        }
        }
    }()
    private func __setPrecision(_ precision: Godot.VisualShaderNodeDerivativeFunc.Precision) {
        precision.withGodotUnsafeRawPointer { __ptr_precision in
        withUnsafeArgumentPackPointer(__ptr_precision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_precision,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_precision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_precision").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3822547323)!
        }
        }
    }()
    private func __getPrecision() -> Godot.VisualShaderNodeDerivativeFunc.Precision {
        Godot.VisualShaderNodeDerivativeFunc.Precision.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_precision,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var opType: Godot.VisualShaderNodeDerivativeFunc.OpType {
        get {
            __getOpType()
        }
        set {
            __setOpType(
                newValue
            )
        }
    }

    public var function: Godot.VisualShaderNodeDerivativeFunc.Function {
        get {
            __getFunction()
        }
        set {
            __setFunction(
                func: newValue
            )
        }
    }

    public var precision: Godot.VisualShaderNodeDerivativeFunc.Precision {
        get {
            __getPrecision()
        }
        set {
            __setPrecision(
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