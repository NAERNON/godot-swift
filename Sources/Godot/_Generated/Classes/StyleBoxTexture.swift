//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class StyleBoxTexture: StyleBox {
    public enum AxisStretchMode: UInt32, GodotEnum {
        case stretch = 0
        case tile = 1
        case tileFit = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Stretch", 0),
            ("Tile", 1),
            ("Tile Fit", 2),]
        }
    }

    private static var __method_binding_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4290182280)!
        }
        }
    }()
    public func setTextureMargin(_ margin: Godot.Side, size: Double) {
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_margin, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_texture_margin_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_margin_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func setTextureMarginAll(size: Double) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_margin_all,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()
    private func __getTextureMargin(_ margin: Godot.Side) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_expand_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_expand_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4290182280)!
        }
        }
    }()
    public func setExpandMargin(_ margin: Godot.Side, size: Double) {
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_margin, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_expand_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_expand_margin_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_expand_margin_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func setExpandMarginAll(size: Double) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_expand_margin_all,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_expand_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_expand_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()
    private func __getExpandMargin(_ margin: Godot.Side) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_expand_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_region_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_region_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2046264180)!
        }
        }
    }()
    private func __setRegionRect(region: Godot.Rect2) {
        region.withGodotUnsafeRawPointer { __ptr_region in
        withUnsafeArgumentPackPointer(__ptr_region) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_region_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_region_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_region_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    private func __getRegionRect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_region_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draw_center: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_center").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawCenter(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_center,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_draw_center_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_center_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawCenterEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_draw_center_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    private func __setModulate(color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3444240500)!
        }
        }
    }()
    private func __getModulate() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_modulate,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_axis_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2965538783)!
        }
        }
    }()
    private func __setHAxisStretchMode(_ mode: Godot.StyleBoxTexture.AxisStretchMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_h_axis_stretch_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_h_axis_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_h_axis_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3807744063)!
        }
        }
    }()
    private func __getHAxisStretchMode() -> Godot.StyleBoxTexture.AxisStretchMode {
        Godot.StyleBoxTexture.AxisStretchMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_h_axis_stretch_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_axis_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2965538783)!
        }
        }
    }()
    private func __setVAxisStretchMode(_ mode: Godot.StyleBoxTexture.AxisStretchMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_v_axis_stretch_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_v_axis_stretch_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_v_axis_stretch_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3807744063)!
        }
        }
    }()
    private func __getVAxisStretchMode() -> Godot.StyleBoxTexture.AxisStretchMode {
        Godot.StyleBoxTexture.AxisStretchMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_v_axis_stretch_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var texture: Godot.Texture2D? {
        get {
            __getTexture()
        }
        set {
            __setTexture(
                newValue
            )
        }
    }

    public var textureMarginLeft: Double {
        get {
            __getTextureMargin(
                .init(rawValue: 0)!
            )
        }
    }

    public var textureMarginTop: Double {
        get {
            __getTextureMargin(
                .init(rawValue: 1)!
            )
        }
    }

    public var textureMarginRight: Double {
        get {
            __getTextureMargin(
                .init(rawValue: 2)!
            )
        }
    }

    public var textureMarginBottom: Double {
        get {
            __getTextureMargin(
                .init(rawValue: 3)!
            )
        }
    }

    public var expandMarginLeft: Double {
        get {
            __getExpandMargin(
                .init(rawValue: 0)!
            )
        }
    }

    public var expandMarginTop: Double {
        get {
            __getExpandMargin(
                .init(rawValue: 1)!
            )
        }
    }

    public var expandMarginRight: Double {
        get {
            __getExpandMargin(
                .init(rawValue: 2)!
            )
        }
    }

    public var expandMarginBottom: Double {
        get {
            __getExpandMargin(
                .init(rawValue: 3)!
            )
        }
    }

    public var hAxisStretchMode: Godot.StyleBoxTexture.AxisStretchMode {
        get {
            __getHAxisStretchMode()
        }
        set {
            __setHAxisStretchMode(
                newValue
            )
        }
    }

    public var vAxisStretchMode: Godot.StyleBoxTexture.AxisStretchMode {
        get {
            __getVAxisStretchMode()
        }
        set {
            __setVAxisStretchMode(
                newValue
            )
        }
    }

    public var regionRect: Godot.Rect2 {
        get {
            __getRegionRect()
        }
        set {
            __setRegionRect(
                region: newValue
            )
        }
    }

    public var modulate: Godot.Color {
        get {
            __getModulate()
        }
        set {
            __setModulate(
                color: newValue
            )
        }
    }

    public var isDrawCenterEnabled: Bool {
        get {
            __isDrawCenterEnabled()
        }
        set {
            __setDrawCenter(
                enable: newValue
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