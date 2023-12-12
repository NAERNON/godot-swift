//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeFloatFunc: VisualShaderNode {
    public enum Function: UInt32, GodotEnum {
        case sin = 0
        case cos = 1
        case tan = 2
        case asin = 3
        case acos = 4
        case atan = 5
        case sinh = 6
        case cosh = 7
        case tanh = 8
        case log = 9
        case exp = 10
        case sqrt = 11
        case abs = 12
        case sign = 13
        case floor = 14
        case round = 15
        case ceil = 16
        case fract = 17
        case saturate = 18
        case negate = 19
        case acosh = 20
        case asinh = 21
        case atanh = 22
        case degrees = 23
        case exp2 = 24
        case inverseSqrt = 25
        case log2 = 26
        case radians = 27
        case reciprocal = 28
        case roundeven = 29
        case trunc = 30
        case oneminus = 31
        case max = 32
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sin", 0),
            ("Cos", 1),
            ("Tan", 2),
            ("Asin", 3),
            ("Acos", 4),
            ("Atan", 5),
            ("Sinh", 6),
            ("Cosh", 7),
            ("Tanh", 8),
            ("Log", 9),
            ("Exp", 10),
            ("Sqrt", 11),
            ("Abs", 12),
            ("Sign", 13),
            ("Floor", 14),
            ("Round", 15),
            ("Ceil", 16),
            ("Fract", 17),
            ("Saturate", 18),
            ("Negate", 19),
            ("Acosh", 20),
            ("Asinh", 21),
            ("Atanh", 22),
            ("Degrees", 23),
            ("Exp2", 24),
            ("Inverse Sqrt", 25),
            ("Log2", 26),
            ("Radians", 27),
            ("Reciprocal", 28),
            ("Roundeven", 29),
            ("Trunc", 30),
            ("Oneminus", 31),
            ("Max", 32),]
        }
    }

    private static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 536026177)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeFloatFunc.Function) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2033948868)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeFloatFunc.Function {
        Godot.VisualShaderNodeFloatFunc.Function.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var function: Godot.VisualShaderNodeFloatFunc.Function {
        get {
            __getFunction()
        }
        set {
            __setFunction(
                func: newValue
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