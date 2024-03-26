//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class VisualShaderNodeUIntFunc: VisualShaderNode {
    public enum Function: UInt32, GodotEnum {
        case negate = 0
        case bitwiseNot = 1
        case max = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Negate", 0),
            ("Bitwise Not", 1),
            ("Max", 2),]
        }
    }

    internal static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2273148961)!
        }
        }
    }()

    private func __setFunction(
        `func`: Godot.VisualShaderNodeUIntFunc.Function
    ) {
        `func`.withGodotUnsafeRawPointer { __ptr_func in
        withUnsafeArgumentPackPointer(__ptr_func) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_function,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4187123296)!
        }
        }
    }()

    private func __getFunction() -> Godot.VisualShaderNodeUIntFunc.Function {
        Godot.VisualShaderNodeUIntFunc.Function.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var function: Godot.VisualShaderNodeUIntFunc.Function {
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