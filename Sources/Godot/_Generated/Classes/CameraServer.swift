//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class CameraServer: Object {
    public enum FeedImage: UInt32, GodotEnum {
        case rgbaImage = 0

        public static let ycbcrImage: Self = .rgbaImage

        public static let yImage: Self = .rgbaImage
        case cbcrImage = 1

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Rgba Image", 0),
            ("Cbcr Image", 1),]
        }
    }

    public struct CameraFeedAddedSignalInput: Godot.SignalInput {
        public let id: Int

        fileprivate init(
            id: Int
        ) {
            self.id = id
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.id)]
        }
    }

    public func cameraFeedAdded(
        id: Int
    ) {
        _ = cameraFeedAddedSignal.emit(.init(id: id))
    }

    public lazy var cameraFeedAddedSignal: Godot.SignalEmitter<CameraFeedAddedSignalInput> = {
        .init(object: self, signalName: "camera_feed_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<CameraFeedAddedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(id: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<CameraFeedAddedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<CameraFeedAddedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct CameraFeedRemovedSignalInput: Godot.SignalInput {
        public let id: Int

        fileprivate init(
            id: Int
        ) {
            self.id = id
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.id)]
        }
    }

    public func cameraFeedRemoved(
        id: Int
    ) {
        _ = cameraFeedRemovedSignal.emit(.init(id: id))
    }

    public lazy var cameraFeedRemovedSignal: Godot.SignalEmitter<CameraFeedRemovedSignalInput> = {
        .init(object: self, signalName: "camera_feed_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<CameraFeedRemovedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(id: Int.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<CameraFeedRemovedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<CameraFeedRemovedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_get_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 361927068)!
        }
        }
    }()

    public func feed(
        index: Int32
    ) -> Godot.CameraFeed? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
                withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_feed,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_feed_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed_count").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()

    public func feedCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_feed_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_feeds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "feeds").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()

    public func feeds() -> Godot.GodotArray<Godot.CameraFeed?> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_feeds,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_add_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_feed").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()

    public func addFeed(
        _ feed: Godot.CameraFeed?
    ) {
        withTransferrableUnsafeRawPointer(to: feed) { __ptr_feed in
            withUnsafePointer(to: __ptr_feed) { _ptr___ptr_feed in
                withUnsafeArgumentPackPointer(_ptr___ptr_feed) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_feed,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_remove_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_feed").withUnsafeOpaquePointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()

    public func removeFeed(
        _ feed: Godot.CameraFeed?
    ) {
        withTransferrableUnsafeRawPointer(to: feed) { __ptr_feed in
            withUnsafePointer(to: __ptr_feed) { _ptr___ptr_feed in
                withUnsafeArgumentPackPointer(_ptr___ptr_feed) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_remove_feed,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
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
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}