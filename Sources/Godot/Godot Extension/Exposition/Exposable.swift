
/// A type exposable to the Godot editor.
///
/// Do not declare `Exposable` conformances yourself.
/// Use the ``Exposable()`` macro instead.
public protocol Exposable: Object {}

/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(member, names:
    named(registerClassToGodot),
    named(exposedClassName),
    named(instanceBindingCallbacks),
    named(retrieveObjectInstance),
    named(_$exposedClassName)
)
@attached(extension, conformances: Exposable)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

@attached(peer, names: named(testExposition))
public macro _ExpositionTest(_: Object.Type) = #externalMacro(module: "GodotMacros", type: "ExpositionTestMacro")

/// Prevents a member from being exposed to the Godot editor.
@attached(peer)
public macro ExpositionIgnored() = #externalMacro(module: "GodotMacros", type: "ExpositionIgnoredMacro")
