
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

// TODO: Doc
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
/// ## Use the macro
///
/// A Godot enum must have an `Int64` `RawType`. Here is how the macro is used:
///
/// ```swift
/// @GodotEnum public enum CharacterEmotion: Int64 {
///     case happy
///     case notSoHappy
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
///     public static let thinking: CharacterAction = .init(rawValue: 1 << 0)
///     public static let drawing: CharacterAction  = .init(rawValue: 1 << 1)
///     public static let sleeping: Self            = .init(rawValue: 1 << 2)
///
///     public static let none: CharacterAction = []
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

// TODO: Doc
@attached(peer, names: prefixed(signal))
@attached(member, names:
    named(signalName),
    named(object),
    named(init),
    named(emit)
)
public macro Emitter(_: (StaticString, ConvertibleToVariant.Type)...) = #externalMacro(module: "GodotMacros", type: "EmitterMacro")

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
