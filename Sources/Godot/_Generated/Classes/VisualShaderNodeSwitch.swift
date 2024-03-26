//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class VisualShaderNodeSwitch: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case float = 0
        case int = 1
        case uint = 2
        case vector2D = 3
        case vector3D = 4
        case vector4d = 5
        case boolean = 6
        case transform = 7
        case max = 8

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Float", 0),
            ("Int", 1),
            ("Uint", 2),
            ("Vector2D", 3),
            ("Vector3D", 4),
            ("Vector4d", 5),
            ("Boolean", 6),
            ("Transform", 7),
            ("Max", 8),]
        }
    }

    internal static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 510471861)!
        }
        }
    }()

    private func __setOpType(
        _ type: Godot.VisualShaderNodeSwitch.OpType
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
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2517845071)!
        }
        }
    }()

    private func __getOpType() -> Godot.VisualShaderNodeSwitch.OpType {
        Godot.VisualShaderNodeSwitch.OpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_op_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var opType: Godot.VisualShaderNodeSwitch.OpType {
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