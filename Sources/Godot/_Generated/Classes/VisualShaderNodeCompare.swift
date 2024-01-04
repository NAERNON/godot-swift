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
            ("Vector2D", 3),
            ("Vector3D", 4),
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

    internal static var __method_binding_set_comparison_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_comparison_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 516558320)!
        }
        }
    }()
    private func __setComparisonType(_ type: Godot.VisualShaderNodeCompare.ComparisonType) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_comparison_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_comparison_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_comparison_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3495315961)!
        }
        }
    }()
    private func __getComparisonType() -> Godot.VisualShaderNodeCompare.ComparisonType {
        Godot.VisualShaderNodeCompare.ComparisonType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_comparison_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_function: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2370951349)!
        }
        }
    }()
    private func __setFunction(`func`: Godot.VisualShaderNodeCompare.Function) {
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
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4089164265)!
        }
        }
    }()
    private func __getFunction() -> Godot.VisualShaderNodeCompare.Function {
        Godot.VisualShaderNodeCompare.Function.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_function,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_condition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_condition").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 918742392)!
        }
        }
    }()
    private func __setCondition(_ condition: Godot.VisualShaderNodeCompare.Condition) {
        condition.withGodotUnsafeRawPointer { __ptr_condition in
        withUnsafeArgumentPackPointer(__ptr_condition) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_condition,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_condition: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_condition").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3281078941)!
        }
        }
    }()
    private func __getCondition() -> Godot.VisualShaderNodeCompare.Condition {
        Godot.VisualShaderNodeCompare.Condition.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_condition,
            __ptr_self,
            nil,
            __temporary
        )}}
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