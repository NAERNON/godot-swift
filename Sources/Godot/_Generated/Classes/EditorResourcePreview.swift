//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class EditorResourcePreview: Node {
    public struct PreviewInvalidatedSignalInput: Godot.SignalInput {
        public let path: Godot.GodotString
        fileprivate init(path: Godot.GodotString) {
            self.path = path
        }
        public static func arguments(from input: Self) -> [Variant] {
            [Variant(input.path)]
        }
    }
    public func previewInvalidated(path: Godot.GodotString) {
        _ = previewInvalidatedSignal.emit(.init(path: path))
    }
    public lazy var previewInvalidatedSignal: Godot.SignalEmitter<PreviewInvalidatedSignalInput> = {
        .init(object: self, signalName: "preview_invalidated") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PreviewInvalidatedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(path: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PreviewInvalidatedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PreviewInvalidatedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_queue_resource_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_resource_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 233177534)!
        }
        }
    }()
    public func queueResourcePreview<Value: VariantStorableIn>(path: Godot.GodotString, receiver: Godot.Object?, receiverFunc: Godot.GodotStringName, userdata: Value) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        receiver.withGodotUnsafeRawPointer { __ptr_receiver in
        withUnsafePointer(to: __ptr_receiver) { _ptr___ptr_receiver in
        receiverFunc.withGodotUnsafeRawPointer { __ptr_receiverFunc in
        Godot.Variant.withStorageUnsafeRawPointer(to: userdata) { __ptr_userdata in
        withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_receiver, __ptr_receiverFunc, __ptr_userdata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_resource_preview,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    internal static var __method_binding_queue_edited_resource_preview: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "queue_edited_resource_preview").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1608376650)!
        }
        }
    }()
    public func queueEditedResourcePreview<Value: VariantStorableIn>(resource: Godot.Resource?, receiver: Godot.Object?, receiverFunc: Godot.GodotStringName, userdata: Value) {
        resource.withGodotUnsafeRawPointer { __ptr_resource in
        withUnsafePointer(to: __ptr_resource) { _ptr___ptr_resource in
        receiver.withGodotUnsafeRawPointer { __ptr_receiver in
        withUnsafePointer(to: __ptr_receiver) { _ptr___ptr_receiver in
        receiverFunc.withGodotUnsafeRawPointer { __ptr_receiverFunc in
        Godot.Variant.withStorageUnsafeRawPointer(to: userdata) { __ptr_userdata in
        withUnsafeArgumentPackPointer(_ptr___ptr_resource, _ptr___ptr_receiver, __ptr_receiverFunc, __ptr_userdata) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_queue_edited_resource_preview,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    internal static var __method_binding_add_preview_generator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_preview_generator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 332288124)!
        }
        }
    }()
    public func addPreviewGenerator(_ generator: Godot.EditorResourcePreviewGenerator?) {
        generator.withGodotUnsafeRawPointer { __ptr_generator in
        withUnsafePointer(to: __ptr_generator) { _ptr___ptr_generator in
        withUnsafeArgumentPackPointer(_ptr___ptr_generator) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_preview_generator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_remove_preview_generator: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_preview_generator").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 332288124)!
        }
        }
    }()
    public func removePreviewGenerator(_ generator: Godot.EditorResourcePreviewGenerator?) {
        generator.withGodotUnsafeRawPointer { __ptr_generator in
        withUnsafePointer(to: __ptr_generator) { _ptr___ptr_generator in
        withUnsafeArgumentPackPointer(_ptr___ptr_generator) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_preview_generator,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_check_for_invalidation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "check_for_invalidation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func checkForInvalidation(path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_check_for_invalidation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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