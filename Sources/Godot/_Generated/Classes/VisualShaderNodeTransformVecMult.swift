//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeTransformVecMult: VisualShaderNode {
    public enum Operator: UInt32, GodotEnum {
        case axb = 0
        case bxa = 1
        case op3x3Axb = 2
        case op3x3Bxa = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Axb", 0),
            ("Bxa", 1),
            ("Op3x3 Axb", 2),
            ("Op3x3 Bxa", 3),
            ("Max", 4),]
        }
    }

    private static var __method_binding_set_operator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_operator").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1785665912)!
        }
        }
    }()
    private func __setOperator(op: Godot.VisualShaderNodeTransformVecMult.Operator) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1622088722)!
        }
        }
    }()
    private func __getOperator() -> Godot.VisualShaderNodeTransformVecMult.Operator {
        Godot.VisualShaderNodeTransformVecMult.Operator.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_operator,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var `operator`: Godot.VisualShaderNodeTransformVecMult.Operator {
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