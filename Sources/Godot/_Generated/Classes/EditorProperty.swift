//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorProperty: Container {
    public struct PropertyChangedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let value: Godot.Variant
        public let field: Godot.GodotStringName
        public let changing: Bool
        fileprivate init(property: Godot.GodotStringName, value: Godot.Variant, field: Godot.GodotStringName, changing: Bool) {
            self.property = property
            self.value = value
            self.field = field
            self.changing = changing
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.value), Variant(input.field), Variant(input.changing)]
        }
    }
    public func propertyChanged(property: Godot.GodotStringName, value: Godot.Variant, field: Godot.GodotStringName, changing: Bool) {
        _ = propertyChangedSignal.emit(.init(property: property,
                value: value,
                field: field,
                changing: changing))
    }
    public lazy var propertyChangedSignal: Godot.SignalEmitter<PropertyChangedSignalInput> = {
        .init(object: self, signalName: "property_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Godot.Variant.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    field: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!)),
                    changing: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 3).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct MultiplePropertiesChangedSignalInput: Godot.SignalInput {
        public let properties: Godot.PackedStringArray
        public let value: Godot.AnyGodotArray
        fileprivate init(properties: Godot.PackedStringArray, value: Godot.AnyGodotArray) {
            self.properties = properties
            self.value = value
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.properties), Variant(input.value)]
        }
    }
    public func multiplePropertiesChanged(properties: Godot.PackedStringArray, value: Godot.AnyGodotArray) {
        _ = multiplePropertiesChangedSignal.emit(.init(properties: properties,
                value: value))
    }
    public lazy var multiplePropertiesChangedSignal: Godot.SignalEmitter<MultiplePropertiesChangedSignalInput> = {
        .init(object: self, signalName: "multiple_properties_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<MultiplePropertiesChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(properties: Godot.PackedStringArray.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Godot.AnyGodotArray.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<MultiplePropertiesChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<MultiplePropertiesChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyKeyedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        fileprivate init(property: Godot.GodotStringName) {
            self.property = property
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property)]
        }
    }
    public func propertyKeyed(property: Godot.GodotStringName) {
        _ = propertyKeyedSignal.emit(.init(property: property))
    }
    public lazy var propertyKeyedSignal: Godot.SignalEmitter<PropertyKeyedSignalInput> = {
        .init(object: self, signalName: "property_keyed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyKeyedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyKeyedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyKeyedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyDeletedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        fileprivate init(property: Godot.GodotStringName) {
            self.property = property
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property)]
        }
    }
    public func propertyDeleted(property: Godot.GodotStringName) {
        _ = propertyDeletedSignal.emit(.init(property: property))
    }
    public lazy var propertyDeletedSignal: Godot.SignalEmitter<PropertyDeletedSignalInput> = {
        .init(object: self, signalName: "property_deleted") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyDeletedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyDeletedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyDeletedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyKeyedWithValueSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let value: Godot.Variant
        fileprivate init(property: Godot.GodotStringName, value: Godot.Variant) {
            self.property = property
            self.value = value
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.value)]
        }
    }
    public func propertyKeyedWithValue(property: Godot.GodotStringName, value: Godot.Variant) {
        _ = propertyKeyedWithValueSignal.emit(.init(property: property,
                value: value))
    }
    public lazy var propertyKeyedWithValueSignal: Godot.SignalEmitter<PropertyKeyedWithValueSignalInput> = {
        .init(object: self, signalName: "property_keyed_with_value") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyKeyedWithValueSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Godot.Variant.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyKeyedWithValueSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyKeyedWithValueSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyCheckedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let checked: Bool
        fileprivate init(property: Godot.GodotStringName, checked: Bool) {
            self.property = property
            self.checked = checked
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.checked)]
        }
    }
    public func propertyChecked(property: Godot.GodotStringName, checked: Bool) {
        _ = propertyCheckedSignal.emit(.init(property: property,
                checked: checked))
    }
    public lazy var propertyCheckedSignal: Godot.SignalEmitter<PropertyCheckedSignalInput> = {
        .init(object: self, signalName: "property_checked") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyCheckedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    checked: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyCheckedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyCheckedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyPinnedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let pinned: Bool
        fileprivate init(property: Godot.GodotStringName, pinned: Bool) {
            self.property = property
            self.pinned = pinned
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.pinned)]
        }
    }
    public func propertyPinned(property: Godot.GodotStringName, pinned: Bool) {
        _ = propertyPinnedSignal.emit(.init(property: property,
                pinned: pinned))
    }
    public lazy var propertyPinnedSignal: Godot.SignalEmitter<PropertyPinnedSignalInput> = {
        .init(object: self, signalName: "property_pinned") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyPinnedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    pinned: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyPinnedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyPinnedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyCanRevertChangedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let canRevert: Bool
        fileprivate init(property: Godot.GodotStringName, canRevert: Bool) {
            self.property = property
            self.canRevert = canRevert
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.canRevert)]
        }
    }
    public func propertyCanRevertChanged(property: Godot.GodotStringName, canRevert: Bool) {
        _ = propertyCanRevertChangedSignal.emit(.init(property: property,
                canRevert: canRevert))
    }
    public lazy var propertyCanRevertChangedSignal: Godot.SignalEmitter<PropertyCanRevertChangedSignalInput> = {
        .init(object: self, signalName: "property_can_revert_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyCanRevertChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    canRevert: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyCanRevertChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyCanRevertChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ResourceSelectedSignalInput: Godot.SignalInput {
        public let path: Godot.GodotString
        public let resource: Godot.Resource?
        fileprivate init(path: Godot.GodotString, resource: Godot.Resource?) {
            self.path = path
            self.resource = resource
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.path), Variant(input.resource)]
        }
    }
    public func resourceSelected(path: Godot.GodotString, resource: Godot.Resource?) {
        _ = resourceSelectedSignal.emit(.init(path: path,
                resource: resource))
    }
    public lazy var resourceSelectedSignal: Godot.SignalEmitter<ResourceSelectedSignalInput> = {
        .init(object: self, signalName: "resource_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ResourceSelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(path: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    resource: Godot.Resource?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ResourceSelectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ResourceSelectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ObjectIdSelectedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotStringName
        public let id: Int
        fileprivate init(property: Godot.GodotStringName, id: Int) {
            self.property = property
            self.id = id
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.property), Variant(input.id)]
        }
    }
    public func objectIdSelected(property: Godot.GodotStringName, id: Int) {
        _ = objectIdSelectedSignal.emit(.init(property: property,
                id: id))
    }
    public lazy var objectIdSelectedSignal: Godot.SignalEmitter<ObjectIdSelectedSignalInput> = {
        .init(object: self, signalName: "object_id_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ObjectIdSelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ObjectIdSelectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ObjectIdSelectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct SelectedSignalInput: Godot.SignalInput {
        public let path: Godot.GodotString
        public let focusableIdx: Int
        fileprivate init(path: Godot.GodotString, focusableIdx: Int) {
            self.path = path
            self.focusableIdx = focusableIdx
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.path), Variant(input.focusableIdx)]
        }
    }
    public func selected(path: Godot.GodotString, focusableIdx: Int) {
        _ = selectedSignal.emit(.init(path: path,
                focusableIdx: focusableIdx))
    }
    public lazy var selectedSignal: Godot.SignalEmitter<SelectedSignalInput> = {
        .init(object: self, signalName: "selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<SelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(path: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    focusableIdx: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<SelectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<SelectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _updateProperty() {
    }

    open func _setReadOnly(_ readOnly: Bool) {
    }

    internal static var __method_binding_set_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setLabel(text: Godot.GodotString) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_label,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_get_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getLabel() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_label,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_read_only: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_read_only").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setReadOnly(_ readOnly: Bool) {
        readOnly.withGodotUnsafeRawPointer { __ptr_readOnly in
        withUnsafeArgumentPackPointer(__ptr_readOnly) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_read_only,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_read_only: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_read_only").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isReadOnly() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_read_only,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setCheckable(_ checkable: Bool) {
        checkable.withGodotUnsafeRawPointer { __ptr_checkable in
        withUnsafeArgumentPackPointer(__ptr_checkable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_checkable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_checkable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_checkable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isCheckable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_checkable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setChecked(_ checked: Bool) {
        checked.withGodotUnsafeRawPointer { __ptr_checked in
        withUnsafeArgumentPackPointer(__ptr_checked) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_checked,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_checked: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_checked").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isChecked() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_checked,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_draw_warning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_draw_warning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDrawWarning(_ drawWarning: Bool) {
        drawWarning.withGodotUnsafeRawPointer { __ptr_drawWarning in
        withUnsafeArgumentPackPointer(__ptr_drawWarning) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_draw_warning,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_draw_warning: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_draw_warning").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDrawWarning() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_draw_warning,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_keying: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_keying").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setKeying(_ keying: Bool) {
        keying.withGodotUnsafeRawPointer { __ptr_keying in
        withUnsafeArgumentPackPointer(__ptr_keying) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_keying,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_keying: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_keying").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isKeying() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_keying,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_set_deletable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_deletable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDeletable(_ deletable: Bool) {
        deletable.withGodotUnsafeRawPointer { __ptr_deletable in
        withUnsafeArgumentPackPointer(__ptr_deletable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_deletable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_is_deletable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_deletable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isDeletable() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_deletable,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_edited_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2002593661)!
        }
        }
    }()
    public func editedProperty() -> Godot.GodotStringName {
        Godot.GodotStringName.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_edited_property,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_get_edited_object: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_edited_object").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2050059866)!
        }
        }
    }()
    public func editedObject() -> Godot.Object? {
        Godot.Object?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_edited_object,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    internal static var __method_binding_update_property: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_property").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateProperty() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_property,
            __ptr_self,
            nil,
            nil
        )}
    }

    internal static var __method_binding_add_focusable: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_focusable").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func addFocusable(control: Godot.Control?) {
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(_ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_focusable,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_set_bottom_editor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_bottom_editor").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1496901182)!
        }
        }
    }()
    public func setBottomEditor(_ editor: Godot.Control?) {
        editor.withGodotUnsafeRawPointer { __ptr_editor in
        withUnsafePointer(to: __ptr_editor) { _ptr___ptr_editor in
        withUnsafeArgumentPackPointer(_ptr___ptr_editor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_bottom_editor,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_emit_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "emit_changed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3069422438)!
        }
        }
    }()
    public func emitChanged<Value: VariantStorableIn>(property: Godot.GodotStringName, value: Value, field: Godot.GodotStringName = "", changing: Bool = false) {
        property.withGodotUnsafeRawPointer { __ptr_property in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        field.withGodotUnsafeRawPointer { __ptr_field in
        changing.withGodotUnsafeRawPointer { __ptr_changing in
        withUnsafeArgumentPackPointer(__ptr_property, __ptr_value, __ptr_field, __ptr_changing) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_emit_changed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    public var label: Godot.GodotString {
        get {
            __getLabel()
        }
        set {
            __setLabel(
                text: newValue
            )
        }
    }

    public var isReadOnly: Bool {
        get {
            __isReadOnly()
        }
        set {
            __setReadOnly(
                newValue
            )
        }
    }

    public var isCheckable: Bool {
        get {
            __isCheckable()
        }
        set {
            __setCheckable(
                newValue
            )
        }
    }

    public var isChecked: Bool {
        get {
            __isChecked()
        }
        set {
            __setChecked(
                newValue
            )
        }
    }

    public var isDrawWarning: Bool {
        get {
            __isDrawWarning()
        }
        set {
            __setDrawWarning(
                newValue
            )
        }
    }

    public var isKeying: Bool {
        get {
            __isKeying()
        }
        set {
            __setKeying(
                newValue
            )
        }
    }

    public var isDeletable: Bool {
        get {
            __isDeletable()
        }
        set {
            __setDeletable(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _update_property_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<EditorProperty>.fromOpaque(instancePtr).takeUnretainedValue()
        ._updateProperty()}
        let _set_read_only_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorProperty>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setReadOnly(
            Bool.fromGodotUnsafePointer(args[0]!)
        )}
        _virtualFunctions = [
            "_updateProperty" : ("_update_property", _update_property_call),
            "_setReadOnly" : ("_set_read_only", _set_read_only_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }