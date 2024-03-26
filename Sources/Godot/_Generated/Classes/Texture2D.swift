//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class Texture2D: Texture {
    open func _getWidth() -> Int32 {
        Int32()
    }

    open func _getHeight() -> Int32 {
        Int32()
    }

    open func _isPixelOpaque(
        x: Int32,
        y: Int32
    ) -> Bool {
        Bool()
    }

    open func _hasAlpha() -> Bool {
        Bool()
    }

    open func _draw(
        toCanvasItem canvasItem: Godot.RID,
        pos: Godot.Vector2,
        modulate: Godot.Color,
        transpose: Bool
    ) {
    }

    open func _drawRect(
        toCanvasItem canvasItem: Godot.RID,
        rect: Godot.Rect2,
        tile: Bool,
        modulate: Godot.Color,
        transpose: Bool
    ) {
    }

    open func _drawRectRegion(
        toCanvasItem canvasItem: Godot.RID,
        rect: Godot.Rect2,
        srcRect: Godot.Rect2,
        modulate: Godot.Color,
        transpose: Bool,
        clipUv: Bool
    ) {
    }

    internal static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func width() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_width,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func height() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_height,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()

    public func size() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_has_alpha: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_alpha").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()

    public func hasAlpha() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_alpha,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2729649137)!
        }
        }
    }()

    public func draw(
        canvasItem: Godot.RID,
        position: Godot.Vector2,
        modulate: Godot.Color = .white,
        transpose: Bool = false
    ) {
        canvasItem.withGodotUnsafeRawPointer { __ptr_canvasItem in
        position.withGodotUnsafeRawPointer { __ptr_position in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_position, __ptr_modulate, __ptr_transpose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    internal static var __method_binding_draw_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3499451691)!
        }
        }
    }()

    public func drawRect(
        canvasItem: Godot.RID,
        rect: Godot.Rect2,
        tile: Bool,
        modulate: Godot.Color = .white,
        transpose: Bool = false
    ) {
        canvasItem.withGodotUnsafeRawPointer { __ptr_canvasItem in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        tile.withGodotUnsafeRawPointer { __ptr_tile in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect, __ptr_tile, __ptr_modulate, __ptr_transpose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_draw_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2963678660)!
        }
        }
    }()

    public func drawRectRegion(
        canvasItem: Godot.RID,
        rect: Godot.Rect2,
        srcRect: Godot.Rect2,
        modulate: Godot.Color = .white,
        transpose: Bool = false,
        clipUv: Bool = true
    ) {
        canvasItem.withGodotUnsafeRawPointer { __ptr_canvasItem in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        clipUv.withGodotUnsafeRawPointer { __ptr_clipUv in
        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_transpose, __ptr_clipUv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_draw_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_get_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4190603485)!
        }
        }
    }()

    public func image() -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_image,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_placeholder").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()

    public func createPlaceholder() -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_create_placeholder,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getWidth()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_height_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHeight()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_pixel_opaque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isPixelOpaque(
            x: Int32.fromGodotUnsafePointer(args[0]!),
            y: Int32.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _has_alpha_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._hasAlpha()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _draw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._draw(
            toCanvasItem: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[1]!),
            modulate: Godot.Color.fromGodotUnsafePointer(args[2]!),
            transpose: Bool.fromGodotUnsafePointer(args[3]!)
        )}
        let _draw_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._drawRect(
            toCanvasItem: Godot.RID.fromGodotUnsafePointer(args[0]!),
            rect: Godot.Rect2.fromGodotUnsafePointer(args[1]!),
            tile: Bool.fromGodotUnsafePointer(args[2]!),
            modulate: Godot.Color.fromGodotUnsafePointer(args[3]!),
            transpose: Bool.fromGodotUnsafePointer(args[4]!)
        )}
        let _draw_rect_region_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<Texture2D>.fromOpaque(instancePtr).takeUnretainedValue()
        ._drawRectRegion(
            toCanvasItem: Godot.RID.fromGodotUnsafePointer(args[0]!),
            rect: Godot.Rect2.fromGodotUnsafePointer(args[1]!),
            srcRect: Godot.Rect2.fromGodotUnsafePointer(args[2]!),
            modulate: Godot.Color.fromGodotUnsafePointer(args[3]!),
            transpose: Bool.fromGodotUnsafePointer(args[4]!),
            clipUv: Bool.fromGodotUnsafePointer(args[5]!)
        )}
        _virtualFunctions = [
            "_getWidth" : ("_get_width", _get_width_call),
            "_getHeight" : ("_get_height", _get_height_call),
            "_isPixelOpaque" : ("_is_pixel_opaque", _is_pixel_opaque_call),
            "_hasAlpha" : ("_has_alpha", _has_alpha_call),
            "_draw" : ("_draw", _draw_call),
            "_drawRect" : ("_draw_rect", _draw_rect_call),
            "_drawRectRegion" : ("_draw_rect_region", _draw_rect_region_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}