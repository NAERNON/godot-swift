//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNodeCompare: VisualShaderNode {
    public enum ComparisonType: UInt32, GodotEnum {
        case scalar = 0
        case scalarInt = 1
        case scalarUint = 2
        case vector2D = 3
        case vector3D = 4
        case vector4d = 5
        case boolean = 6
        case transform = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Scalar", 0),
            ("Scalar Int", 1),
            ("Scalar Uint", 2),
            ("Vector2 D", 3),
            ("Vector3 D", 4),
            ("Vector4d", 5),
            ("Boolean", 6),
            ("Transform", 7),
            ("Max", 8),]
        }
    }
    public enum Function: UInt32, GodotEnum {
        case equal = 0
        case notEqual = 1
        case greaterThan = 2
        case greaterThanEqual = 3
        case lessThan = 4
        case lessThanEqual = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Equal", 0),
            ("Not Equal", 1),
            ("Greater Than", 2),
            ("Greater Than Equal", 3),
            ("Less Than", 4),
            ("Less Than Equal", 5),
            ("Max", 6),]
        }
    }
    public enum Condition: UInt32, GodotEnum {
        case all = 0
        case any = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("All", 0),
            ("Any", 1),
            ("Max", 2),]
        }
    }

    private static var __method_binding_set_comparison_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_comparison_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 516558320)!
        }
        }
    }()
    private func __setComparisonType(_ type: Godot.VisualShaderNodeCompare.ComparisonType) {
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_comparison_type,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_comparison_type: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_comparison_type").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3495315961)!
        }
        }
    }()
    private func __getComparisonType() -> Godot.VisualShaderNodeCompare.ComparisonType {
        var __temporary = Godot.VisualShaderNodeCompare.ComparisonType.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_comparison_type,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeCompare.ComparisonType(rawValue: __temporary)!
    }

    private static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2370951349)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeCompare.Function) {
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
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4089164265)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeCompare.Function {
        var __temporary = Godot.VisualShaderNodeCompare.Function.RawValue(0)
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
        return Godot.VisualShaderNodeCompare.Function(rawValue: __temporary)!
    }

    private static var __method_binding_set_condition: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_condition").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 918742392)!
        }
        }
    }()
    private func __setCondition(_ condition: Godot.VisualShaderNodeCompare.Condition) {
        withUnsafePointer(to: condition) { (__ptr_condition) in
            withUnsafeArgumentPackPointer(__ptr_condition) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_condition,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_condition: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_condition").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3281078941)!
        }
        }
    }()
    private func __getCondition() -> Godot.VisualShaderNodeCompare.Condition {
        var __temporary = Godot.VisualShaderNodeCompare.Condition.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_condition,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.VisualShaderNodeCompare.Condition(rawValue: __temporary)!
    }

    public var comparisonType: Godot.VisualShaderNodeCompare.ComparisonType {
        get {
            __getComparisonType()
        }
        set {
            __setComparisonType(
                newValue
            )
        }
    }

    public var function: Godot.VisualShaderNodeCompare.Function {
        get {
            __getFunction()
        }
        set {
            __setFunction(
                func: newValue
            )
        }
    }

    public var condition: Godot.VisualShaderNodeCompare.Condition {
        get {
            __getCondition()
        }
        set {
            __setCondition(
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