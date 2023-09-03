//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class StyleBox: Resource {
    open func _draw(toCanvasItem canvasItem: Godot.RID, rect: Godot.Rect2) {
    }

    open func _getDrawRect(_ rect: Godot.Rect2) -> Godot.Rect2 {
        Godot.Rect2()
    }

    open func _getMinimumSize() -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _testMask(point: Godot.Vector2, rect: Godot.Rect2) -> Bool {
        Bool()
    }

    private static var __method_binding_get_minimum_size: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_minimum_size").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func minimumSize() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_minimum_size,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_set_content_margin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_content_margin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4290182280)!
        }
        }
    }()
    public func setContentMargin(_ margin: Godot.Side, offset: Double) {
        withUnsafePointer(to: margin) { (__ptr_margin) in
            withUnsafePointer(to: offset) { (__ptr_offset) in
                withUnsafeArgumentPackPointer(__ptr_margin, __ptr_offset) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_content_margin,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_set_content_margin_all: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_content_margin_all").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func setContentMarginAll(offset: Double) {
        withUnsafePointer(to: offset) { (__ptr_offset) in
            withUnsafeArgumentPackPointer(__ptr_offset) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_set_content_margin_all,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_content_margin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_content_margin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()
    private func __getContentMargin(_ margin: Godot.Side) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: margin) { (__ptr_margin) in
            withUnsafeArgumentPackPointer(__ptr_margin) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_content_margin,
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

    private static var __method_binding_get_margin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_margin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2869120046)!
        }
        }
    }()
    public func margin(_ margin: Godot.Side) -> Double {
        var __temporary = Double()
        withUnsafePointer(to: margin) { (__ptr_margin) in
            withUnsafeArgumentPackPointer(__ptr_margin) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_margin,
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

    private static var __method_binding_get_offset: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_offset").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func offset() -> Godot.Vector2 {
        var __temporary = Godot.Vector2()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_offset,
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
        GodotStringName(swiftString: "draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2275962004)!
        }
        }
    }()
    public func draw(canvasItem: Godot.RID, rect: Godot.Rect2) {
        canvasItem.withUnsafeRawPointer { (__ptr_canvasItem) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafeArgumentPackPointer(__ptr_canvasItem, __ptr_rect) { (__accessPtr) in
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

    private static var __method_binding_get_current_item_drawn: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_current_item_drawn").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3213695180)!
        }
        }
    }()
    public func currentItemDrawn() -> Godot.CanvasItem? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_current_item_drawn,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.CanvasItem.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_test_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "test_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3735564539)!
        }
        }
    }()
    public func testMask(point: Godot.Vector2, rect: Godot.Rect2) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: point) { (__ptr_point) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafeArgumentPackPointer(__ptr_point, __ptr_rect) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_test_mask,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
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
            let instance = Unmanaged<StyleBox> .fromOpaque(instancePtr).takeUnretainedValue()
            let _ = instance
        ._draw(
            toCanvasItem: Godot.RID(godotExtensionPointer: args[0]!),
            rect: args[1]!.load(as: Godot.Rect2.self)
        )}
        let _get_draw_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<StyleBox> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getDrawRect(
            args[0]!.load(as: Godot.Rect2.self)
        )
        returnPtr!.assumingMemoryBound(to: Godot.Rect2.self).pointee = returnValue}
        let _get_minimum_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            let instance = Unmanaged<StyleBox> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._getMinimumSize()
        returnPtr!.assumingMemoryBound(to: Godot.Vector2.self).pointee = returnValue}
        let _test_mask_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            let instance = Unmanaged<StyleBox> .fromOpaque(instancePtr).takeUnretainedValue()
            let returnValue = instance
        ._testMask(
            point: args[0]!.load(as: Godot.Vector2.self),
            rect: args[1]!.load(as: Godot.Rect2.self)
        )
        returnPtr!.assumingMemoryBound(to: Bool.self).pointee = returnValue}
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