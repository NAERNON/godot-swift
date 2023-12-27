//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class CodeHighlighter: SyntaxHighlighter {
    private static var __method_binding_add_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1636512886)!
        }
        }
    }()
    public func addKeywordColor(keyword: Godot.GodotString, color: Godot.Color) {
        keyword.withGodotUnsafeRawPointer { __ptr_keyword in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_keyword, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_keyword_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeKeywordColor(keyword: Godot.GodotString) {
        keyword.withGodotUnsafeRawPointer { __ptr_keyword in
        withUnsafeArgumentPackPointer(__ptr_keyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_keyword_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasKeywordColor(keyword: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        keyword.withGodotUnsafeRawPointer { __ptr_keyword in
        withUnsafeArgumentPackPointer(__ptr_keyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_keyword_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3855908743)!
        }
        }
    }()
    public func keywordColor(keyword: Godot.GodotString) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        keyword.withGodotUnsafeRawPointer { __ptr_keyword in
        withUnsafeArgumentPackPointer(__ptr_keyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_keyword_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setKeywordColors<Value1: VariantStorable, Value2: VariantStorable>(keywords: Godot.GodotDictionary<Value1, Value2>) {
        keywords.withGodotUnsafeRawPointer { __ptr_keywords in
        withUnsafeArgumentPackPointer(__ptr_keywords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_keyword_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearKeywordColors() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_keyword_colors,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    private func __getKeywordColors() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_keyword_colors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_member_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_member_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1636512886)!
        }
        }
    }()
    public func addMemberKeywordColor(memberKeyword: Godot.GodotString, color: Godot.Color) {
        memberKeyword.withGodotUnsafeRawPointer { __ptr_memberKeyword in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_memberKeyword, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_member_keyword_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_member_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_member_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeMemberKeywordColor(memberKeyword: Godot.GodotString) {
        memberKeyword.withGodotUnsafeRawPointer { __ptr_memberKeyword in
        withUnsafeArgumentPackPointer(__ptr_memberKeyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_member_keyword_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_member_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_member_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasMemberKeywordColor(memberKeyword: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        memberKeyword.withGodotUnsafeRawPointer { __ptr_memberKeyword in
        withUnsafeArgumentPackPointer(__ptr_memberKeyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_member_keyword_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_member_keyword_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_member_keyword_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3855908743)!
        }
        }
    }()
    public func memberKeywordColor(memberKeyword: Godot.GodotString) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        memberKeyword.withGodotUnsafeRawPointer { __ptr_memberKeyword in
        withUnsafeArgumentPackPointer(__ptr_memberKeyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_member_keyword_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_member_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_member_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setMemberKeywordColors<Value1: VariantStorable, Value2: VariantStorable>(memberKeyword: Godot.GodotDictionary<Value1, Value2>) {
        memberKeyword.withGodotUnsafeRawPointer { __ptr_memberKeyword in
        withUnsafeArgumentPackPointer(__ptr_memberKeyword) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_member_keyword_colors,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_member_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_member_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearMemberKeywordColors() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_member_keyword_colors,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_member_keyword_colors: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_member_keyword_colors").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    private func __getMemberKeywordColors() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_member_keyword_colors,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_color_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_color_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2924977451)!
        }
        }
    }()
    public func addColorRegion(startKey: Godot.GodotString, endKey: Godot.GodotString, color: Godot.Color, lineOnly: Bool = false) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        endKey.withGodotUnsafeRawPointer { __ptr_endKey in
        color.withGodotUnsafeRawPointer { __ptr_color in
        lineOnly.withGodotUnsafeRawPointer { __ptr_lineOnly in
        withUnsafeArgumentPackPointer(__ptr_startKey, __ptr_endKey, __ptr_color, __ptr_lineOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_color_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_remove_color_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_color_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func removeColorRegion(startKey: Godot.GodotString) {
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_color_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_color_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_color_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasColorRegion(startKey: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        startKey.withGodotUnsafeRawPointer { __ptr_startKey in
        withUnsafeArgumentPackPointer(__ptr_startKey) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_color_region,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_color_regions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_color_regions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4155329257)!
        }
        }
    }()
    private func __setColorRegions<Value1: VariantStorable, Value2: VariantStorable>(_ colorRegions: Godot.GodotDictionary<Value1, Value2>) {
        colorRegions.withGodotUnsafeRawPointer { __ptr_colorRegions in
        withUnsafeArgumentPackPointer(__ptr_colorRegions) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_color_regions,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_clear_color_regions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_color_regions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearColorRegions() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_color_regions,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_color_regions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_color_regions").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    private func __getColorRegions() -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_color_regions,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_function_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_function_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setFunctionColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_function_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_function_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_function_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getFunctionColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_function_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_number_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_number_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setNumberColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_number_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_number_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_number_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getNumberColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_number_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_symbol_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_symbol_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setSymbolColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_symbol_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_symbol_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_symbol_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getSymbolColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_symbol_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_member_variable_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_member_variable_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setMemberVariableColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_member_variable_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_member_variable_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_member_variable_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getMemberVariableColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_member_variable_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var numberColor: Godot.Color {
        get {
            __getNumberColor()
        }
        set {
            __setNumberColor(
                newValue
            )
        }
    }

    public var symbolColor: Godot.Color {
        get {
            __getSymbolColor()
        }
        set {
            __setSymbolColor(
                newValue
            )
        }
    }

    public var functionColor: Godot.Color {
        get {
            __getFunctionColor()
        }
        set {
            __setFunctionColor(
                newValue
            )
        }
    }

    public var memberVariableColor: Godot.Color {
        get {
            __getMemberVariableColor()
        }
        set {
            __setMemberVariableColor(
                newValue
            )
        }
    }

    public var keywordColors: Godot.AnyGodotDictionary {
        get {
            __getKeywordColors()
        }
        set {
            __setKeywordColors(
                keywords: newValue
            )
        }
    }

    public var memberKeywordColors: Godot.AnyGodotDictionary {
        get {
            __getMemberKeywordColors()
        }
        set {
            __setMemberKeywordColors(
                memberKeyword: newValue
            )
        }
    }

    public var colorRegions: Godot.AnyGodotDictionary {
        get {
            __getColorRegions()
        }
        set {
            __setColorRegions(
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