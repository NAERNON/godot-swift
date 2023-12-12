//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeIntOp: VisualShaderNode {
    public enum Operator: UInt32, GodotEnum {
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
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Add", 0),
            ("Sub", 1),
            ("Mul", 2),
            ("Div", 3),
            ("Mod", 4),
            ("Max", 5),
            ("Min", 6),
            ("Bitwise And", 7),
            ("Bitwise Or", 8),
            ("Bitwise Xor", 9),
            ("Bitwise Left Shift", 10),
            ("Bitwise Right Shift", 11),
            ("Enum Size", 12),]
        }
    }

    private static var __method_binding_set_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1677909323)!
        }
        }
    }()
    private func __setOperator(op: Godot.VisualShaderNodeIntOp.Operator) {
        op.withGodotUnsafeRawPointer { __ptr_op in
        withUnsafeArgumentPackPointer(__ptr_op) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_operator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1236987913)!
        }
        }
    }()
    private func __getOperator() -> Godot.VisualShaderNodeIntOp.Operator {
        Godot.VisualShaderNodeIntOp.Operator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_operator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var `operator`: Godot.VisualShaderNodeIntOp.Operator {
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