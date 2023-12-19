//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class VisualShaderNode: Resource {
    public enum PortType: UInt32, GodotEnum {
        case scalar = 0
        case scalarInt = 1
        case scalarUint = 2
        case vector2D = 3
        case vector3D = 4
        case vector4d = 5
        case boolean = 6
        case transform = 7
        case sampler = 8
        case max = 9
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
            ("Sampler", 8),
            ("Max", 9),]
        }
    }

    private static var __method_binding_get_default_input_port: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_input_port").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1894493699)!
        }
        }
    }()
    public func defaultInputPort(type: Godot.VisualShaderNode.PortType) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_default_input_port,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_output_port_for_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_output_port_for_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setOutputPortForPreview(port: Int32) {
        port.withGodotUnsafeRawPointer { __ptr_port in
        withUnsafeArgumentPackPointer(__ptr_port) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_output_port_for_preview,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_output_port_for_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_output_port_for_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getOutputPortForPreview() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_output_port_for_preview,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_input_port_default_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_port_default_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 150923387)!
        }
        }
    }()
    public func setInputPortDefaultValue<Value1: VariantStorableIn, Value2: VariantStorableIn>(port: Int32, value: Value1, prevValue: Value2 = Variant()) {
        port.withGodotUnsafeRawPointer { __ptr_port in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        Godot.Variant.withStorageUnsafeRawPointer(to: prevValue) { __ptr_prevValue in
        withUnsafeArgumentPackPointer(__ptr_port, __ptr_value, __ptr_prevValue) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_input_port_default_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_input_port_default_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input_port_default_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4227898402)!
        }
        }
    }()
    public func inputPortDefaultValue(port: Int32) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        port.withGodotUnsafeRawPointer { __ptr_port in
        withUnsafeArgumentPackPointer(__ptr_port) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_input_port_default_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_remove_input_port_default_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_input_port_default_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeInputPortDefaultValue(port: Int32) {
        port.withGodotUnsafeRawPointer { __ptr_port in
        withUnsafeArgumentPackPointer(__ptr_port) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_input_port_default_value,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_default_input_values: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_default_input_values").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearDefaultInputValues() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear_default_input_values,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_default_input_values: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_input_values").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()
    private func __setDefaultInputValues<Value: VariantStorable>(_ values: Godot.GodotArray<Value>) {
        values.withGodotUnsafeRawPointer { __ptr_values in
        withUnsafeArgumentPackPointer(__ptr_values) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_default_input_values,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_default_input_values: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_input_values").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    private func __getDefaultInputValues() -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_default_input_values,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var outputPortForPreview: Int32 {
        get {
            __getOutputPortForPreview()
        }
        set {
            __setOutputPortForPreview(
                port: newValue
            )
        }
    }

    public var defaultInputValues: Godot.AnyGodotArray {
        get {
            __getDefaultInputValues()
        }
        set {
            __setDefaultInputValues(
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