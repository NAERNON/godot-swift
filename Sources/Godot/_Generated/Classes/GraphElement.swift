//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GraphElement: Container {
    public func nodeSelected() {
        nodeSelectedConnector.emit()
    }

    public private (set) lazy var nodeSelectedConnector: Godot.SignalConnector
    <> = {
        .init(self, "node_selected")
    }()


    public func nodeDeselected() {
        nodeDeselectedConnector.emit()
    }

    public private (set) lazy var nodeDeselectedConnector: Godot.SignalConnector
    <> = {
        .init(self, "node_deselected")
    }()


    public func raiseRequest() {
        raiseRequestConnector.emit()
    }

    public private (set) lazy var raiseRequestConnector: Godot.SignalConnector
    <> = {
        .init(self, "raise_request")
    }()


    public func deleteRequest() {
        deleteRequestConnector.emit()
    }

    public private (set) lazy var deleteRequestConnector: Godot.SignalConnector
    <> = {
        .init(self, "delete_request")
    }()


    public func resizeRequest(newMinsize: Godot.Vector2) {
        resizeRequestConnector.emit(newMinsize)
    }

    public private (set) lazy var resizeRequestConnector: Godot.SignalConnector<Godot.Vector2> = {
        .init(self, "resize_request")
    }()

    public func dragged(from: Godot.Vector2, to: Godot.Vector2) {
        draggedConnector.emit(from, to)
    }

    public private (set) lazy var draggedConnector: Godot.SignalConnector<Godot.Vector2, Godot.Vector2> = {
        .init(self, "dragged")
    }()

    public func positionOffsetChanged() {
        positionOffsetChangedConnector.emit()
    }

    public private (set) lazy var positionOffsetChangedConnector: Godot.SignalConnector
    <> = {
        .init(self, "position_offset_changed")
    }()


    private static var __method_binding_set_resizable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_resizable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setResizable(_ resizable: Bool) {
        resizable.withGodotUnsafeRawPointer { __ptr_resizable in
        withUnsafeArgumentPackPointer(__ptr_resizable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_resizable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_resizable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_resizable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isResizable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_resizable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draggable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draggable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDraggable(_ draggable: Bool) {
        draggable.withGodotUnsafeRawPointer { __ptr_draggable in
        withUnsafeArgumentPackPointer(__ptr_draggable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_draggable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_draggable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draggable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isDraggable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_draggable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_selectable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selectable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSelectable(_ selectable: Bool) {
        selectable.withGodotUnsafeRawPointer { __ptr_selectable in
        withUnsafeArgumentPackPointer(__ptr_selectable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_selectable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_selectable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_selectable").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isSelectable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_selectable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSelected(_ selected: Bool) {
        selected.withGodotUnsafeRawPointer { __ptr_selected in
        withUnsafeArgumentPackPointer(__ptr_selected) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_selected,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isSelected() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_selected,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_position_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_position_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setPositionOffset(_ offset: Godot.Vector2) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_position_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_position_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_position_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getPositionOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_position_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var positionOffset: Godot.Vector2 {
        get {
            __getPositionOffset()
        }
        set {
            __setPositionOffset(
                newValue
            )
        }
    }

    public var isResizable: Bool {
        get {
            __isResizable()
        }
        set {
            __setResizable(
                newValue
            )
        }
    }

    public var isDraggable: Bool {
        get {
            __isDraggable()
        }
        set {
            __setDraggable(
                newValue
            )
        }
    }

    public var isSelectable: Bool {
        get {
            __isSelectable()
        }
        set {
            __setSelectable(
                newValue
            )
        }
    }

    public var isSelected: Bool {
        get {
            __isSelected()
        }
        set {
            __setSelected(
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