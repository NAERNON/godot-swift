//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class GLTFLight: Resource {
    private static var __method_binding_from_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3907677874)!
        }
        }
    }()
    static public func fromNode(lightNode: Godot.Light3D?) -> Godot.GLTFLight? {
        Godot.GLTFLight?.fromMutatingGodotUnsafePointer { __temporary in
        lightNode.withGodotUnsafeRawPointer { __ptr_lightNode in
        withUnsafePointer(to: __ptr_lightNode) { _ptr___ptr_lightNode in
        withUnsafeArgumentPackPointer(_ptr___ptr_lightNode) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_from_node,
            nil,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_to_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2040811672)!
        }
        }
    }()
    public func toNode() -> Godot.Light3D? {
        Godot.Light3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_node,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_from_dictionary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "from_dictionary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4057087208)!
        }
        }
    }()
    static public func fromDictionary<Value1: VariantStorable, Value2: VariantStorable>(_ dictionary: Godot.GodotDictionary<Value1, Value2>) -> Godot.GLTFLight? {
        Godot.GLTFLight?.fromMutatingGodotUnsafePointer { __temporary in
        dictionary.withGodotUnsafeRawPointer { __ptr_dictionary in
        withUnsafeArgumentPackPointer(__ptr_dictionary) { __accessPtr in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_from_dictionary,
            nil,
            __accessPtr,
            __temporary
        )}}}
    }

    private static var __method_binding_to_dictionary: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "to_dictionary").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func toDictionary() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_to_dictionary,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3200896285)!
        }
        }
    }()
    private func __getColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_intensity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_intensity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    private func __getIntensity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_intensity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_intensity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_intensity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setIntensity(_ intensity: Double) {
        intensity.withGodotUnsafeRawPointer { __ptr_intensity in
        withUnsafeArgumentPackPointer(__ptr_intensity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_intensity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_light_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_light_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2841200299)!
        }
        }
    }()
    private func __getLightType() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_light_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_light_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_light_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLightType(_ lightType: Godot.GodotString) {
        lightType.withGodotUnsafeRawPointer { __ptr_lightType in
        withUnsafeArgumentPackPointer(__ptr_lightType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_light_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    private func __getRange() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_range,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRange(_ range: Double) {
        range.withGodotUnsafeRawPointer { __ptr_range in
        withUnsafeArgumentPackPointer(__ptr_range) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_inner_cone_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_inner_cone_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    private func __getInnerConeAngle() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_inner_cone_angle,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_inner_cone_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_inner_cone_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setInnerConeAngle(_ innerConeAngle: Double) {
        innerConeAngle.withGodotUnsafeRawPointer { __ptr_innerConeAngle in
        withUnsafeArgumentPackPointer(__ptr_innerConeAngle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_inner_cone_angle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_outer_cone_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_outer_cone_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 191475506)!
        }
        }
    }()
    private func __getOuterConeAngle() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_outer_cone_angle,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_outer_cone_angle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_outer_cone_angle").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setOuterConeAngle(_ outerConeAngle: Double) {
        outerConeAngle.withGodotUnsafeRawPointer { __ptr_outerConeAngle in
        withUnsafeArgumentPackPointer(__ptr_outerConeAngle) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_outer_cone_angle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var color: Godot.Color {
        get {
            __getColor()
        }
        set {
            __setColor(
                newValue
            )
        }
    }

    public var intensity: Double {
        get {
            __getIntensity()
        }
        set {
            __setIntensity(
                newValue
            )
        }
    }

    public var lightType: Godot.GodotString {
        get {
            __getLightType()
        }
        set {
            __setLightType(
                newValue
            )
        }
    }

    public var range: Double {
        get {
            __getRange()
        }
        set {
            __setRange(
                newValue
            )
        }
    }

    public var innerConeAngle: Double {
        get {
            __getInnerConeAngle()
        }
        set {
            __setInnerConeAngle(
                newValue
            )
        }
    }

    public var outerConeAngle: Double {
        get {
            __getOuterConeAngle()
        }
        set {
            __setOuterConeAngle(
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