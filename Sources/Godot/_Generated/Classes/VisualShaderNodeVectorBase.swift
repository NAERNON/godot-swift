//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeVectorBase: VisualShaderNode {
    public enum OpType: UInt32, GodotEnum {
        case vector2D = 0
        case vector3D = 1
        case vector4d = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Vector2 D", 0),
            ("Vector3 D", 1),
            ("Vector4d", 2),
            ("Max", 3),]
        }
    }

    private static var __method_binding_set_op_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_op_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1692596998)!
        }
        }
    }()
    private func __setOpType(_ type: Godot.VisualShaderNodeVectorBase.OpType) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2568738462)!
        }
        }
    }()
    private func __getOpType() -> Godot.VisualShaderNodeVectorBase.OpType {
        Godot.VisualShaderNodeVectorBase.OpType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_op_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var opType: Godot.VisualShaderNodeVectorBase.OpType {
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