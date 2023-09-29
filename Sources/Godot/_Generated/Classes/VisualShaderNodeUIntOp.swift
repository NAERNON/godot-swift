//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeUIntOp: VisualShaderNode {
    public enum Operator: UInt32 {
        case add = 0
        case sub = 1
        case mul = 2
        case div = 3
        case mod = 4
        case max = 5
        case min = 6
        case bitwiseAnd = 7
        case bitwiseOr = 8
        case bitwiseXor = 9
        case bitwiseLeftShift = 10
        case bitwiseRightShift = 11
        case enumSize = 12
    }

    private static var __method_binding_set_operator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_operator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3463048345)!
        }
        }
    }()
    private func __setOperator(op: Godot.VisualShaderNodeUIntOp.Operator) {
        withUnsafePointer(to: op) { (__ptr_op) in
            withUnsafeArgumentPackPointer(__ptr_op) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_operator,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_operator: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_operator").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 256631461)!
        }
        }
    }()
    private func __getOperator() -> Godot.VisualShaderNodeUIntOp.Operator {
        var __temporary = Godot.VisualShaderNodeUIntOp.Operator.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_operator,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeUIntOp.Operator(rawValue: __temporary)!
    }

    public var `operator`: Godot.VisualShaderNodeUIntOp.Operator {
        get {
            __getOperator()
        }
        set {
            __setOperator(
                op: newValue
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