//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class Resource: RefCounted {
    public func changed() {
        changedConnector.emit()
    }

    public private (set) lazy var changedConnector: Godot.SignalConnector
    <> = {
        .init(self, "changed")
    }()


    public func setupLocalToSceneRequested() {
        setupLocalToSceneRequestedConnector.emit()
    }

    public private (set) lazy var setupLocalToSceneRequestedConnector: Godot.SignalConnector
    <> = {
        .init(self, "setup_local_to_scene_requested")
    }()


    open func _setupLocalToScene() {
    }

    private static var __method_binding_set_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setPath(_ path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_take_over_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "take_over_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func takeOverPath(_ path: Godot.GodotString) {
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_take_over_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getPath() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_path,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    private func __setName(_ name: Godot.GodotString) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_name,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    private func __getName() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func rid() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_rid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_local_to_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_local_to_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setLocalToScene(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_local_to_scene,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_local_to_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_local_to_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isLocalToScene() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_local_to_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_local_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_local_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3160264692)!
        }
        }
    }()
    public func localScene() -> Godot.Node? {
        Godot.Node?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_local_scene,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_setup_local_to_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "setup_local_to_scene").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setupLocalToScene() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_setup_local_to_scene,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_emit_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "emit_changed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func emitChanged() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_emit_changed,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_duplicate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "duplicate").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 482882304)!
        }
        }
    }()
    public func duplicate(subresources: Bool = false) -> Godot.Resource? {
        Godot.Resource?.fromMutatingGodotUnsafePointer { __temporary in
        subresources.withGodotUnsafeRawPointer { __ptr_subresources in
        withUnsafeArgumentPackPointer(__ptr_subresources) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_duplicate,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    public var isLocalToScene: Bool {
        get {
            __isLocalToScene()
        }
        set {
            __setLocalToScene(
                enable: newValue
            )
        }
    }

    public var path: Godot.GodotString {
        get {
            __getPath()
        }
        set {
            __setPath(
                newValue
            )
        }
    }

    public var name: Godot.GodotString {
        get {
            __getName()
        }
        set {
            __setName(
                newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _setup_local_to_scene_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<Resource>.fromOpaque(instancePtr).takeUnretainedValue()
        ._setupLocalToScene()}
        _virtualFunctions = [
            "_setupLocalToScene" : ("_setup_local_to_scene", _setup_local_to_scene_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }