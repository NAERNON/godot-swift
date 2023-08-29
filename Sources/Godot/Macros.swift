
// MARK: - Public macros

/// A macro that enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(memberAttribute)
@attached(member, names:
    named(__exposeToGodot),
    named(__className),
    named(__staticClassName),
    named(__isCustomGodotClass),
    named(__instanceBindingCallbacks)
)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// A macro that enables a member to be exposed
/// to the Godot editor.
///
/// The ``Exposable`` macro attaches the `ExposableMember`
/// macro to every compatible member so you don't have to
/// mark every single member with this macro.
///
/// >important: Only use this node for debugging purposes and
/// on classes marked `@Exposable`.
///
/// ## Use the macro
///
/// Using this macro on a member requires passing the type
/// of class in which the macro is used:
///
/// ```swift
/// @Exposable public class Character: Node {
///     @ExposableMember(Character)
///     public var isSleeping = true
/// }
/// ```
///
/// The macro will create a static method that, once called,
/// registers the member whithin Godot.
/// This function is automatically called inside classes
/// marked `@Exposable`.
@attached(peer, names: prefixed(__godotRegister_))
public macro ExposableMember(_: Object.Type) = #externalMacro(module: "GodotMacros", type: "ExposableMemberMacro")

/// A macro that sets an entry point for Godot.
///
/// The macro automatically conforms the attached type to the ``GodotBridge`` protocol,
/// and creates a C function that will serve as the entry point for Godot.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
@attached(extension, conformances: GodotBridge)
@attached(peer, names: suffixed(_godot_init))
public macro Bridge() = #externalMacro(module: "GodotMacros", type: "BridgeMacro")

/// A macro that enables an enum to be used with Godot.
///
/// The macro automatically conforms the attached enum to the
/// ``VariantConvertible`` protocol, enabling the enum
/// to be used as a type for function parameters and variables for Godot.
///
/// ## Naming convention
///
/// Each case name takes the name of the enum,
/// followed by the case itself, converted to snake case and uppercased.
///
/// ## Use the macro
///
/// A Godot enum must have an `Int64` `RawType`. Here is how the macro is used:
///
/// ```swift
/// @GodotEnum public enum CharacterEmotion: Int64 {
///     // CHARACTER_EMOTION_HAPPY
///     case happy
///     // CHARACTER_EMOTION_NOT_SO_HAPPY
///     case notSoHappy
///     // CHARACTER_EMOTION_SAD
///     case sad
/// }
/// ```
///
/// The enum can then be used as a type for Godot:
///
/// ```swift
/// @Exposable public class Character: Node {
///     // This variable is exposed to Godot
///     public var emotion: CharacterEmotion = .happy
/// }
/// ```
///
/// ## Definition inside an exposable class
///
/// If the enum is defined inside an exposable class, the enum cases
/// will automatically be accessible from the Godot editor.
@attached(extension, conformances: VariantConvertible, names:
    named(variantType),
    named(makeVariant),
    named(fromMatchingTypeVariant),
    named(fromVariant),
    named(godotExposableValues)
)
public macro GodotEnum() = #externalMacro(module: "GodotMacros", type: "GodotEnumMacro")

/// A macro that enables an `OptionSet` to be used with Godot.
///
/// The macro automatically conforms the attached option set to the
/// ``VariantConvertible`` protocol, enabling the option set
/// to be used as a type for function parameters and variables for Godot.
/// It also conforms the option set to the `OptionSet` protocol and provides:
/// - a public `rawValue` constant of type `Int64`
/// - a public `init(rawValue:_)` initializer that sets the `rawValue` constant
///
/// ## Naming convention
///
/// Each case name takes the name of the option set,
/// followed by the case itself, converted to snake case and uppercased.
///
/// ## Use the macro
///
/// A Godot option set must be a `struct`.
/// Every public static variable must be `let` constants,
/// and their type must:
/// - be of the same type as the option set
/// - be explicitly written before the `=` statement
///
/// Use either `Self` or the name of the struct to write the type.
///
/// Here is how the macro is used:
///
/// ```swift
/// @GodotOptionSet public struct CharacterAction {
///     // CHARACTER_ACTION_THINKING
///     public static let thinking: CharacterAction = .init(rawValue: 1 << 0)
///     // CHARACTER_ACTION_DRAWING
///     public static let drawing: CharacterAction  = .init(rawValue: 1 << 1)
///     // CHARACTER_ACTION_SLEEPING
///     public static let sleeping: Self            = .init(rawValue: 1 << 2)
///
///     // CHARACTER_ACTION_NONE
///     public static let none: CharacterAction = []
///     // CHARACTER_ACTION_DREAMING
///     public static let dreaming: CharacterAction = [.thinking, .sleeping]
/// }
/// ```
///
/// The option set can then be used as a type for Godot:
///
/// ```swift
/// @Exposable public class Character: Node {
///     // This variable is exposed to Godot
///     public var action: CharacterAction = .drawing
/// }
/// ```
///
/// ## Definition inside an exposable class
///
/// If the option set is defined inside an exposable class, the option set values
/// will automatically be accessible from the Godot editor.
/// Note that only **public** static constants are exposed.
@attached(extension, conformances: OptionSet, VariantConvertible, names:
    named(variantType),
    named(makeVariant),
    named(fromMatchingTypeVariant),
    named(fromVariant),
    named(godotExposableValues)
)
@attached(member, names:
    named(RawValue),
    named(rawValue),
    named(init)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

/// A macro transforming a struct into a Godot signal.
///
/// The macro must be applied to an empty struct,
/// inside an exposable Godot class definition.
/// The signal will automatically be accessible from the Godot editor.
///
/// ## Naming convention
///
/// The signal name takes the name of the struct, converted to snake case.
///
/// ## Use the macro
///
/// By applying the macro to an empty struct, a signal will be created,
/// as well as an emitter variable used to emit the signal.
///
/// ```swift
/// @Exposable public class Character: Node {
///     @Emitter
///     public struct LandedBeautifully {}
///     // The signal name is "landed_beautifully"
/// }
/// ```
///
/// To emit the signal, use the generated emitter value
/// named "emitter + structure_name":
///
/// ```swift
/// @Exposable public class Character: Node {
///     private func land() {
///         emitterLandedBeautifully.emit()
///     }
/// }
/// ```
///
/// ## Add parameters to the signal
///
/// A signal can also have parameters.
/// Only ``ConvertibleToVariant`` types and ``Variant``
/// may be used as parameters.
/// To add one or more parameters to a signal,
/// define them in the `@Emitter` macro like so:
///
/// ```swift
/// @Exposable public class Character: Node {
///     @Emitter(args: ("force", Double), ("direction", Vector3))
///     public struct Jumped {}
///     // The signal name is "jumped"
///     // and it takes two parameters: force and direction
/// }
/// ```
///
/// Emitting the signal becomes:
///
/// ```swift
/// @Exposable public class Character: Node {
///     private func jump() {
///         emitterJumped.emit(force: 13.0, direction: .left)
///     }
/// }
/// ```
///
/// ## Connect to a receiver
///
/// Emitters are designed to work with types defined
/// using the ``Receiver`` macro.
/// See the corresponding doc to learn how to setup a receiver.
///
/// Connect any receiver that has the same input type
/// by calling the ``EmitterProtocol.connect`` method.
///
/// Use the ``EmitterProtocol.disconnect`` method to
/// disconnect a receiver.
///
/// And check that an emitter is connected to a receiver by
/// calling the  ``EmitterProtocol.isConnected`` method.
///
/// ```swift
/// @Exposable public class Character: Node {
///     @Emitter
///     public struct LandedBeautifully {}
/// }
///
/// @Exposable public class Grass: Node {
///     @Receiver
///     public func characterLanded() {}
/// }
///
/// let character = Character()
/// let grass = Grass()
///
/// // The characterLanded receiver will receive any signal
/// // emitted by the landedBeautifully emitter.
/// character.emitterLandedBeautifully.connect(grass.characterLandedReceiver)
/// ```
///
/// ## Set a custom signal name
///
/// It is possible to use a custom signal name.
/// Fill the `signal` argument of the macro:
///
/// ```swift
/// @Exposable public class Character: Node {
///     @Emitter(signal: "landed_not_so_beautifully")
///     public struct LandedBeautifully {}
///     // The signal name is "landed_not_so_beautifully"
/// }
/// ```
@attached(extension, conformances: Godot.EmitterProtocol)
@attached(peer, names: prefixed(emitter))
@attached(member, names:
    named(SignalInput),
    named(signalName),
    named(object),
    named(init),
    named(emit)
)
public macro Emitter(signal: StaticString? = nil, args: (StaticString, Any.Type)...) = #externalMacro(module: "GodotMacros", type: "EmitterMacro")

/// A macro enabling a function to act as a signal receiver.
///
/// The macro must be applied to a public function,
/// inside an exposable Godot class definition.
///
/// Receivers are designed to work with types defined
/// using the ``Emitter`` macro.
/// See the corresponding doc to learn how to setup an emitter.
///
/// ## Use the macro
///
/// By applying the macro to a function, a receiver type will be created,
/// as well as a receiver variable used to receive the signal.
///
/// ```swift
/// @Exposable public class Grass: Node {
///     @Receiver
///     public func characterLanded() {}
/// }
/// ```
///
/// To receive a signal, use the generated emitter value
/// named "function_name + Receiver":
///
/// ```swift
/// let grass = Grass()
///
/// // The characterLanded receiver will receive any signal
/// // emitted by 'someEmitter'.
/// someEmitter.connect(grass.characterLandedReceiver)
/// ```
@attached(peer, names: suffixed(Receiver), prefixed(Receiver_))
public macro Receiver() = #externalMacro(module: "GodotMacros", type: "ReceiverMacro")

// MARK: - Internal macros

@attached(member, names: arbitrary)
internal macro GodotClass() = #externalMacro(module: "GodotMacros", type: "GodotClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRefCountedClass() = #externalMacro(module: "GodotMacros", type: "GodotRefCountedClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRootClass() = #externalMacro(module: "GodotMacros", type: "GodotRootClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRefCountedRootClass() = #externalMacro(module: "GodotMacros", type: "GodotRefCountedRootClassMacro")

@attached(member, names: arbitrary)
internal macro GodotOpaqueBuiltinClass() = #externalMacro(module: "GodotMacros", type: "GodotOpaqueBuiltinClassMacro")
