//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class VisualShaderNodeClamp: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case float = 0
        case int = 1
        case uint = 2
        case vector2D = 3
        case vector3D = 4
        case vector4D = 5
        case max = 6

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Float", 0),
            ("Int", 1),
            ("Uint", 2),
            ("Vector2D", 3),
            ("Vector3D", 4),
            ("Vector4D", 5),
            ("Max", 6),]
        }
    }

    internal static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 405010749)!
        }
        }
    }()

    private func __setOpType(
        _ opType: Godot.VisualShaderNodeClamp.OpType
    ) {
        withTransferrableUnsafeRawPointer(to: opType) { __ptr_opType in
            withUnsafeArgumentPackPointer(__ptr_opType) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_op_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_op_type").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 233276050)!
        }
        }
    }()

    private func __getOpType() -> Godot.VisualShaderNodeClamp.OpType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_op_type,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    public var opType: Godot.VisualShaderNodeClamp.OpType {
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