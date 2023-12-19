//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeStep: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case scalar = 0
        case vector2D = 1
        case vector2DScalar = 2
        case vector3D = 3
        case vector3DScalar = 4
        case vector4d = 5
        case vector4dScalar = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Scalar", 0),
            ("Vector2D", 1),
            ("Vector2D Scalar", 2),
            ("Vector3D", 3),
            ("Vector3D Scalar", 4),
            ("Vector4d", 5),
            ("Vector4d Scalar", 6),
            ("Max", 7),]
        }
    }

    private static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 715172489)!
        }
        }
    }()
    private func __setOpType(_ opType: Godot.VisualShaderNodeStep.OpType) {
        opType.withGodotUnsafeRawPointer { __ptr_opType in
        withUnsafeArgumentPackPointer(__ptr_opType) { __accessPtr in
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3274022781)!
        }
        }
    }()
    private func __getOpType() -> Godot.VisualShaderNodeStep.OpType {
        Godot.VisualShaderNodeStep.OpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_op_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var opType: Godot.VisualShaderNodeStep.OpType {
        get {
            __getOpType()
        }
        set {
            __setOpType(
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