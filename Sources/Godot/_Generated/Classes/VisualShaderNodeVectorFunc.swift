//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeVectorFunc: VisualShaderNodeVectorBase {
    public enum Function: UInt32, GodotEnum {
        case normalize = 0
        case saturate = 1
        case negate = 2
        case reciprocal = 3
        case abs = 4
        case acos = 5
        case acosh = 6
        case asin = 7
        case asinh = 8
        case atan = 9
        case atanh = 10
        case ceil = 11
        case cos = 12
        case cosh = 13
        case degrees = 14
        case exp = 15
        case exp2 = 16
        case floor = 17
        case fract = 18
        case inverseSqrt = 19
        case log = 20
        case log2 = 21
        case radians = 22
        case round = 23
        case roundeven = 24
        case sign = 25
        case sin = 26
        case sinh = 27
        case sqrt = 28
        case tan = 29
        case tanh = 30
        case trunc = 31
        case oneminus = 32
        case max = 33
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Normalize", 0),
            ("Saturate", 1),
            ("Negate", 2),
            ("Reciprocal", 3),
            ("Abs", 4),
            ("Acos", 5),
            ("Acosh", 6),
            ("Asin", 7),
            ("Asinh", 8),
            ("Atan", 9),
            ("Atanh", 10),
            ("Ceil", 11),
            ("Cos", 12),
            ("Cosh", 13),
            ("Degrees", 14),
            ("Exp", 15),
            ("Exp2", 16),
            ("Floor", 17),
            ("Fract", 18),
            ("Inverse Sqrt", 19),
            ("Log", 20),
            ("Log2", 21),
            ("Radians", 22),
            ("Round", 23),
            ("Roundeven", 24),
            ("Sign", 25),
            ("Sin", 26),
            ("Sinh", 27),
            ("Sqrt", 28),
            ("Tan", 29),
            ("Tanh", 30),
            ("Trunc", 31),
            ("Oneminus", 32),
            ("Max", 33),]
        }
    }

    private static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 629964457)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeVectorFunc.Function) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4047776843)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeVectorFunc.Function {
        Godot.VisualShaderNodeVectorFunc.Function.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var function: Godot.VisualShaderNodeVectorFunc.Function {
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