//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Container: Control {
    public func preSortChildren() {
        preSortChildrenConnector.emit()
    }

    public private (set) lazy var preSortChildrenConnector: Godot.SignalConnector
    <> = {
        .init(self, "pre_sort_children")
    }()


    public func sortChildren() {
        sortChildrenConnector.emit()
    }

    public private (set) lazy var sortChildrenConnector: Godot.SignalConnector
    <> = {
        .init(self, "sort_children")
    }()


    open func _getAllowedSizeFlagsHorizontal() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _getAllowedSizeFlagsVertical() -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    private static var __method_binding_queue_sort: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_sort").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func queueSort() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_sort,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_fit_child_in_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fit_child_in_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1993438598)!
        }
        }
    }()
    public func fitChildInRect(child: Godot.Control?, rect: Godot.Rect2) {
        child.withGodotUnsafeRawPointer { __ptr_child in
        withUnsafePointer(to: __ptr_child) { _ptr___ptr_child in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(_ptr___ptr_child, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_fit_child_in_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_allowed_size_flags_horizontal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Container>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAllowedSizeFlagsHorizontal()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_allowed_size_flags_vertical_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Container>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getAllowedSizeFlagsVertical()
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_getAllowedSizeFlagsHorizontal" : ("_get_allowed_size_flags_horizontal", _get_allowed_size_flags_horizontal_call),
            "_getAllowedSizeFlagsVertical" : ("_get_allowed_size_flags_vertical", _get_allowed_size_flags_vertical_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }