//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorInspector: ScrollContainer {
    public struct PropertySelectedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotString
        fileprivate init(property: Godot.GodotString) {
            self.property = property
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, property)
        }
    }
    public func propertySelected(property: Godot.GodotString) {
        _ = propertySelectedSignal.emit(.init(property: property))
    }
    public lazy var propertySelectedSignal: Godot.SignalEmitter<PropertySelectedSignalInput> = {
        .init(object: self, signalName: "property_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertySelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertySelectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertySelectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyKeyedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotString
        public let value: Godot.Variant
        public let advance: Bool
        fileprivate init(property: Godot.GodotString, value: Godot.Variant, advance: Bool) {
            self.property = property
            self.value = value
            self.advance = advance
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, property, value, advance)
        }
    }
    public func propertyKeyed(property: Godot.GodotString, value: Godot.Variant, advance: Bool) {
        _ = propertyKeyedSignal.emit(.init(property: property,
                value: value,
                advance: advance))
    }
    public lazy var propertyKeyedSignal: Godot.SignalEmitter<PropertyKeyedSignalInput> = {
        .init(object: self, signalName: "property_keyed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyKeyedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Godot.Variant.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    advance: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
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
        public let property: Godot.GodotString
        fileprivate init(property: Godot.GodotString) {
            self.property = property
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, property)
        }
    }
    public func propertyDeleted(property: Godot.GodotString) {
        _ = propertyDeletedSignal.emit(.init(property: property))
    }
    public lazy var propertyDeletedSignal: Godot.SignalEmitter<PropertyDeletedSignalInput> = {
        .init(object: self, signalName: "property_deleted") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyDeletedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
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

    public struct ResourceSelectedSignalInput: Godot.SignalInput {
        public let resource: Godot.Resource?
        public let path: Godot.GodotString
        fileprivate init(resource: Godot.Resource?, path: Godot.GodotString) {
            self.resource = resource
            self.path = path
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, resource, path)
        }
    }
    public func resourceSelected(resource: Godot.Resource?, path: Godot.GodotString) {
        _ = resourceSelectedSignal.emit(.init(resource: resource,
                path: path))
    }
    public lazy var resourceSelectedSignal: Godot.SignalEmitter<ResourceSelectedSignalInput> = {
        .init(object: self, signalName: "resource_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ResourceSelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(resource: Godot.Resource?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    path: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
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
        public let id: Int
        fileprivate init(id: Int) {
            self.id = id
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, id)
        }
    }
    public func objectIdSelected(id: Int) {
        _ = objectIdSelectedSignal.emit(.init(id: id))
    }
    public lazy var objectIdSelectedSignal: Godot.SignalEmitter<ObjectIdSelectedSignalInput> = {
        .init(object: self, signalName: "object_id_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ObjectIdSelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(id: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
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

    public struct PropertyEditedSignalInput: Godot.SignalInput {
        public let property: Godot.GodotString
        fileprivate init(property: Godot.GodotString) {
            self.property = property
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, property)
        }
    }
    public func propertyEdited(property: Godot.GodotString) {
        _ = propertyEditedSignal.emit(.init(property: property))
    }
    public lazy var propertyEditedSignal: Godot.SignalEmitter<PropertyEditedSignalInput> = {
        .init(object: self, signalName: "property_edited") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyEditedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyEditedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyEditedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PropertyToggledSignalInput: Godot.SignalInput {
        public let property: Godot.GodotString
        public let checked: Bool
        fileprivate init(property: Godot.GodotString, checked: Bool) {
            self.property = property
            self.checked = checked
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, property, checked)
        }
    }
    public func propertyToggled(property: Godot.GodotString, checked: Bool) {
        _ = propertyToggledSignal.emit(.init(property: property,
                checked: checked))
    }
    public lazy var propertyToggledSignal: Godot.SignalEmitter<PropertyToggledSignalInput> = {
        .init(object: self, signalName: "property_toggled") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PropertyToggledSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(property: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    checked: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PropertyToggledSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PropertyToggledSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func editedObjectChanged() {
        _ = editedObjectChangedSignal.emit()
    }
    public lazy var editedObjectChangedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "edited_object_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func restartRequested() {
        _ = restartRequestedSignal.emit()
    }
    public lazy var restartRequestedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "restart_requested") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_get_selected_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_selected_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func selectedPath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_selected_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_edited_object: GDExtensionMethodBindPtr = {
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