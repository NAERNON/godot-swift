//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class RDPipelineMultisampleState: RefCounted {
    internal static var __method_binding_set_sample_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sample_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3774171498)!
        }
        }
    }()

    private func __setSampleCount(
        pMember: Godot.RenderingDevice.TextureSamples
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sample_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_sample_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sample_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 407791724)!
        }
        }
    }()

    private func __getSampleCount() -> Godot.RenderingDevice.TextureSamples {
        Godot.RenderingDevice.TextureSamples.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sample_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_sample_shading: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_sample_shading").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableSampleShading(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_sample_shading,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_sample_shading: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_sample_shading").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableSampleShading() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_sample_shading,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_min_sample_shading: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_min_sample_shading").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setMinSampleShading(
        pMember: Double
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_min_sample_shading,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_min_sample_shading: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_min_sample_shading").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getMinSampleShading() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_min_sample_shading,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_alpha_to_coverage: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_alpha_to_coverage").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableAlphaToCoverage(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_alpha_to_coverage,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_alpha_to_coverage: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_alpha_to_coverage").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableAlphaToCoverage() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_alpha_to_coverage,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_enable_alpha_to_one: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_alpha_to_one").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()

    private func __setEnableAlphaToOne(
        pMember: Bool
    ) {
        pMember.withGodotUnsafeRawPointer { __ptr_pMember in
        withUnsafeArgumentPackPointer(__ptr_pMember) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_enable_alpha_to_one,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_enable_alpha_to_one: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_enable_alpha_to_one").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    private func __getEnableAlphaToOne() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_enable_alpha_to_one,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_sample_masks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sample_masks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 381264803)!
        }
        }
    }()

    private func __setSampleMasks(
        _ masks: Godot.GodotArray<Int>
    ) {
        masks.withGodotUnsafeRawPointer { __ptr_masks in
        withUnsafeArgumentPackPointer(__ptr_masks) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sample_masks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_sample_masks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sample_masks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    private func __getSampleMasks() -> Godot.GodotArray<Int> {
        Godot.GodotArray<Int>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sample_masks,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var sampleCount: Godot.RenderingDevice.TextureSamples {
        get {
            __getSampleCount()
        }
        set {
            __setSampleCount(
                pMember: newValue
            )
        }
    }

    public var enableSampleShading: Bool {
        get {
            __getEnableSampleShading()
        }
        set {
            __setEnableSampleShading(
                pMember: newValue
            )
        }
    }

    public var minSampleShading: Double {
        get {
            __getMinSampleShading()
        }
        set {
            __setMinSampleShading(
                pMember: newValue
            )
        }
    }

    public var enableAlphaToCoverage: Bool {
        get {
            __getEnableAlphaToCoverage()
        }
        set {
            __setEnableAlphaToCoverage(
                pMember: newValue
            )
        }
    }

    public var enableAlphaToOne: Bool {
        get {
            __getEnableAlphaToOne()
        }
        set {
            __setEnableAlphaToOne(
                pMember: newValue
            )
        }
    }

    public var sampleMasks: Godot.GodotArray<Int> {
        get {
            __getSampleMasks()
        }
        set {
            __setSampleMasks(
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