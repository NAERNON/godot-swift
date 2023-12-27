//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class RDPipelineRasterizationState: RefCounted {
    private static var __method_binding_set_enable_depth_clamp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_depth_clamp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEnableDepthClamp(pMember: Bool) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_depth_clamp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_enable_depth_clamp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_depth_clamp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getEnableDepthClamp() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_depth_clamp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_discard_primitives: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_discard_primitives").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDiscardPrimitives(pMember: Bool) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_discard_primitives,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_discard_primitives: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_discard_primitives").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getDiscardPrimitives() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_discard_primitives,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_wireframe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_wireframe").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setWireframe(pMember: Bool) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_wireframe,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_wireframe: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_wireframe").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getWireframe() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_wireframe,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_cull_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_cull_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2662586502)!
        }
        }
    }()
    private func __setCullMode(pMember: Godot.RenderingDevice.PolygonCullMode) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_cull_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_cull_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_cull_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2192484313)!
        }
        }
    }()
    private func __getCullMode() -> Godot.RenderingDevice.PolygonCullMode {
        Godot.RenderingDevice.PolygonCullMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_cull_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_front_face: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_front_face").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2637251213)!
        }
        }
    }()
    private func __setFrontFace(pMember: Godot.RenderingDevice.PolygonFrontFace) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_front_face,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_front_face: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_front_face").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 708793786)!
        }
        }
    }()
    private func __getFrontFace() -> Godot.RenderingDevice.PolygonFrontFace {
        Godot.RenderingDevice.PolygonFrontFace.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_front_face,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth_bias_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_bias_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDepthBiasEnabled(pMember: Bool) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_bias_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth_bias_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_bias_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getDepthBiasEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_bias_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_bias_constant_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDepthBiasConstantFactor(pMember: Double) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_bias_constant_factor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth_bias_constant_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_bias_constant_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDepthBiasConstantFactor() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_bias_constant_factor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth_bias_clamp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_bias_clamp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDepthBiasClamp(pMember: Double) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_bias_clamp,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth_bias_clamp: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_bias_clamp").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDepthBiasClamp() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_bias_clamp,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_depth_bias_slope_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDepthBiasSlopeFactor(pMember: Double) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_depth_bias_slope_factor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_depth_bias_slope_factor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_depth_bias_slope_factor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDepthBiasSlopeFactor() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_depth_bias_slope_factor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_line_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_line_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setLineWidth(pMember: Double) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_line_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_line_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_line_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getLineWidth() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_line_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_patch_control_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_patch_control_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setPatchControlPoints(pMember: UInt32) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_patch_control_points,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_patch_control_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_patch_control_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getPatchControlPoints() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_patch_control_points,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var enableDepthClamp: Bool {
        get {
            __getEnableDepthClamp()
        }
        set {
            __setEnableDepthClamp(
                pMember: newValue
            )
        }
    }

    public var discardPrimitives: Bool {
        get {
            __getDiscardPrimitives()
        }
        set {
            __setDiscardPrimitives(
                pMember: newValue
            )
        }
    }

    public var wireframe: Bool {
        get {
            __getWireframe()
        }
        set {
            __setWireframe(
                pMember: newValue
            )
        }
    }

    public var cullMode: Godot.RenderingDevice.PolygonCullMode {
        get {
            __getCullMode()
        }
        set {
            __setCullMode(
                pMember: newValue
            )
        }
    }

    public var frontFace: Godot.RenderingDevice.PolygonFrontFace {
        get {
            __getFrontFace()
        }
        set {
            __setFrontFace(
                pMember: newValue
            )
        }
    }

    public var depthBiasEnabled: Bool {
        get {
            __getDepthBiasEnabled()
        }
        set {
            __setDepthBiasEnabled(
                pMember: newValue
            )
        }
    }

    public var depthBiasConstantFactor: Double {
        get {
            __getDepthBiasConstantFactor()
        }
        set {
            __setDepthBiasConstantFactor(
                pMember: newValue
            )
        }
    }

    public var depthBiasClamp: Double {
        get {
            __getDepthBiasClamp()
        }
        set {
            __setDepthBiasClamp(
                pMember: newValue
            )
        }
    }

    public var depthBiasSlopeFactor: Double {
        get {
            __getDepthBiasSlopeFactor()
        }
        set {
            __setDepthBiasSlopeFactor(
                pMember: newValue
            )
        }
    }

    public var lineWidth: Double {
        get {
            __getLineWidth()
        }
        set {
            __setLineWidth(
                pMember: newValue
            )
        }
    }

    public var patchControlPoints: UInt32 {
        get {
            __getPatchControlPoints()
        }
        set {
            __setPatchControlPoints(
                pMember: newValue
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