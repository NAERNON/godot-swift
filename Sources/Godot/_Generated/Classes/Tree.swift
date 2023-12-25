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
            ("Multi", 2),]
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
            ("Inbetween", 2),]
        }
    }

    public func itemSelected() {
        itemSelectedConnector.emit()
    }

    public private (set) lazy var itemSelectedConnector: Godot.SignalConnector
    <> = {
        .init(self, "item_selected")
    }()


    public func cellSelected() {
        cellSelectedConnector.emit()
    }

    public private (set) lazy var cellSelectedConnector: Godot.SignalConnector
    <> = {
        .init(self, "cell_selected")
    }()


    public func multiSelected(item: Godot.TreeItem?, column: Int, selected: Bool) {
        multiSelectedConnector.emit(item, column, selected)
    }

    public private (set) lazy var multiSelectedConnector: Godot.SignalConnector<Godot.TreeItem?, Int, Bool> = {
        .init(self, "multi_selected")
    }()

    public func itemMouseSelected(position: Godot.Vector2, mouseButtonIndex: Int) {
        itemMouseSelectedConnector.emit(position, mouseButtonIndex)
    }

    public private (set) lazy var itemMouseSelectedConnector: Godot.SignalConnector<Godot.Vector2, Int> = {
        .init(self, "item_mouse_selected")
    }()

    public func emptyClicked(position: Godot.Vector2, mouseButtonIndex: Int) {
        emptyClickedConnector.emit(position, mouseButtonIndex)
    }

    public private (set) lazy var emptyClickedConnector: Godot.SignalConnector<Godot.Vector2, Int> = {
        .init(self, "empty_clicked")
    }()

    public func itemEdited() {
        itemEditedConnector.emit()
    }

    public private (set) lazy var itemEditedConnector: Godot.SignalConnector
    <> = {
        .init(self, "item_edited")
    }()


    public func customItemClicked(mouseButtonIndex: Int) {
        customItemClickedConnector.emit(mouseButtonIndex)
    }

    public private (set) lazy var customItemClickedConnector: Godot.SignalConnector<Int> = {
        .init(self, "custom_item_clicked")
    }()

    public func itemIconDoubleClicked() {
        itemIconDoubleClickedConnector.emit()
    }

    public private (set) lazy var itemIconDoubleClickedConnector: Godot.SignalConnector
    <> = {
        .init(self, "item_icon_double_clicked")
    }()


    public func itemCollapsed(item: Godot.TreeItem?) {
        itemCollapsedConnector.emit(item)
    }

    public private (set) lazy var itemCollapsedConnector: Godot.SignalConnector<Godot.TreeItem?> = {
        .init(self, "item_collapsed")
    }()

    public func checkPropagatedToItem(item: Godot.TreeItem?, column: Int) {
        checkPropagatedToItemConnector.emit(item, column)
    }

    public private (set) lazy var checkPropagatedToItemConnector: Godot.SignalConnector<Godot.TreeItem?, Int> = {
        .init(self, "check_propagated_to_item")
    }()

    public func buttonClicked(item: Godot.TreeItem?, column: Int, id: Int, mouseButtonIndex: Int) {
        buttonClickedConnector.emit(item, column, id, mouseButtonIndex)
    }

    public private (set) lazy var buttonClickedConnector: Godot.SignalConnector<Godot.TreeItem?, Int, Int, Int> = {
        .init(self, "button_clicked")
    }()

    public func customPopupEdited(arrowClicked: Bool) {
        customPopupEditedConnector.emit(arrowClicked)
    }

    public private (set) lazy var customPopupEditedConnector: Godot.SignalConnector<Bool> = {
        .init(self, "custom_popup_edited")
    }()

    public func itemActivated() {
        itemActivatedConnector.emit()
    }

    public private (set) lazy var itemActivatedConnector: Godot.SignalConnector
    <> = {
        .init(self, "item_activated")
    }()


    public func columnTitleClicked(column: Int, mouseButtonIndex: Int) {
        columnTitleClickedConnector.emit(column, mouseButtonIndex)
    }

    public private (set) lazy var columnTitleClickedConnector: Godot.SignalConnector<Int, Int> = {
        .init(self, "column_title_clicked")
    }()

    public func nothingSelected() {
        nothingSelectedConnector.emit()
    }

    public private (set) lazy var nothingSelectedConnector: Godot.SignalConnector
    <> = {
        .init(self, "nothing_selected")
    }()


    private static var __method_binding_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clear() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_clear,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_create_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 528467046)!
        }
        }
    }()
    public func createItem(parent: Godot.TreeItem? = nil, index: Int32 = -1) -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        parent.withGodotUnsafeRawPointer { __ptr_parent in
        withUnsafePointer(to: __ptr_parent) { _ptr___ptr_parent in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(_ptr___ptr_parent, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_item,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1514277247)!
        }
        }
    }()
    public func root() -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_root,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_column_custom_minimum_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_custom_minimum_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setColumnCustomMinimumWidth(column: Int32, minWidth: Int32) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        minWidth.withGodotUnsafeRawPointer { __ptr_minWidth in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_minWidth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_custom_minimum_width,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_column_expand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_expand").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setColumnExpand(column: Int32, expand: Bool) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        expand.withGodotUnsafeRawPointer { __ptr_expand in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_expand) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_expand,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_column_expand_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_expand_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func setColumnExpandRatio(column: Int32, ratio: Int32) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_expand_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_set_column_clip_content: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_clip_content").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setColumnClipContent(column: Int32, enable: Bool) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_clip_content,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_column_expanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_column_expanding").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isColumnExpanding(column: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_column_expanding,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_is_column_clipping_content: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_column_clipping_content").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func isColumnClippingContent(column: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_column_clipping_content,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_column_expand_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_expand_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func columnExpandRatio(column: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_expand_ratio,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_column_width: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_width").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func columnWidth(column: Int32) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_width,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_hide_root: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_root").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideRoot(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_root,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_root_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_root_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRootHidden() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_root_hidden,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_next_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_next_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 873446299)!
        }
        }
    }()
    public func nextSelected(from: Godot.TreeItem?) -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        withUnsafePointer(to: __ptr_from) { _ptr___ptr_from in
        withUnsafeArgumentPackPointer(_ptr___ptr_from) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_next_selected,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1514277247)!
        }
        }
    }()
    public func selected() -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_selected,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2662547442)!
        }
        }
    }()
    public func setSelected(item: Godot.TreeItem?, column: Int32) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_selected,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_selected_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func selectedColumn() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_selected_column,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_pressed_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_pressed_button").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func pressedButton() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_pressed_button,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_select_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_select_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3223887270)!
        }
        }
    }()
    private func __setSelectMode(_ mode: Godot.Tree.SelectMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_select_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_select_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_select_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 100748571)!
        }
        }
    }()
    private func __getSelectMode() -> Godot.Tree.SelectMode {
        Godot.Tree.SelectMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_select_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_deselect_all: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "deselect_all").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func deselectAll() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_deselect_all,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_columns").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setColumns(amount: Int32) {
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_columns,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_columns: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_columns").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getColumns() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_columns,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_edited: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1514277247)!
        }
        }
    }()
    public func edited() -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_edited,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_edited_column: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_column").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func editedColumn() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_edited_column,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_edit_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "edit_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2595650253)!
        }
        }
    }()
    public func editSelected(forceEdit: Bool = false) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        forceEdit.withGodotUnsafeRawPointer { __ptr_forceEdit in
        withUnsafeArgumentPackPointer(__ptr_forceEdit) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_edit_selected,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_custom_popup_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_custom_popup_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func customPopupRect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_custom_popup_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_item_area_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_area_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 47968679)!
        }
        }
    }()
    public func itemAreaRect(item: Godot.TreeItem?, column: Int32 = -1, buttonIndex: Int32 = -1) -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        item.withGodotUnsafeRawPointer { __ptr_item in
        withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
        column.withGodotUnsafeRawPointer { __ptr_column in
        buttonIndex.withGodotUnsafeRawPointer { __ptr_buttonIndex in
        withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_column, __ptr_buttonIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_area_rect,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_get_item_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_item_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4193340126)!
        }
        }
    }()
    public func itemAtPosition(_ position: Godot.Vector2) -> Godot.TreeItem? {
        Godot.TreeItem?.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_item_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_column_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()
    public func columnAtPosition(_ position: Godot.Vector2) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_drop_section_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_drop_section_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()
    public func dropSectionAtPosition(_ position: Godot.Vector2) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_drop_section_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_button_id_at_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_button_id_at_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3820158470)!
        }
        }
    }()
    public func buttonIdAtPosition(_ position: Godot.Vector2) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_button_id_at_position,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_ensure_cursor_is_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "ensure_cursor_is_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func ensureCursorIsVisible() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_ensure_cursor_is_visible,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_column_titles_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_titles_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setColumnTitlesVisible(_ visible: Bool) {
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_titles_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_are_column_titles_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "are_column_titles_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __areColumnTitlesVisible() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_are_column_titles_visible,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_column_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setColumnTitle(column: Int32, title: Godot.GodotString) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        title.withGodotUnsafeRawPointer { __ptr_title in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_title) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_title,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_column_title: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_title").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func columnTitle(column: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_title,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_column_title_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_title_alignment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3276431499)!
        }
        }
    }()
    public func setColumnTitleAlignment(column: Int32, titleAlignment: Godot.HorizontalAlignment) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        titleAlignment.withGodotUnsafeRawPointer { __ptr_titleAlignment in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_titleAlignment) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_title_alignment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_column_title_alignment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_title_alignment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4171562184)!
        }
        }
    }()
    public func columnTitleAlignment(column: Int32) -> Godot.HorizontalAlignment {
        Godot.HorizontalAlignment.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_title_alignment,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_column_title_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_title_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1707680378)!
        }
        }
    }()
    public func setColumnTitleDirection(column: Int32, direction: Godot.Control.TextDirection) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        direction.withGodotUnsafeRawPointer { __ptr_direction in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_direction) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_title_direction,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_column_title_direction: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_title_direction").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4235602388)!
        }
        }
    }()
    public func columnTitleDirection(column: Int32) -> Godot.Control.TextDirection {
        Godot.Control.TextDirection.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_title_direction,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_column_title_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_column_title_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501894301)!
        }
        }
    }()
    public func setColumnTitleLanguage(column: Int32, language: Godot.GodotString) {
        column.withGodotUnsafeRawPointer { __ptr_column in
        language.withGodotUnsafeRawPointer { __ptr_language in
        withUnsafeArgumentPackPointer(__ptr_column, __ptr_language) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_column_title_language,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_column_title_language: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_column_title_language").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func columnTitleLanguage(column: Int32) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        column.withGodotUnsafeRawPointer { __ptr_column in
        withUnsafeArgumentPackPointer(__ptr_column) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_column_title_language,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_scroll: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scroll").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func scroll() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_scroll,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_scroll_to_item: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scroll_to_item").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1314737213)!
        }
        }
    }()
    public func scrollToItem(_ item: Godot.TreeItem?, centerOnItem: Bool = false) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        withUnsafePointer(to: __ptr_item) { _ptr___ptr_item in
        centerOnItem.withGodotUnsafeRawPointer { __ptr_centerOnItem in
        withUnsafeArgumentPackPointer(_ptr___ptr_item, __ptr_centerOnItem) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scroll_to_item,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_set_h_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_h_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHScrollEnabled(hScroll: Bool) {
        hScroll.withGodotUnsafeRawPointer { __ptr_hScroll in
        withUnsafeArgumentPackPointer(__ptr_hScroll) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_h_scroll_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_h_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_h_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHScrollEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_h_scroll_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_v_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_v_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setVScrollEnabled(hScroll: Bool) {
        hScroll.withGodotUnsafeRawPointer { __ptr_hScroll in
        withUnsafeArgumentPackPointer(__ptr_hScroll) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_v_scroll_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_v_scroll_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_v_scroll_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isVScrollEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_v_scroll_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_hide_folding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_hide_folding").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHideFolding(hide: Bool) {
        hide.withGodotUnsafeRawPointer { __ptr_hide in
        withUnsafeArgumentPackPointer(__ptr_hide) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_hide_folding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_folding_hidden: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_folding_hidden").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isFoldingHidden() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_folding_hidden,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_enable_recursive_folding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_enable_recursive_folding").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEnableRecursiveFolding(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_enable_recursive_folding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_recursive_folding_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_recursive_folding_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRecursiveFoldingEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_recursive_folding_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_drop_mode_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_drop_mode_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setDropModeFlags(_ flags: Int32) {
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(__ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_drop_mode_flags,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_drop_mode_flags: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_drop_mode_flags").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getDropModeFlags() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_drop_mode_flags,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_rmb_select: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_rmb_select").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowRmbSelect(allow: Bool) {
        allow.withGodotUnsafeRawPointer { __ptr_allow in
        withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_allow_rmb_select,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_allow_rmb_select: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_allow_rmb_select").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getAllowRmbSelect() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_allow_rmb_select,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_reselect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_reselect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowReselect(allow: Bool) {
        allow.withGodotUnsafeRawPointer { __ptr_allow in
        withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_allow_reselect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_allow_reselect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_allow_reselect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getAllowReselect() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_allow_reselect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_allow_search").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAllowSearch(allow: Bool) {
        allow.withGodotUnsafeRawPointer { __ptr_allow in
        withUnsafeArgumentPackPointer(__ptr_allow) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_allow_search,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_allow_search: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_allow_search").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getAllowSearch() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_allow_search,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var columns: Int32 {
        get {
            __getColumns()
        }
        set {
            __setColumns(
                amount: newValue
            )
        }
    }

    public var areColumnTitlesVisible: Bool {
        get {
            __areColumnTitlesVisible()
        }
        set {
            __setColumnTitlesVisible(
                newValue
            )
        }
    }

    public var allowReselect: Bool {
        get {
            __getAllowReselect()
        }
        set {
            __setAllowReselect(
                allow: newValue
            )
        }
    }

    public var allowRmbSelect: Bool {
        get {
            __getAllowRmbSelect()
        }
        set {
            __setAllowRmbSelect(
                allow: newValue
            )
        }
    }

    public var allowSearch: Bool {
        get {
            __getAllowSearch()
        }
        set {
            __setAllowSearch(
                allow: newValue
            )
        }
    }

    public var isFoldingHidden: Bool {
        get {
            __isFoldingHidden()
        }
        set {
            __setHideFolding(
                hide: newValue
            )
        }
    }

    public var isRecursiveFoldingEnabled: Bool {
        get {
            __isRecursiveFoldingEnabled()
        }
        set {
            __setEnableRecursiveFolding(
                enable: newValue
            )
        }
    }

    public var isRootHidden: Bool {
        get {
            __isRootHidden()
        }
        set {
            __setHideRoot(
                enable: newValue
            )
        }
    }

    public var dropModeFlags: Int32 {
        get {
            __getDropModeFlags()
        }
        set {
            __setDropModeFlags(
                newValue
            )
        }
    }

    public var selectMode: Godot.Tree.SelectMode {
        get {
            __getSelectMode()
        }
        set {
            __setSelectMode(
                newValue
            )
        }
    }

    public var isHScrollEnabled: Bool {
        get {
            __isHScrollEnabled()
        }
        set {
            __setHScrollEnabled(
                hScroll: newValue
            )
        }
    }

    public var isVScrollEnabled: Bool {
        get {
            __isVScrollEnabled()
        }
        set {
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }