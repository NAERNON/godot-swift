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

    @Emitter(signal: "camera_feed_added", args: ("id", Int))
    public struct CameraFeedAdded {
    }

    @Emitter(signal: "camera_feed_removed", args: ("id", Int))
    public struct CameraFeedRemoved {
    }

    private static var __method_binding_get_feed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 361927068)!
        }
        }
    }()
    public func feed(index: Int32) -> Godot.CameraFeed? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_feed,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return Godot.CameraFeed.retrievedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_get_feed_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_feed_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func feedCount() -> Int32 {
        var __temporary = Int32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_feed_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_feeds: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "feeds").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2915620761)!
        }
        }
    }()
    public func feeds() -> Godot.GodotTypedArray<Godot.CameraFeed?> {
        let __temporary = Godot.GodotTypedArray<Godot.CameraFeed?>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_feeds,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_add_feed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_feed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()
    public func addFeed(_ feed: Godot.CameraFeed?) {
        feed.withUnsafeRawPointer { (__ptr_feed) in
            withUnsafePointer(to: __ptr_feed) { (_ptr___ptr_feed) in
                withUnsafeArgumentPackPointer(_ptr___ptr_feed) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
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

    private static var __method_binding_remove_feed: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_feed").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3204782488)!
        }
        }
    }()
    public func removeFeed(_ feed: Godot.CameraFeed?) {
        feed.withUnsafeRawPointer { (__ptr_feed) in
            withUnsafePointer(to: __ptr_feed) { (_ptr___ptr_feed) in
                withUnsafeArgumentPackPointer(_ptr___ptr_feed) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
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