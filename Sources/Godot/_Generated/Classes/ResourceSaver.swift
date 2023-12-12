//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class ResourceSaver: Object {
    public struct SaverFlags: GodotOptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let relativePaths: Self = .init(rawValue: 1)
        public static let bundleResources: Self = .init(rawValue: 2)
        public static let changePath: Self = .init(rawValue: 4)
        public static let omitEditorProperties: Self = .init(rawValue: 8)
        public static let saveBigEndian: Self = .init(rawValue: 16)
        public static let compress: Self = .init(rawValue: 32)
        public static let replaceSubresourcePaths: Self = .init(rawValue: 64)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Relative Paths", 1),
            ("Bundle Resources", 2),
            ("Change Path", 4),
            ("Omit Editor Properties", 8),
            ("Save Big Endian", 16),
            ("Compress", 32),
            ("Replace Subresource Paths", 64),]
        }
    }

    private static var __method_binding_save: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "save").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2303056517)!
        }
        }
    }()
    public func save(resource: Godot.Resource?, path: Godot.GodotString = "", flags: Godot.ResourceSaver.SaverFlags = ResourceSaver.SaverFlags(rawValue: 0)) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        resource.withGodotUnsafeRawPointer { __ptr_resource in
        withUnsafePointer(to: __ptr_resource) { _ptr___ptr_resource in
        path.withGodotUnsafeRawPointer { __ptr_path in
        flags.withGodotUnsafeRawPointer { __ptr_flags in
        withUnsafeArgumentPackPointer(_ptr___ptr_resource, __ptr_path, __ptr_flags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_save,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_get_recognized_extensions: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_recognized_extensions").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4223597960)!
        }
        }
    }()
    public func recognizedExtensions(type: Godot.Resource?) -> Godot.PackedStringArray {
        Godot.PackedStringArray.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafePointer(to: __ptr_type) { _ptr___ptr_type in
        withUnsafeArgumentPackPointer(_ptr___ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_recognized_extensions,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_add_resource_format_saver: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_resource_format_saver").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 362894272)!
        }
        }
    }()
    public func addResourceFormatSaver(_ formatSaver: Godot.ResourceFormatSaver?, atFront front: Bool = false) {
        formatSaver.withGodotUnsafeRawPointer { __ptr_formatSaver in
        withUnsafePointer(to: __ptr_formatSaver) { _ptr___ptr_formatSaver in
        front.withGodotUnsafeRawPointer { __ptr_front in
        withUnsafeArgumentPackPointer(_ptr___ptr_formatSaver, __ptr_front) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_add_resource_format_saver,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_remove_resource_format_saver: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_resource_format_saver").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3373026878)!
        }
        }
    }()
    public func removeResourceFormatSaver(_ formatSaver: Godot.ResourceFormatSaver?) {
        formatSaver.withGodotUnsafeRawPointer { __ptr_formatSaver in
        withUnsafePointer(to: __ptr_formatSaver) { _ptr___ptr_formatSaver in
        withUnsafeArgumentPackPointer(_ptr___ptr_formatSaver) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_remove_resource_format_saver,
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