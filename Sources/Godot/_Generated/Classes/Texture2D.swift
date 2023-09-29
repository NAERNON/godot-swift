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

    open func _isPixelOpaque(x: Int32, y: Int32) -> Bool {
        Bool()
    }

    open func _hasAlpha() -> Bool {
        Bool()
    }

    open func _draw(toCanvasItem canvasItem: Godot.RID, pos: Godot.Vector2, modulate: Godot.Color, transpose: Bool) {
    }

    open func _drawRect(toCanvasItem canvasItem: Godot.RID, rect: Godot.Rect2, tile: Bool, modulate: Godot.Color, transpose: Bool) {
    }

    open func _drawRectRegion(toCanvasItem canvasItem: Godot.RID, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color, transpose: Bool, clipUv: Bool) {
    }

    private static var __method_binding_get_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func width() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_width,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func height() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_height,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func size() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_has_alpha: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_alpha").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasAlpha() -> Bool {
        var __temporary = Bool()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_has_alpha,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1115460088)!
        }
        }
    }()
    public func draw(canvasItem: Godot.RID, position: Godot.Vector2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: position) { (__ptr_position) in
                withUnsafePointer(to: modulate) { (__ptr_modulate) in
                    withUnsafePointer(to: transpose) { (__ptr_transpose) in
                        withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_position, __ptr_modulate, __ptr_transpose) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_rect: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 575156982)!
        }
        }
    }()
    public func drawRect(canvasItem: Godot.RID, rect: Godot.Rect2, tile: Bool, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafePointer(to: tile) { (__ptr_tile) in
                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                        withUnsafePointer(to: transpose) { (__ptr_transpose) in
                            withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect, __ptr_tile, __ptr_modulate, __ptr_transpose) { (__accessPtr) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_draw_rect,
                                        __ptr_self,
                                        __accessPtr,
                                        nil
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_rect_region: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "draw_rect_region").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1066564656)!
        }
        }
    }()
    public func drawRectRegion(canvasItem: Godot.RID, rect: Godot.Rect2, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false, clipUv: Bool = true) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafePointer(to: srcRect) { (__ptr_srcRect) in
                    withUnsafePointer(to: modulate) { (__ptr_modulate) in
                        withUnsafePointer(to: transpose) { (__ptr_transpose) in
                            withUnsafePointer(to: clipUv) { (__ptr_clipUv) in
                                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect, __ptr_srcRect, __ptr_modulate, __ptr_transpose, __ptr_clipUv) { (__accessPtr) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_draw_rect_region,
                                            __ptr_self,
                                            __accessPtr,
                                            nil
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_get_image: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4190603485)!
        }
        }
    }()
    public func image() -> Godot.Image? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_image,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Image.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_create_placeholder: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_placeholder").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 121922552)!
        }
        }
    }()
    public func createPlaceholder() -> Godot.Resource? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_placeholder,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.Resource.retrievedInstanceManagedByGodot(__temporary)
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
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getWidth()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _get_height_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getHeight()
        returnPtr!.assumingMemoryBound(to: Int32.self).pointee = returnValue}
        let _is_pixel_opaque_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._isPixelOpaque(
            x: args[0]!.load(as: Int32.self),
            y: args[1]!.load(as: Int32.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _has_alpha_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._hasAlpha()
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
        let _draw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._draw(
            toCanvasItem: Godot.RID(godotExtensionPointer: args[0]!),
            pos: args[1]!.load(as: Godot.Vector2.self),
            modulate: args[2]!.load(as: Godot.Color.self),
            transpose: args[3]!.load(as: Bool.self)
        )}
        let _draw_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._drawRect(
            toCanvasItem: Godot.RID(godotExtensionPointer: args[0]!),
            rect: args[1]!.load(as: Godot.Rect2.self),
            tile: args[2]!.load(as: Bool.self),
            modulate: args[3]!.load(as: Godot.Color.self),
            transpose: args[4]!.load(as: Bool.self)
        )}
        let _draw_rect_region_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<Texture2D> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._drawRectRegion(
            toCanvasItem: Godot.RID(godotExtensionPointer: args[0]!),
            rect: args[1]!.load(as: Godot.Rect2.self),
            srcRect: args[2]!.load(as: Godot.Rect2.self),
            modulate: args[3]!.load(as: Godot.Color.self),
            transpose: args[4]!.load(as: Bool.self),
            clipUv: args[5]!.load(as: Bool.self)
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