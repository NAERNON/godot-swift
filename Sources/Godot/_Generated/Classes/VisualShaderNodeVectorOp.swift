//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeVectorOp: VisualShaderNodeVectorBase {
    public enum Operator: UInt32, GodotEnum {
        case add = 0
        case sub = 1
        case mul = 2
        case div = 3
        case mod = 4
        case pow = 5
        case max = 6
        case min = 7
        case cross = 8
        case atan2 = 9
        case reflect = 10
        case step = 11
        case enumSize = 12
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Add", 0),
            ("Sub", 1),
            ("Mul", 2),
            ("Div", 3),
            ("Mod", 4),
            ("Pow", 5),
            ("Max", 6),
            ("Min", 7),
            ("Cross", 8),
            ("Atan2", 9),
            ("Reflect", 10),
            ("Step", 11),
            ("Enum Size", 12),]
        }
    }

    private static var __method_binding_set_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3371507302)!
        }
        }
    }()
    private func __setOperator(op: Godot.VisualShaderNodeVectorOp.Operator) {
        op.withGodotUnsafeRawPointer { __ptr_op in
        withUnsafeArgumentPackPointer(__ptr_op) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_operator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 11793929)!
        }
        }
    }()
    private func __getOperator() -> Godot.VisualShaderNodeVectorOp.Operator {
        Godot.VisualShaderNodeVectorOp.Operator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_operator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var `operator`: Godot.VisualShaderNodeVectorOp.Operator {
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