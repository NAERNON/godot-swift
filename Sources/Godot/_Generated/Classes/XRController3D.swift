//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class XRController3D: XRNode3D {
    public struct ButtonPressedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString

        fileprivate init(
            name: Godot.GodotString
        ) {
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name)]
        }
    }

    public func buttonPressed(
        name: Godot.GodotString
    ) {
        _ = buttonPressedSignal.emit(.init(name: name))
    }

    public lazy var buttonPressedSignal: Godot.SignalEmitter<ButtonPressedSignalInput> = {
        .init(object: self, signalName: "button_pressed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ButtonPressedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ButtonReleasedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString

        fileprivate init(
            name: Godot.GodotString
        ) {
            self.name = name
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name)]
        }
    }

    public func buttonReleased(
        name: Godot.GodotString
    ) {
        _ = buttonReleasedSignal.emit(.init(name: name))
    }

    public lazy var buttonReleasedSignal: Godot.SignalEmitter<ButtonReleasedSignalInput> = {
        .init(object: self, signalName: "button_released") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ButtonReleasedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InputFloatChangedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString

        public let value: Double

        fileprivate init(
            name: Godot.GodotString,
            value: Double
        ) {
            self.name = name
            self.value = value
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name), Variant(input.value)]
        }
    }

    public func inputFloatChanged(
        name: Godot.GodotString,
        value: Double
    ) {
        _ = inputFloatChangedSignal.emit(.init(name: name,
                value: value))
    }

    public lazy var inputFloatChangedSignal: Godot.SignalEmitter<InputFloatChangedSignalInput> = {
        .init(object: self, signalName: "input_float_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Double.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputFloatChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InputVector2ChangedSignalInput: Godot.SignalInput {
        public let name: Godot.GodotString

        public let value: Godot.Vector2

        fileprivate init(
            name: Godot.GodotString,
            value: Godot.Vector2
        ) {
            self.name = name
            self.value = value
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.name), Variant(input.value)]
        }
    }

    public func inputVector2Changed(
        name: Godot.GodotString,
        value: Godot.Vector2
    ) {
        _ = inputVector2ChangedSignal.emit(.init(name: name,
                value: value))
    }

    public lazy var inputVector2ChangedSignal: Godot.SignalEmitter<InputVector2ChangedSignalInput> = {
        .init(object: self, signalName: "input_vector2_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(name: Godot.GodotString.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    value: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InputVector2ChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_is_button_pressed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_button_pressed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2619796661)!
        }
        }
    }()

    public func isButtonPressed(
        name: Godot.GodotStringName
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_button_pressed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()

    public func input(
        name: Godot.GodotStringName
    ) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_input,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_float: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_float").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2349060816)!
        }
        }
    }()

    public func float(
        name: Godot.GodotStringName
    ) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_float,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_vector2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vector2").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3100822709)!
        }
        }
    }()

    public func vector2(
        name: Godot.GodotStringName
    ) -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vector2,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_tracker_hand: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_tracker_hand").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4181770860)!
        }
        }
    }()

    public func trackerHand() -> Godot.XRPositionalTracker.TrackerHand {
        Godot.XRPositionalTracker.TrackerHand.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_tracker_hand,
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