//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Slider: Range {
    public func dragStarted() {
        dragStartedConnector.emit()
    }

    public private (set) lazy var dragStartedConnector: Godot.SignalConnector
    <> = {
        .init(self, "drag_started")
    }()


    public func dragEnded(valueChanged: Bool) {
        dragEndedConnector.emit(valueChanged)
    }

    public private (set) lazy var dragEndedConnector: Godot.SignalConnector<Bool> = {
        .init(self, "drag_ended")
    }()

    private static var __method_binding_set_ticks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ticks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setTicks(count: Int32) {
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ticks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_ticks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ticks").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getTicks() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ticks,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_ticks_on_borders: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ticks_on_borders").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getTicksOnBorders() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_ticks_on_borders,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_ticks_on_borders: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_ticks_on_borders").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setTicksOnBorders(ticksOnBorder: Bool) {
        ticksOnBorder.withGodotUnsafeRawPointer { __ptr_ticksOnBorder in
        withUnsafeArgumentPackPointer(__ptr_ticksOnBorder) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_ticks_on_borders,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_set_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_editable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEditable(_ editable: Bool) {
        editable.withGodotUnsafeRawPointer { __ptr_editable in
        withUnsafeArgumentPackPointer(__ptr_editable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_editable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_editable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_editable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isEditable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_editable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scrollable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scrollable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setScrollable(_ scrollable: Bool) {
        scrollable.withGodotUnsafeRawPointer { __ptr_scrollable in
        withUnsafeArgumentPackPointer(__ptr_scrollable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scrollable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_scrollable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_scrollable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isScrollable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_scrollable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var isEditable: Bool {
        get {
            __isEditable()
        }
        set {
            __setEditable(
                newValue
            )
        }
    }

    public var isScrollable: Bool {
        get {
            __isScrollable()
        }
        set {
            __setScrollable(
                newValue
            )
        }
    }

    public var ticks: Int32 {
        get {
            __getTicks()
        }
        set {
            __setTicks(
                count: newValue
            )
        }
    }

    public var ticksOnBorders: Bool {
        get {
            __getTicksOnBorders()
        }
        set {
            __setTicksOnBorders(
                ticksOnBorder: newValue
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