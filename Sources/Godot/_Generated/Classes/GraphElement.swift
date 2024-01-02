//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GraphElement: Container {
    public func nodeSelected() {
        _ = nodeSelectedSignal.emit()
    }
    public lazy var nodeSelectedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "node_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func nodeDeselected() {
        _ = nodeDeselectedSignal.emit()
    }
    public lazy var nodeDeselectedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "node_deselected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func raiseRequest() {
        _ = raiseRequestSignal.emit()
    }
    public lazy var raiseRequestSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "raise_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func deleteRequest() {
        _ = deleteRequestSignal.emit()
    }
    public lazy var deleteRequestSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "delete_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ResizeRequestSignalInput: Godot.SignalInput {
        public let new_minsize: Godot.Vector2
        fileprivate init(new_minsize: Godot.Vector2) {
            self.new_minsize = new_minsize
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, new_minsize)
        }
    }
    public func resizeRequest(new_minsize: Godot.Vector2) {
        _ = resizeRequestSignal.emit(.init(new_minsize: new_minsize))
    }
    public lazy var resizeRequestSignal: Godot.SignalEmitter<ResizeRequestSignalInput> = {
        .init(object: self, signalName: "resize_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ResizeRequestSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(new_minsize: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ResizeRequestSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ResizeRequestSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct DraggedSignalInput: Godot.SignalInput {
        public let from: Godot.Vector2
        public let to: Godot.Vector2
        fileprivate init(from: Godot.Vector2, to: Godot.Vector2) {
            self.from = from
            self.to = to
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, from, to)
        }
    }
    public func dragged(from: Godot.Vector2, to: Godot.Vector2) {
        _ = draggedSignal.emit(.init(from: from,
                to: to))
    }
    public lazy var draggedSignal: Godot.SignalEmitter<DraggedSignalInput> = {
        .init(object: self, signalName: "dragged") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<DraggedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(from: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    to: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<DraggedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<DraggedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func positionOffsetChanged() {
        _ = positionOffsetChangedSignal.emit()
    }
    public lazy var positionOffsetChangedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "position_offset_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_set_resizable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_resizable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setResizable(_ resizable: Bool) {
        resizable.withGodotUnsafeRawPointer { __ptr_resizable in
        withUnsafeArgumentPackPointer(__ptr_resizable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_resizable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_resizable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_resizable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isResizable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_resizable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_draggable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draggable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDraggable(_ draggable: Bool) {
        draggable.withGodotUnsafeRawPointer { __ptr_draggable in
        withUnsafeArgumentPackPointer(__ptr_draggable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draggable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_draggable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draggable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isDraggable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_draggable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_selectable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selectable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSelectable(_ selectable: Bool) {
        selectable.withGodotUnsafeRawPointer { __ptr_selectable in
        withUnsafeArgumentPackPointer(__ptr_selectable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_selectable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_selectable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_selectable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isSelectable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_selectable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSelected(_ selected: Bool) {
        selected.withGodotUnsafeRawPointer { __ptr_selected in
        withUnsafeArgumentPackPointer(__ptr_selected) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_selected,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isSelected() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_selected,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_position_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_position_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setPositionOffset(_ offset: Godot.Vector2) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_position_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_position_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_position_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getPositionOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
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