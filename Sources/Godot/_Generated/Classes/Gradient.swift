//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Gradient: Resource {
    public enum InterpolationMode: UInt32, GodotEnum {
        case linear = 0
        case constant = 1
        case cubic = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear", 0),
            ("Constant", 1),
            ("Cubic", 2),]
        }
    }
    public enum ColorSpace: UInt32, GodotEnum {
        case srgb = 0
        case linearSrgb = 1
        case oklab = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Srgb", 0),
            ("Linear Srgb", 1),
            ("Oklab", 2),]
        }
    }

    private static var __method_binding_add_point: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3629403827)!
        }
        }
    }()
    public func addPoint(offset: Double, color: Godot.Color) {
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_offset, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_add_point,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_remove_point: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_point").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removePoint(_ point: Int32) {
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafeArgumentPackPointer(__ptr_point) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_remove_point,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_set_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1602489585)!
        }
        }
    }()
    public func setOffset(point: Int32, offset: Double) {
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafePointer(to: offset) { (__ptr_offset) in
                withUnsafeArgumentPackPointer(__ptr_point, __ptr_offset) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_offset,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4025615559)!
        }
        }
    }()
    public func offset(point: Int32) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafeArgumentPackPointer(__ptr_point) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_offset,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_reverse: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reverse").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func reverse() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_reverse,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func setColor(point: Int32, color: Godot.Color) {
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_point, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_color,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2624840992)!
        }
        }
    }()
    public func color(point: Int32) -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafeArgumentPackPointer(__ptr_point) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_color,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sample: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sample").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1250405064)!
        }
        }
    }()
    public func sample(offset: Double) -> Godot.Color {
        var __temporary = Godot.Color()
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_sample,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_point_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_point_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func pointCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_point_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_offsets: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_offsets").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2899603908)!
        }
        }
    }()
    private func __setOffsets(_ offsets: Godot.PackedFloat32Array) {
        offsets.withUnsafeRawPointer { (__ptr_offsets) in
            withUnsafeArgumentPackPointer(__ptr_offsets) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_offsets,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_offsets: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offsets").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 675695659)!
        }
        }
    }()
    private func __getOffsets() -> Godot.PackedFloat32Array {
        let __temporary = Godot.PackedFloat32Array()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_offsets,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_colors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_colors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3546319833)!
        }
        }
    }()
    private func __setColors(_ colors: Godot.PackedColorArray) {
        colors.withUnsafeRawPointer { (__ptr_colors) in
            withUnsafeArgumentPackPointer(__ptr_colors) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_colors,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_colors: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_colors").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1392750486)!
        }
        }
    }()
    private func __getColors() -> Godot.PackedColorArray {
        let __temporary = Godot.PackedColorArray()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_colors,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_interpolation_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interpolation_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1971444490)!
        }
        }
    }()
    private func __setInterpolationMode(_ interpolationMode: Godot.Gradient.InterpolationMode) {
        withUnsafePointer(to: interpolationMode) { (__ptr_interpolationMode) in
            withUnsafeArgumentPackPointer(__ptr_interpolationMode) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_interpolation_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_interpolation_mode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interpolation_mode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3674172981)!
        }
        }
    }()
    private func __getInterpolationMode() -> Godot.Gradient.InterpolationMode {
        var __temporary = Godot.Gradient.InterpolationMode.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_interpolation_mode,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Gradient.InterpolationMode(rawValue: __temporary)!
    }

    private static var __method_binding_set_interpolation_color_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_interpolation_color_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3685995981)!
        }
        }
    }()
    private func __setInterpolationColorSpace(_ interpolationColorSpace: Godot.Gradient.ColorSpace) {
        withUnsafePointer(to: interpolationColorSpace) { (__ptr_interpolationColorSpace) in
            withUnsafeArgumentPackPointer(__ptr_interpolationColorSpace) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_interpolation_color_space,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_interpolation_color_space: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interpolation_color_space").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1538296000)!
        }
        }
    }()
    private func __getInterpolationColorSpace() -> Godot.Gradient.ColorSpace {
        var __temporary = Godot.Gradient.ColorSpace.RawValue(0)
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_interpolation_color_space,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Gradient.ColorSpace(rawValue: __temporary)!
    }

    public var interpolationMode: Godot.Gradient.InterpolationMode {
        get {
            __getInterpolationMode()
        }
        set {
            __setInterpolationMode(
                newValue
            )
        }
    }

    public var interpolationColorSpace: Godot.Gradient.ColorSpace {
        get {
            __getInterpolationColorSpace()
        }
        set {
            __setInterpolationColorSpace(
                newValue
            )
        }
    }

    public var offsets: Godot.PackedFloat32Array {
        get {
            __getOffsets()
        }
        set {
            __setOffsets(
                newValue
            )
        }
    }

    public var colors: Godot.PackedColorArray {
        get {
            __getColors()
        }
        set {
            __setColors(
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