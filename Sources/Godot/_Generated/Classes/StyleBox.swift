//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class StyleBox: Resource {
    open func _draw(
        toCanvasItem canvasItem: Godot.RID,
        rect: Godot.Rect2
    ) {
    }

    open func _getDrawRect(
        _ rect: Godot.Rect2
    ) -> Godot.Rect2 {
        Godot.Rect2()
    }

    open func _getMinimumSize() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _testMask(
        point: Godot.Vector2,
        rect: Godot.Rect2
    ) -> Bool {
        Bool()
    }

    internal static var __method_binding_get_minimum_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimum_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func minimumSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimum_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_content_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_content_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4290182280)!
        }
        }
    }()

    public func setContentMargin(
        _ margin: Godot.Side,
        offset: Double
    ) {
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_margin, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_content_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_content_margin_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_content_margin_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    public func setContentMarginAll(
        offset: Double
    ) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_content_margin_all,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_content_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_content_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()

    private func __getContentMargin(
        _ margin: Godot.Side
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_content_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()

    public func margin(
        _ margin: Godot.Side
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_margin,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func offset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2275962004)!
        }
        }
    }()

    public func draw(
        canvasItem: Godot.RID,
        rect: Godot.Rect2
    ) {
        canvasItem.withGodotUnsafeRawPointer { __ptr_canvasItem in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_get_current_item_drawn: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_current_item_drawn").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3213695180)!
        }
        }
    }()

    public func currentItemDrawn() -> Godot.CanvasItem? {
        Godot.CanvasItem?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_current_item_drawn,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_test_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "test_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3735564539)!
        }
        }
    }()

    public func testMask(
        point: Godot.Vector2,
        rect: Godot.Rect2
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        point.withGodotUnsafeRawPointer { __ptr_point in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_point, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_test_mask,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    public var contentMarginLeft: Double {
        get {
            __getContentMargin(
                .init(rawValue: 0)!
            )
        }
    }

    public var contentMarginTop: Double {
        get {
            __getContentMargin(
                .init(rawValue: 1)!
            )
        }
    }

    public var contentMarginRight: Double {
        get {
            __getContentMargin(
                .init(rawValue: 2)!
            )
        }
    }

    public var contentMarginBottom: Double {
        get {
            __getContentMargin(
                .init(rawValue: 3)!
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _draw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StyleBox>.fromOpaque(instancePtr).takeUnretainedValue()
        ._draw(
            toCanvasItem: Godot.RID.fromGodotUnsafePointer(args[0]!),
            rect: Godot.Rect2.fromGodotUnsafePointer(args[1]!)
        )}
        let _get_draw_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StyleBox>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getDrawRect(
            Godot.Rect2.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_minimum_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<StyleBox>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getMinimumSize()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _test_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<StyleBox>.fromOpaque(instancePtr).takeUnretainedValue()
        ._testMask(
            point: Godot.Vector2.fromGodotUnsafePointer(args[0]!),
            rect: Godot.Rect2.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_draw" : ("_draw", _draw_call),
            "_getDrawRect" : ("_get_draw_rect", _get_draw_rect_call),
            "_getMinimumSize" : ("_get_minimum_size", _get_minimum_size_call),
            "_testMask" : ("_test_mask", _test_mask_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}