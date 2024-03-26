//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class AnimationLibrary: Resource {
    public struct AnimationAddedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotStringName

        fileprivate init(
            name: Godot.GodotStringName
        ) {
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name)]
        }
    }

    public func animationAdded(
        name: Godot.GodotStringName
    ) {
        _ = animationAddedSignal.emit(.init(name: name))
    }

    public lazy var animationAddedSignal: Godot.SignalEmitter<AnimationAddedSignalInput> = {
        .init(object: self, signalName: "animation_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AnimationAddedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AnimationAddedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AnimationAddedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct AnimationRemovedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotStringName

        fileprivate init(
            name: Godot.GodotStringName
        ) {
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name)]
        }
    }

    public func animationRemoved(
        name: Godot.GodotStringName
    ) {
        _ = animationRemovedSignal.emit(.init(name: name))
    }

    public lazy var animationRemovedSignal: Godot.SignalEmitter<AnimationRemovedSignalInput> = {
        .init(object: self, signalName: "animation_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AnimationRemovedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AnimationRemovedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AnimationRemovedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct AnimationRenamedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotStringName

        public let toName: Godot.GodotStringName

        fileprivate init(
            name: Godot.GodotStringName,
            toName: Godot.GodotStringName
        ) {
            self.name = name
            self.toName = toName
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name), Variant(input.toName)]
        }
    }

    public func animationRenamed(
        name: Godot.GodotStringName,
        toName: Godot.GodotStringName
    ) {
        _ = animationRenamedSignal.emit(.init(name: name,
                toName: toName))
    }

    public lazy var animationRenamedSignal: Godot.SignalEmitter<AnimationRenamedSignalInput> = {
        .init(object: self, signalName: "animation_renamed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AnimationRenamedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    toName: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AnimationRenamedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AnimationRenamedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct AnimationChangedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotStringName

        fileprivate init(
            name: Godot.GodotStringName
        ) {
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name)]
        }
    }

    public func animationChanged(
        name: Godot.GodotStringName
    ) {
        _ = animationChangedSignal.emit(.init(name: name))
    }

    public lazy var animationChangedSignal: Godot.SignalEmitter<AnimationChangedSignalInput> = {
        .init(object: self, signalName: "animation_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<AnimationChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<AnimationChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<AnimationChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_add_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1811855551)!
        }
        }
    }()

    public func addAnimation(
        name: Godot.GodotStringName,
        animation: Godot.Animation?
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        animation.withGodotUnsafeRawPointer { __ptr_animation in
        withUnsafePointer(to: __ptr_animation) { _ptr___ptr_animation in
        withUnsafeArgumentPackPointer(__ptr_name, _ptr___ptr_animation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_animation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_remove_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()

    public func removeAnimation(
        name: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    internal static var __method_binding_rename_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "rename_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3740211285)!
        }
        }
    }()

    public func renameAnimation(
        name: Godot.GodotStringName,
        newname: Godot.GodotStringName
    ) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        newname.withGodotUnsafeRawPointer { __ptr_newname in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_newname) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_rename_animation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    internal static var __method_binding_has_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func hasAnimation(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_animation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_animation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2933122410)!
        }
        }
    }()

    public func animation(
        name: Godot.GodotStringName
    ) -> Godot.Animation? {
        Godot.Animation?.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animation,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_animation_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_animation_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func animationList() -> Godot.GodotArray<Godot.GodotStringName> {
        Godot.GodotArray<Godot.GodotStringName>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_animation_list,
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