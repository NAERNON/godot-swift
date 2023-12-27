
/// A type exposable to the Godot editor.
///
/// Do not declare `ExposableObject` conformances yourself.
/// Use the ``Exposable()`` macro instead.
public protocol ExposableObject: Object {}

/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(member, names: arbitrary)
@attached(extension, conformances: ExposableObject)
@attached(memberAttribute)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// Prevents a member from being exposed to the Godot editor.
@attached(peer)
public macro ExpositionIgnored() = #externalMacro(module: "GodotMacros", type: "ExpositionIgnoredMacro")

/// A marker indicating that a member is exposed to the Godot editor.
@attached(peer)
public macro _ExposedMember() = #externalMacro(module: "GodotMacros", type: "ExposedMemberMacro")

#if DEBUG
@attached(peer, names: arbitrary)
public macro _DebugExposition(type: Object.Type, isClassPublic: Bool) = #externalMacro(module: "GodotMacros", type: "DebugExpositionMacro")
#endif
