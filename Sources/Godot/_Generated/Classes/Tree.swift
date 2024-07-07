//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class Tree: Control {
    public enum SelectMode: UInt32, GodotEnum {
        case single = 0
        case row = 1
        case multi = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Single", 0),
               ("Row", 1),
               ("Multi", 2),
            ]
        }
    }
    
    public enum DropModeFlags: UInt32, GodotEnum {
        case disabled = 0
        case onItem = 1
        case inbetween = 2
        
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
               ("Disabled", 0),
               ("On Item", 1),
               ("Inbetween", 2),
            ]
        }
    }
    
    
    public func itemSelected() {
        _ = itemSelectedSignal.emit()
    }
    public lazy var itemSelectedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "item_selected") { callablePtr, args, _, _, _ in
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
    
    
    public func cellSelected() {
        _ = cellSelectedSignal.emit()
    }
    public lazy var cellSelectedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "cell_selected") { callablePtr, args, _, _, _ in
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
    
    public struct MultiSelectedSignalInput: Godot.SignalInput {
        public let item: Godot.TreeItem?
        public let column: Int
        public let selected: Bool
        fileprivate init(item: Godot.TreeItem?, column: Int, selected: Bool) {
            self.item = item
            self.column = column
            self.selected = selected
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.item), Variant(input.column), Variant(input.selected)]
        }
    }
    public func multiSelected(item: Godot.TreeItem?, column: Int, selected: Bool) {
        _ = multiSelectedSignal.emit(.init(item: item,
                column: column,
                selected: selected))
    }
    public lazy var multiSelectedSignal: Godot.SignalEmitter<MultiSelectedSignalInput> = {
        .init(object: self, signalName: "multi_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<MultiSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(item: Godot.TreeItem?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    column: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    selected: Bool.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<MultiSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<MultiSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct ItemMouseSelectedSignalInput: Godot.SignalInput {
        public let position: Godot.Vector2
        public let mouseButtonIndex: Int
        fileprivate init(position: Godot.Vector2, mouseButtonIndex: Int) {
            self.position = position
            self.mouseButtonIndex = mouseButtonIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.position), Variant(input.mouseButtonIndex)]
        }
    }
    public func itemMouseSelected(position: Godot.Vector2, mouseButtonIndex: Int) {
        _ = itemMouseSelectedSignal.emit(.init(position: position,
                mouseButtonIndex: mouseButtonIndex))
    }
    public lazy var itemMouseSelectedSignal: Godot.SignalEmitter<ItemMouseSelectedSignalInput> = {
        .init(object: self, signalName: "item_mouse_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ItemMouseSelectedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(position: Godot.Vector2.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    mouseButtonIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ItemMouseSelectedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ItemMouseSelectedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct EmptyClickedSignalInput: Godot.SignalInput {
        public let position: Godot.Vector2
        public let mouseButtonIndex: Int
        fileprivate init(position: Godot.Vector2, mouseButtonIndex: Int) {
            self.position = position
            self.mouseButtonIndex = mouseButtonIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.position), Variant(input.mouseButtonIndex)]
        }
    }
    public func emptyClicked(position: Godot.Vector2, mouseButtonIndex: Int) {
        _ = emptyClickedSignal.emit(.init(position: position,
                mouseButtonIndex: mouseButtonIndex))
    }
    public lazy var emptyClickedSignal: Godot.SignalEmitter<EmptyClickedSignalInput> = {
        .init(object: self, signalName: "empty_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<EmptyClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(position: Godot.Vector2.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    mouseButtonIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<EmptyClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<EmptyClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func itemEdited() {
        _ = itemEditedSignal.emit()
    }
    public lazy var itemEditedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "item_edited") { callablePtr, args, _, _, _ in
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
    
    public struct CustomItemClickedSignalInput: Godot.SignalInput {
        public let mouseButtonIndex: Int
        fileprivate init(mouseButtonIndex: Int) {
            self.mouseButtonIndex = mouseButtonIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.mouseButtonIndex)]
        }
    }
    public func customItemClicked(mouseButtonIndex: Int) {
        _ = customItemClickedSignal.emit(.init(mouseButtonIndex: mouseButtonIndex))
    }
    public lazy var customItemClickedSignal: Godot.SignalEmitter<CustomItemClickedSignalInput> = {
        .init(object: self, signalName: "custom_item_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<CustomItemClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(mouseButtonIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<CustomItemClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<CustomItemClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func itemIconDoubleClicked() {
        _ = itemIconDoubleClickedSignal.emit()
    }
    public lazy var itemIconDoubleClickedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "item_icon_double_clicked") { callablePtr, args, _, _, _ in
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
    
    public struct ItemCollapsedSignalInput: Godot.SignalInput {
        public let item: Godot.TreeItem?
        fileprivate init(item: Godot.TreeItem?) {
            self.item = item
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.item)]
        }
    }
    public func itemCollapsed(item: Godot.TreeItem?) {
        _ = itemCollapsedSignal.emit(.init(item: item))
    }
    public lazy var itemCollapsedSignal: Godot.SignalEmitter<ItemCollapsedSignalInput> = {
        .init(object: self, signalName: "item_collapsed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ItemCollapsedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(item: Godot.TreeItem?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ItemCollapsedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ItemCollapsedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct CheckPropagatedToItemSignalInput: Godot.SignalInput {
        public let item: Godot.TreeItem?
        public let column: Int
        fileprivate init(item: Godot.TreeItem?, column: Int) {
            self.item = item
            self.column = column
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.item), Variant(input.column)]
        }
    }
    public func checkPropagatedToItem(item: Godot.TreeItem?, column: Int) {
        _ = checkPropagatedToItemSignal.emit(.init(item: item,
                column: column))
    }
    public lazy var checkPropagatedToItemSignal: Godot.SignalEmitter<CheckPropagatedToItemSignalInput> = {
        .init(object: self, signalName: "check_propagated_to_item") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<CheckPropagatedToItemSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(item: Godot.TreeItem?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    column: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<CheckPropagatedToItemSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<CheckPropagatedToItemSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct ButtonClickedSignalInput: Godot.SignalInput {
        public let item: Godot.TreeItem?
        public let column: Int
        public let id: Int
        public let mouseButtonIndex: Int
        fileprivate init(item: Godot.TreeItem?, column: Int, id: Int, mouseButtonIndex: Int) {
            self.item = item
            self.column = column
            self.id = id
            self.mouseButtonIndex = mouseButtonIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.item), Variant(input.column), Variant(input.id), Variant(input.mouseButtonIndex)]
        }
    }
    public func buttonClicked(item: Godot.TreeItem?, column: Int, id: Int, mouseButtonIndex: Int) {
        _ = buttonClickedSignal.emit(.init(item: item,
                column: column,
                id: id,
                mouseButtonIndex: mouseButtonIndex))
    }
    public lazy var buttonClickedSignal: Godot.SignalEmitter<ButtonClickedSignalInput> = {
        .init(object: self, signalName: "button_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ButtonClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(item: Godot.TreeItem?.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    column: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!),
                    id: Int.convertFromStorage(unsafePointer: args!.advanced(by: 2).pointee!),
                    mouseButtonIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 3).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ButtonClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ButtonClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    public struct CustomPopupEditedSignalInput: Godot.SignalInput {
        public let arrowClicked: Bool
        fileprivate init(arrowClicked: Bool) {
            self.arrowClicked = arrowClicked
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.arrowClicked)]
        }
    }
    public func customPopupEdited(arrowClicked: Bool) {
        _ = customPopupEditedSignal.emit(.init(arrowClicked: arrowClicked))
    }
    public lazy var customPopupEditedSignal: Godot.SignalEmitter<CustomPopupEditedSignalInput> = {
        .init(object: self, signalName: "custom_popup_edited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<CustomPopupEditedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(arrowClicked: Bool.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<CustomPopupEditedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<CustomPopupEditedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func itemActivated() {
        _ = itemActivatedSignal.emit()
    }
    public lazy var itemActivatedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "item_activated") { callablePtr, args, _, _, _ in
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
    
    public struct ColumnTitleClickedSignalInput: Godot.SignalInput {
        public let column: Int
        public let mouseButtonIndex: Int
        fileprivate init(column: Int, mouseButtonIndex: Int) {
            self.column = column
            self.mouseButtonIndex = mouseButtonIndex
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.column), Variant(input.mouseButtonIndex)]
        }
    }
    public func columnTitleClicked(column: Int, mouseButtonIndex: Int) {
        _ = columnTitleClickedSignal.emit(.init(column: column,
                mouseButtonIndex: mouseButtonIndex))
    }
    public lazy var columnTitleClickedSignal: Godot.SignalEmitter<ColumnTitleClickedSignalInput> = {
        .init(object: self, signalName: "column_title_clicked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ColumnTitleClickedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(column: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!),
                    mouseButtonIndex: Int.convertFromStorage(unsafePointer: args!.advanced(by: 1).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ColumnTitleClickedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ColumnTitleClickedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()
    
    
    public func nothingSelected() {
        _ = nothingSelectedSignal.emit()
    }
    public lazy var nothingSelectedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "nothing_selected") { callablePtr, args, _, _, _ in
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
    
    internal static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "clear").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func clear() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_clear,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_create_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "create_item").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 528467046)!
            }
        }
    }()
    
    public func createItem(
        parent: Godot.TreeItem? = nil,
        index: Int32 = -1
    ) -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: parent) { __ptr_parent in
                withUnsafePointer(to: __ptr_parent) { _ptr___ptr_parent in
                    withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                        withUnsafeArgumentPackPointer(_ptr___ptr_parent, __ptr_index) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_create_item,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_root").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1514277247)!
            }
        }
    }()
    
    public func root() -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_root,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_column_custom_minimum_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_custom_minimum_width").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func setColumnCustomMinimumWidth(
        column: Int32,
        minWidth: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: minWidth) { __ptr_minWidth in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_minWidth) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_custom_minimum_width,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_expand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_expand").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setColumnExpand(
        column: Int32,
        expand: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: expand) { __ptr_expand in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_expand) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_expand,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_expand_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_expand_ratio").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
            }
        }
    }()
    
    public func setColumnExpandRatio(
        column: Int32,
        ratio: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: ratio) { __ptr_ratio in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_ratio) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_expand_ratio,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_clip_content: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_clip_content").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
            }
        }
    }()
    
    public func setColumnClipContent(
        column: Int32,
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_enable) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_clip_content,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_is_column_expanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_column_expanding").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func isColumnExpanding(
        column: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_column_expanding,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_is_column_clipping_content: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_column_clipping_content").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
            }
        }
    }()
    
    public func isColumnClippingContent(
        column: Int32
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_is_column_clipping_content,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_expand_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_expand_ratio").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func columnExpandRatio(
        column: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_expand_ratio,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_width").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
            }
        }
    }()
    
    public func columnWidth(
        column: Int32
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_width,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_hide_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_hide_root").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setHideRoot(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_hide_root,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_root_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_root_hidden").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isRootHidden() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_root_hidden,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_next_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_next_selected").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 873446299)!
            }
        }
    }()
    
    public func nextSelected(
        from: Godot.TreeItem?
    ) -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: from) { __ptr_from in
                withUnsafePointer(to: __ptr_from) { _ptr___ptr_from in
                    withUnsafeArgumentPackPointer(_ptr___ptr_from) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_get_next_selected,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_selected").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1514277247)!
            }
        }
    }()
    
    public func selected() -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_selected,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_selected").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2662547442)!
            }
        }
    }()
    
    public func setSelected(
        item: Godot.TreeItem?,
        column: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: item) { __ptr_item in
            withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
                withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                    withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_column) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_set_selected,
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
    
    internal static var __method_binding_get_selected_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_selected_column").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func selectedColumn() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_selected_column,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_pressed_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_pressed_button").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func pressedButton() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_pressed_button,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_select_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_select_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3223887270)!
            }
        }
    }()
    
    private func __setSelectMode(
        _ mode: Godot.Tree.SelectMode
    ) {
        withTransferrableUnsafeRawPointer(to: mode) { __ptr_mode in
            withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_select_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_select_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_select_mode").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 100748571)!
            }
        }
    }()
    
    private func __getSelectMode() -> Godot.Tree.SelectMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_select_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_deselect_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "deselect_all").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func deselectAll() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_deselect_all,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_columns").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setColumns(
        amount: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: amount) { __ptr_amount in
            withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_columns,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_columns").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getColumns() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_columns,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_edited: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_edited").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1514277247)!
            }
        }
    }()
    
    public func edited() -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_edited,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_edited_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_edited_column").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    public func editedColumn() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_edited_column,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_edit_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "edit_selected").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2595650253)!
            }
        }
    }()
    
    public func editSelected(
        forceEdit: Bool = false
    ) -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: forceEdit) { __ptr_forceEdit in
                withUnsafeArgumentPackPointer(__ptr_forceEdit) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_edit_selected,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_custom_popup_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_custom_popup_rect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
            }
        }
    }()
    
    public func customPopupRect() -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_custom_popup_rect,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_get_item_area_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_item_area_rect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 47968679)!
            }
        }
    }()
    
    public func itemAreaRect(
        item: Godot.TreeItem?,
        column: Int32 = -1,
        buttonIndex: Int32 = -1
    ) -> Godot.Rect2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: item) { __ptr_item in
                withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
                    withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                        withTransferrableUnsafeRawPointer(to: buttonIndex) { __ptr_buttonIndex in
                            withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_column, __ptr_buttonIndex) { __accessPtr in
                                self.withUnsafeMutableRawPointer { __ptr_self in
                                    GodotExtension.Interface.objectMethodBindPtrcall(
                                        Self.__method_binding_get_item_area_rect,
                                        __ptr_self,
                                        __accessPtr,
                                        __temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_item_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_item_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4193340126)!
            }
        }
    }()
    
    public func itemAtPosition(
        _ position: Godot.Vector2
    ) -> Godot.TreeItem? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_item_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3820158470)!
            }
        }
    }()
    
    public func columnAtPosition(
        _ position: Godot.Vector2
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_drop_section_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_drop_section_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3820158470)!
            }
        }
    }()
    
    public func dropSectionAtPosition(
        _ position: Godot.Vector2
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_drop_section_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_button_id_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_button_id_at_position").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3820158470)!
            }
        }
    }()
    
    public func buttonIDAtPosition(
        _ position: Godot.Vector2
    ) -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: position) { __ptr_position in
                withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_button_id_at_position,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_ensure_cursor_is_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "ensure_cursor_is_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
            }
        }
    }()
    
    public func ensureCursorIsVisible() {
        self.withUnsafeMutableRawPointer { __ptr_self in
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.__method_binding_ensure_cursor_is_visible,
                __ptr_self,
                nil,
                nil
            )
        }
    }
    
    internal static var __method_binding_set_column_titles_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_titles_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setColumnTitlesVisible(
        _ visible: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: visible) { __ptr_visible in
            withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_column_titles_visible,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_are_column_titles_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "are_column_titles_visible").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __areColumnTitlesVisible() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_are_column_titles_visible,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_column_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_title").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
            }
        }
    }()
    
    public func setColumnTitle(
        column: Int32,
        title: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: title) { __ptr_title in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_title) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_title,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_title").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
            }
        }
    }()
    
    public func columnTitle(
        column: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_title,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_title_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_title_alignment").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3276431499)!
            }
        }
    }()
    
    public func setColumnTitleAlignment(
        column: Int32,
        titleAlignment: Godot.HorizontalAlignment
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: titleAlignment) { __ptr_titleAlignment in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_titleAlignment) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_title_alignment,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_title_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_title_alignment").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4171562184)!
            }
        }
    }()
    
    public func columnTitleAlignment(
        column: Int32
    ) -> Godot.HorizontalAlignment {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_title_alignment,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_title_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_title_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1707680378)!
            }
        }
    }()
    
    public func setColumnTitleDirection(
        column: Int32,
        direction: Godot.Control.TextDirection
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: direction) { __ptr_direction in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_direction) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_title_direction,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_title_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_title_direction").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4235602388)!
            }
        }
    }()
    
    public func columnTitleDirection(
        column: Int32
    ) -> Godot.Control.TextDirection {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_title_direction,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_set_column_title_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_column_title_language").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 501894301)!
            }
        }
    }()
    
    public func setColumnTitleLanguage(
        column: Int32,
        language: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
            withTransferrableUnsafeRawPointer(to: language) { __ptr_language in
                withUnsafeArgumentPackPointer(__ptr_column, __ptr_language) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_column_title_language,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_column_title_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_column_title_language").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844755477)!
            }
        }
    }()
    
    public func columnTitleLanguage(
        column: Int32
    ) -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: column) { __ptr_column in
                withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_column_title_language,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }
    
    internal static var __method_binding_get_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_scroll").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
            }
        }
    }()
    
    public func scroll() -> Godot.Vector2 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_scroll,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_scroll_to_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "scroll_to_item").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1314737213)!
            }
        }
    }()
    
    public func scrollToItem(
        _ item: Godot.TreeItem?,
        centerOnItem: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: item) { __ptr_item in
            withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
                withTransferrableUnsafeRawPointer(to: centerOnItem) { __ptr_centerOnItem in
                    withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_centerOnItem) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_scroll_to_item,
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
    
    internal static var __method_binding_set_h_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_h_scroll_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setHScrollEnabled(
        hScroll: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: hScroll) { __ptr_hScroll in
            withUnsafeArgumentPackPointer(__ptr_hScroll) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_h_scroll_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_h_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_h_scroll_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isHScrollEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_h_scroll_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_v_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_v_scroll_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setVScrollEnabled(
        hScroll: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: hScroll) { __ptr_hScroll in
            withUnsafeArgumentPackPointer(__ptr_hScroll) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_v_scroll_enabled,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_v_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_v_scroll_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isVScrollEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_v_scroll_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_hide_folding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_hide_folding").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setHideFolding(
        hide: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: hide) { __ptr_hide in
            withUnsafeArgumentPackPointer(__ptr_hide) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_hide_folding,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_folding_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_folding_hidden").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isFoldingHidden() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_folding_hidden,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_enable_recursive_folding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_enable_recursive_folding").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setEnableRecursiveFolding(
        enable: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: enable) { __ptr_enable in
            withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_enable_recursive_folding,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_is_recursive_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "is_recursive_folding_enabled").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __isRecursiveFoldingEnabled() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_is_recursive_folding_enabled,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_drop_mode_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_drop_mode_flags").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
            }
        }
    }()
    
    private func __setDropModeFlags(
        _ flags: Int32
    ) {
        withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
            withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_drop_mode_flags,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_drop_mode_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_drop_mode_flags").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
            }
        }
    }()
    
    private func __getDropModeFlags() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_drop_mode_flags,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_allow_rmb_select: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_allow_rmb_select").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setAllowRmbSelect(
        allow: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: allow) { __ptr_allow in
            withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_allow_rmb_select,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_allow_rmb_select: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_allow_rmb_select").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getAllowRmbSelect() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_allow_rmb_select,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_allow_reselect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_allow_reselect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setAllowReselect(
        allow: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: allow) { __ptr_allow in
            withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_allow_reselect,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_allow_reselect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_allow_reselect").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getAllowReselect() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_allow_reselect,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    internal static var __method_binding_set_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "set_allow_search").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
            }
        }
    }()
    
    private func __setAllowSearch(
        allow: Bool
    ) {
        withTransferrableUnsafeRawPointer(to: allow) { __ptr_allow in
            withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_allow_search,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }
    
    internal static var __method_binding_get_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: "get_allow_search").withUnsafeOpaquePointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
            }
        }
    }()
    
    private func __getAllowSearch() -> Bool {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_allow_search,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }
    
    public var columns: Int32 {
        get {
            __getColumns()
        }
        set(newValue) {
            __setColumns(
                amount: newValue
            )
        }
    }
    
    public var areColumnTitlesVisible: Bool {
        get {
            __areColumnTitlesVisible()
        }
        set(newValue) {
            __setColumnTitlesVisible(
                newValue
            )
        }
    }
    
    public var allowReselect: Bool {
        get {
            __getAllowReselect()
        }
        set(newValue) {
            __setAllowReselect(
                allow: newValue
            )
        }
    }
    
    public var allowRmbSelect: Bool {
        get {
            __getAllowRmbSelect()
        }
        set(newValue) {
            __setAllowRmbSelect(
                allow: newValue
            )
        }
    }
    
    public var allowSearch: Bool {
        get {
            __getAllowSearch()
        }
        set(newValue) {
            __setAllowSearch(
                allow: newValue
            )
        }
    }
    
    public var isFoldingHidden: Bool {
        get {
            __isFoldingHidden()
        }
        set(newValue) {
            __setHideFolding(
                hide: newValue
            )
        }
    }
    
    public var isRecursiveFoldingEnabled: Bool {
        get {
            __isRecursiveFoldingEnabled()
        }
        set(newValue) {
            __setEnableRecursiveFolding(
                enable: newValue
            )
        }
    }
    
    public var isRootHidden: Bool {
        get {
            __isRootHidden()
        }
        set(newValue) {
            __setHideRoot(
                enable: newValue
            )
        }
    }
    
    public var dropModeFlags: Int32 {
        get {
            __getDropModeFlags()
        }
        set(newValue) {
            __setDropModeFlags(
                newValue
            )
        }
    }
    
    public var selectMode: Godot.Tree.SelectMode {
        get {
            __getSelectMode()
        }
        set(newValue) {
            __setSelectMode(
                newValue
            )
        }
    }
    
    public var isHScrollEnabled: Bool {
        get {
            __isHScrollEnabled()
        }
        set(newValue) {
            __setHScrollEnabled(
                hScroll: newValue
            )
        }
    }
    
    public var isVScrollEnabled: Bool {
        get {
            __isVScrollEnabled()
        }
        set(newValue) {
            __setVScrollEnabled(
                hScroll: newValue
            )
        }
    }
    
    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [:]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions![key] = value
        }
        return _virtualFunctions!
    }
}