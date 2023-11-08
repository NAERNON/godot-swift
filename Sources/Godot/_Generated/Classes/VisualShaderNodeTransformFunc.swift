//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeTransformFunc: VisualShaderNode {
    public enum Function: UInt32, GodotEnum {
        case inverse = 0
        case transpose = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Inverse", 0),
            ("Transpose", 1),
            ("Max", 2),]
        }
    }

    private static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2900990409)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeTransformFunc.Function) {
        withUnsafePointer(to: `func`) { (__ptr_func) in
            withUnsafeArgumentPackPointer(__ptr_func) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_function,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_function: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_function").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2839926569)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeTransformFunc.Function {
        var __temporary = Godot.VisualShaderNodeTransformFunc.Function.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_function,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeTransformFunc.Function(rawValue: __temporary)!
    }

    public var function: Godot.VisualShaderNodeTransformFunc.Function {
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