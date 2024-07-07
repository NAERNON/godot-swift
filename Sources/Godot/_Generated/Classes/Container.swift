//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Container: Control {
    
    public func preSortChildren() {
        _ = preSortChildrenSignal.emit()
    }
    public lazy var preSortChildrenSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "pre_sort_children") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func sortChildren() {
        _ = sortChildrenSignal.emit()
    }
    public lazy var sortChildrenSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "sort_children") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public static let notificationPreSortChildren: Notification = .init(rawValue: 50)
    
    public static let notificationSortChildren: Notification = .init(rawValue: 51)
    
    open func _getAllowedSizeFlagsHorizontal() -> Godot.GodotContiguousArray<Int32> {
        Godot.GodotContiguousArray<Int32>()
    }
    
    open func _getAllowedSizeFlagsVertical() -> Godot.GodotContiguousArray<Int32> {
        Godot.GodotContiguousArray<Int32>()
    }
    
    internal static var __method_binding_queue_sort: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "queue_sort").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func queueSort() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_queue_sort,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_fit_child_in_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "fit_child_in_rect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1993438598)!
            }
        }
    }()
    
    public func fitChildInRect(
        child: Godot.Control?,
        rect: Godot.Rect2
    ) {
        withTransferrableUnsafeRawPointer(to: child) { __ptr_child in
            withUnsafePointer(to: __ptr_child) { _ptr___ptr_child in
                withTransferrableUnsafeRawPointer(to: rect) { __ptr_rect in
                    withUnsafeArgumentPackPointer(_ptr___ptr_child, __ptr_rect) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_fit_child_in_rect,
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
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _get_allowed_size_flags_horizontal_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<Container>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getAllowedSizeFlagsHorizontal()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        let _get_allowed_size_flags_vertical_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else { return }
            Unmanaged<Container>.fromOpaque(instancePtr)
                .takeUnretainedValue()
                ._getAllowedSizeFlagsVertical()
               .transferToGodot(unsafePointer: returnPtr!)
        }
        _virtualFunctions = [
            "_getAllowedSizeFlagsHorizontal" : ("_get_allowed_size_flags_horizontal", _get_allowed_size_flags_horizontal_call),
            "_getAllowedSizeFlagsVertical" : ("_get_allowed_size_flags_vertical", _get_allowed_size_flags_vertical_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}