//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Theme: Resource {
    public enum DataType: UInt32, GodotEnum {
        case color = 0
        case constant = 1
        case font = 2
        case fontSize = 3
        case icon = 4
        case stylebox = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Color", 0),
            ("Constant", 1),
            ("Font", 2),
            ("Font Size", 3),
            ("Icon", 4),
            ("Stylebox", 5),
            ("Max", 6),]
        }
    }

    private static var __method_binding_set_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2188371082)!
        }
        }
    }()
    public func setIcon(name: Godot.GodotStringName, themeType: Godot.GodotStringName, texture: Godot.Texture2D?) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 934555193)!
        }
        }
    }()
    public func icon(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasIcon(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_icon,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameIcon(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_icon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_icon").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearIcon(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_icon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_icon_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_icon_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func iconList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_icon_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_icon_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_icon_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func iconTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_icon_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2075907568)!
        }
        }
    }()
    public func setStylebox(name: Godot.GodotStringName, themeType: Godot.GodotStringName, texture: Godot.StyleBox?) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, _ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_stylebox,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3405608165)!
        }
        }
    }()
    public func stylebox(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Godot.StyleBox? {
        Godot.StyleBox?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stylebox,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasStylebox(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_stylebox,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameStylebox(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_stylebox,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_stylebox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_stylebox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearStylebox(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_stylebox,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_stylebox_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stylebox_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func styleboxList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stylebox_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_stylebox_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_stylebox_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func styleboxTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_stylebox_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 177292320)!
        }
        }
    }()
    public func setFont(name: Godot.GodotStringName, themeType: Godot.GodotStringName, font: Godot.Font?) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, _ptr___ptr_font) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3445063586)!
        }
        }
    }()
    public func font(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Godot.Font? {
        Godot.Font?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasFont(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_font,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameFont(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_font,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearFont(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_font,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_font_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func fontList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_font_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func fontTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 281601298)!
        }
        }
    }()
    public func setFontSize(name: Godot.GodotStringName, themeType: Godot.GodotStringName, fontSize: Int32) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, __ptr_fontSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_font_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2419549490)!
        }
        }
    }()
    public func fontSize(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasFontSize(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_font_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameFontSize(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_font_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearFontSize(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_font_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_font_size_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_size_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func fontSizeList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font_size_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_font_size_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_font_size_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func fontSizeTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_font_size_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4111215154)!
        }
        }
    }()
    public func setColor(name: Godot.GodotStringName, themeType: Godot.GodotStringName, color: Godot.Color) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2015923404)!
        }
        }
    }()
    public func color(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasColor(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameColor(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearColor(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_color_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func colorList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_color_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func colorTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 281601298)!
        }
        }
    }()
    public func setConstant(name: Godot.GodotStringName, themeType: Godot.GodotStringName, constant: Int32) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        constant.withGodotUnsafeRawPointer { __ptr_constant in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType, __ptr_constant) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_constant,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2419549490)!
        }
        }
    }()
    public func constant(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_has_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func hasConstant(name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_constant,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_rename_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 642128662)!
        }
        }
    }()
    public func renameConstant(oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_constant,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_clear_constant: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_constant").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func clearConstant(name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_constant,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_constant_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4291131558)!
        }
        }
    }()
    public func constantList(themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_constant_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_constant_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func constantTypeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_constant_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_base_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_base_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setDefaultBaseScale(_ baseScale: Double) {
        baseScale.withGodotUnsafeRawPointer { __ptr_baseScale in
        withUnsafeArgumentPackPointer(__ptr_baseScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_base_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_default_base_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_base_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getDefaultBaseScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_base_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_default_base_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_default_base_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasDefaultBaseScale() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_default_base_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1262170328)!
        }
        }
    }()
    private func __setDefaultFont(_ font: Godot.Font?) {
        font.withGodotUnsafeRawPointer { __ptr_font in
        withUnsafePointer(to: __ptr_font) { _ptr___ptr_font in
        withUnsafeArgumentPackPointer(_ptr___ptr_font) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_font,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_default_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3229501585)!
        }
        }
    }()
    private func __getDefaultFont() -> Godot.Font? {
        Godot.Font?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_font,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_default_font: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_default_font").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasDefaultFont() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_default_font,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setDefaultFontSize(_ fontSize: Int32) {
        fontSize.withGodotUnsafeRawPointer { __ptr_fontSize in
        withUnsafeArgumentPackPointer(__ptr_fontSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_font_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_default_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getDefaultFontSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_font_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_has_default_font_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_default_font_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasDefaultFontSize() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_default_font_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_theme_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_theme_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2492983623)!
        }
        }
    }()
    public func setThemeItem<Value: VariantStorableIn>(dataType: Godot.Theme.DataType, name: Godot.GodotStringName, themeType: Godot.GodotStringName, value: Value) {
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_name, __ptr_themeType, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_theme_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_get_theme_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2191024021)!
        }
        }
    }()
    public func themeItem(dataType: Godot.Theme.DataType, name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_has_theme_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_theme_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1739311056)!
        }
        }
    }()
    public func hasThemeItem(dataType: Godot.Theme.DataType, name: Godot.GodotStringName, themeType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_theme_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_rename_theme_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_theme_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3900867553)!
        }
        }
    }()
    public func renameThemeItem(dataType: Godot.Theme.DataType, oldName: Godot.GodotStringName, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        oldName.withGodotUnsafeRawPointer { __ptr_oldName in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_oldName, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_theme_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_clear_theme_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_theme_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2965505587)!
        }
        }
    }()
    public func clearThemeItem(dataType: Godot.Theme.DataType, name: Godot.GodotStringName, themeType: Godot.GodotStringName) {
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        name.withGodotUnsafeRawPointer { __ptr_name in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_name, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_theme_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_theme_item_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_item_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3726716710)!
        }
        }
    }()
    public func themeItemList(dataType: Godot.Theme.DataType, themeType: Godot.GodotString) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_dataType, __ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_item_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_theme_item_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_theme_item_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1316004935)!
        }
        }
    }()
    public func themeItemTypeList(dataType: Godot.Theme.DataType) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        dataType.withGodotUnsafeRawPointer { __ptr_dataType in
        withUnsafeArgumentPackPointer(__ptr_dataType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_theme_item_type_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_type_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()
    public func setTypeVariation(themeType: Godot.GodotStringName, baseType: Godot.GodotStringName) {
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        baseType.withGodotUnsafeRawPointer { __ptr_baseType in
        withUnsafeArgumentPackPointer(__ptr_themeType, __ptr_baseType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_type_variation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_type_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 471820014)!
        }
        }
    }()
    public func isTypeVariation(themeType: Godot.GodotStringName, baseType: Godot.GodotStringName) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        baseType.withGodotUnsafeRawPointer { __ptr_baseType in
        withUnsafeArgumentPackPointer(__ptr_themeType, __ptr_baseType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_type_variation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_clear_type_variation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_type_variation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func clearTypeVariation(themeType: Godot.GodotStringName) {
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_type_variation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_type_variation_base: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_type_variation_base").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1965194235)!
        }
        }
    }()
    public func typeVariationBase(themeType: Godot.GodotStringName) -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_type_variation_base,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_type_variation_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_type_variation_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1761182771)!
        }
        }
    }()
    public func typeVariationList(baseType: Godot.GodotStringName) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        baseType.withGodotUnsafeRawPointer { __ptr_baseType in
        withUnsafeArgumentPackPointer(__ptr_baseType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_type_variation_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_add_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func addType(themeType: Godot.GodotStringName) {
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func removeType(themeType: Godot.GodotStringName) {
        themeType.withGodotUnsafeRawPointer { __ptr_themeType in
        withUnsafeArgumentPackPointer(__ptr_themeType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_type_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_type_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1139954409)!
        }
        }
    }()
    public func typeList() -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_type_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_merge_with: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "merge_with").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2326690814)!
        }
        }
    }()
    public func mergeWith(other: Godot.Theme?) {
        other.withGodotUnsafeRawPointer { __ptr_other in
        withUnsafePointer(to: __ptr_other) { _ptr___ptr_other in
        withUnsafeArgumentPackPointer(_ptr___ptr_other) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_merge_with,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    public var defaultBaseScale: Double {
        get {
            __getDefaultBaseScale()
        }
        set {
            __setDefaultBaseScale(
                newValue
            )
        }
    }

    public var defaultFont: Godot.Font? {
        get {
            __getDefaultFont()
        }
        set {
            __setDefaultFont(
                newValue
            )
        }
    }

    public var defaultFontSize: Int32 {
        get {
            __getDefaultFontSize()
        }
        set {
            __setDefaultFontSize(
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