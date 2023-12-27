//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class AspectRatioContainer: Container {
    public enum StretchMode: UInt32, GodotEnum {
        case widthControlsHeight = 0
        case heightControlsWidth = 1
        case fit = 2
        case cover = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Width Controls Height", 0),
            ("Height Controls Width", 1),
            ("Fit", 2),
            ("Cover", 3),]
        }
    }
    public enum AlignmentMode: UInt32, GodotEnum {
        case begin = 0
        case center = 1
        case end = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Begin", 0),
            ("Center", 1),
            ("End", 2),]
        }
    }

    private static var __method_binding_set_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRatio(_ ratio: Double) {
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRatio() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ratio,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1876743467)!
        }
        }
    }()
    private func __setStretchMode(_ stretchMode: Godot.AspectRatioContainer.StretchMode) {
        stretchMode.withGodotUnsafeRawPointer { __ptr_stretchMode in
        withUnsafeArgumentPackPointer(__ptr_stretchMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_stretch_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3416449033)!
        }
        }
    }()
    private func __getStretchMode() -> Godot.AspectRatioContainer.StretchMode {
        Godot.AspectRatioContainer.StretchMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stretch_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alignment_horizontal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alignment_horizontal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2147829016)!
        }
        }
    }()
    private func __setAlignmentHorizontal(_ alignmentHorizontal: Godot.AspectRatioContainer.AlignmentMode) {
        alignmentHorizontal.withGodotUnsafeRawPointer { __ptr_alignmentHorizontal in
        withUnsafeArgumentPackPointer(__ptr_alignmentHorizontal) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_alignment_horizontal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alignment_horizontal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alignment_horizontal").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3838875429)!
        }
        }
    }()
    private func __getAlignmentHorizontal() -> Godot.AspectRatioContainer.AlignmentMode {
        Godot.AspectRatioContainer.AlignmentMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_alignment_horizontal,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_alignment_vertical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_alignment_vertical").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2147829016)!
        }
        }
    }()
    private func __setAlignmentVertical(_ alignmentVertical: Godot.AspectRatioContainer.AlignmentMode) {
        alignmentVertical.withGodotUnsafeRawPointer { __ptr_alignmentVertical in
        withUnsafeArgumentPackPointer(__ptr_alignmentVertical) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_alignment_vertical,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_alignment_vertical: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_alignment_vertical").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3838875429)!
        }
        }
    }()
    private func __getAlignmentVertical() -> Godot.AspectRatioContainer.AlignmentMode {
        Godot.AspectRatioContainer.AlignmentMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_alignment_vertical,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var ratio: Double {
        get {
            __getRatio()
        }
        set {
            __setRatio(
                newValue
            )
        }
    }

    public var stretchMode: Godot.AspectRatioContainer.StretchMode {
        get {
            __getStretchMode()
        }
        set {
            __setStretchMode(
                newValue
            )
        }
    }

    public var alignmentHorizontal: Godot.AspectRatioContainer.AlignmentMode {
        get {
            __getAlignmentHorizontal()
        }
        set {
            __setAlignmentHorizontal(
                newValue
            )
        }
    }

    public var alignmentVertical: Godot.AspectRatioContainer.AlignmentMode {
        get {
            __getAlignmentVertical()
        }
        set {
            __setAlignmentVertical(
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