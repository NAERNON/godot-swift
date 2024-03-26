//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class VisualShaderNodeParticleRandomness: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case scalar = 0
        case vector2D = 1
        case vector3D = 2
        case vector4d = 3
        case max = 4

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Scalar", 0),
            ("Vector2D", 1),
            ("Vector3D", 2),
            ("Vector4d", 3),
            ("Max", 4),]
        }
    }

    internal static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2060089061)!
        }
        }
    }()

    private func __setOpType(
        _ type: Godot.VisualShaderNodeParticleRandomness.OpType
    ) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_op_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3597061078)!
        }
        }
    }()

    private func __getOpType() -> Godot.VisualShaderNodeParticleRandomness.OpType {
        Godot.VisualShaderNodeParticleRandomness.OpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_op_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var opType: Godot.VisualShaderNodeParticleRandomness.OpType {
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