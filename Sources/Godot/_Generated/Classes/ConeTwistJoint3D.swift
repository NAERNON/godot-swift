//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ConeTwistJoint3D: Joint3D {
    public enum Param: UInt32, GodotEnum {
        case swingSpan = 0
        case twistSpan = 1
        case bias = 2
        case softness = 3
        case relaxation = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Swing Span", 0),
            ("Twist Span", 1),
            ("Bias", 2),
            ("Softness", 3),
            ("Relaxation", 4),
            ("Max", 5),]
        }
    }

    private static var __method_binding_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1062470226)!
        }
        }
    }()
    public func setParam(_ param: Godot.ConeTwistJoint3D.Param, value: Double) {
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2928790850)!
        }
        }
    }()
    private func __getParam(_ param: Godot.ConeTwistJoint3D.Param) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        param.withGodotUnsafeRawPointer { __ptr_param in
        withUnsafeArgumentPackPointer(__ptr_param) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var swingSpan: Double {
        get {
            __getParam(
                .init(rawValue: 0)!
            )
        }
    }

    public var twistSpan: Double {
        get {
            __getParam(
                .init(rawValue: 1)!
            )
        }
    }

    public var bias: Double {
        get {
            __getParam(
                .init(rawValue: 2)!
            )
        }
    }

    public var softness: Double {
        get {
            __getParam(
                .init(rawValue: 3)!
            )
        }
    }

    public var relaxation: Double {
        get {
            __getParam(
                .init(rawValue: 4)!
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