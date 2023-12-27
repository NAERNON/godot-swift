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

    public func cameraFeedAdded(id: Int) {
        cameraFeedAddedConnector.emit(id)
    }

    public private (set) lazy var cameraFeedAddedConnector: Godot.SignalConnector<Int> = {
        .init(self, "camera_feed_added")
    }()

    public func cameraFeedRemoved(id: Int) {
        cameraFeedRemovedConnector.emit(id)
    }

    public private (set) lazy var cameraFeedRemovedConnector: Godot.SignalConnector<Int> = {
        .init(self, "camera_feed_removed")
    }()

    private static var __method_binding_get_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 361927068)!
        }
        }
    }()
    public func feed(index: Int32) -> Godot.CameraFeed? {
        Godot.CameraFeed?.fromMutatingGodotUnsafePointer { __temporary in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_feed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_feed_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func feedCount() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_feed_count,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_feeds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "feeds").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func feeds() -> Godot.GodotArray<Godot.CameraFeed?> {
        Godot.GodotArray<Godot.CameraFeed?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_feeds,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_add_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_feed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()
    public func addFeed(_ feed: Godot.CameraFeed?) {
        feed.withGodotUnsafeRawPointer { __ptr_feed in
        withUnsafePointer(to: __ptr_feed) { _ptr___ptr_feed in
        withUnsafeArgumentPackPointer(_ptr___ptr_feed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_feed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_feed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_feed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()
    public func removeFeed(_ feed: Godot.CameraFeed?) {
        feed.withGodotUnsafeRawPointer { __ptr_feed in
        withUnsafePointer(to: __ptr_feed) { _ptr___ptr_feed in
        withUnsafeArgumentPackPointer(_ptr___ptr_feed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_feed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
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