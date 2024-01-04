//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class EditorResourceTooltipPlugin: RefCounted {
    open func _handles(type: Godot.GodotString) -> Bool {
        Bool()
    }

    open func _makeTooltipForPath(_ path: Godot.GodotString, metadata: Godot.AnyGodotDictionary, base: Godot.Control?) -> Godot.Control? {
        nil
    }

    internal static var __method_binding_request_thumbnail: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_thumbnail").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3245519720)!
        }
        }
    }()
    public func requestThumbnail(path: Godot.GodotString, control: Godot.TextureRect?) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        control.withGodotUnsafeRawPointer { __ptr_control in
        withUnsafePointer(to: __ptr_control) { _ptr___ptr_control in
        withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_control) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_request_thumbnail,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _handles_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorResourceTooltipPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._handles(
            type: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _make_tooltip_for_path_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<EditorResourceTooltipPlugin>.fromOpaque(instancePtr).takeUnretainedValue()
        ._makeTooltipForPath(
            Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            metadata: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!),
            base: Godot.Control?.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_handles" : ("_handles", _handles_call),
            "_makeTooltipForPath" : ("_make_tooltip_for_path", _make_tooltip_for_path_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }