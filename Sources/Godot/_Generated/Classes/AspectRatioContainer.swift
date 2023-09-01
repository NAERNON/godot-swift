//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class AspectRatioContainer: Container {
    public enum StretchMode: UInt32 {
        case widthControlsHeight = 0
        case heightControlsWidth = 1
        case fit = 2
        case cover = 3
    }
    public enum AlignmentMode: UInt32 {
        case begin = 0
        case center = 1
        case end = 2
    }

    private static var __method_binding_set_ratio: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_ratio").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setRatio(_ ratio: Double) {
        withUnsafePointer(to: ratio) { (__ptr_ratio) in
            withUnsafeArgumentPackPointer(__ptr_ratio) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_ratio,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_ratio: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_ratio").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getRatio() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_ratio,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_stretch_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_stretch_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1876743467)!
        }
        }
    }()
    private func __setStretchMode(_ stretchMode: Godot.AspectRatioContainer.StretchMode) {
        withUnsafePointer(to: stretchMode) { (__ptr_stretchMode) in
            withUnsafeArgumentPackPointer(__ptr_stretchMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_stretch_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_stretch_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_stretch_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3416449033)!
        }
        }
    }()
    private func __getStretchMode() -> Godot.AspectRatioContainer.StretchMode {
        var __temporary = Godot.AspectRatioContainer.StretchMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_stretch_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AspectRatioContainer.StretchMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_alignment_horizontal: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_alignment_horizontal").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2147829016)!
        }
        }
    }()
    private func __setAlignmentHorizontal(_ alignmentHorizontal: Godot.AspectRatioContainer.AlignmentMode) {
        withUnsafePointer(to: alignmentHorizontal) { (__ptr_alignmentHorizontal) in
            withUnsafeArgumentPackPointer(__ptr_alignmentHorizontal) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_alignment_horizontal,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_alignment_horizontal: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_alignment_horizontal").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3838875429)!
        }
        }
    }()
    private func __getAlignmentHorizontal() -> Godot.AspectRatioContainer.AlignmentMode {
        var __temporary = Godot.AspectRatioContainer.AlignmentMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_alignment_horizontal,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AspectRatioContainer.AlignmentMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_alignment_vertical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_alignment_vertical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2147829016)!
        }
        }
    }()
    private func __setAlignmentVertical(_ alignmentVertical: Godot.AspectRatioContainer.AlignmentMode) {
        withUnsafePointer(to: alignmentVertical) { (__ptr_alignmentVertical) in
            withUnsafeArgumentPackPointer(__ptr_alignmentVertical) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_alignment_vertical,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_alignment_vertical: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_alignment_vertical").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3838875429)!
        }
        }
    }()
    private func __getAlignmentVertical() -> Godot.AspectRatioContainer.AlignmentMode {
        var __temporary = Godot.AspectRatioContainer.AlignmentMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_alignment_vertical,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.AspectRatioContainer.AlignmentMode(rawValue: __temporary)!
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