
/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(memberAttribute)
@attached(member, names:
    named(_$exposeToGodot),
    named(_$className),
    named(_$staticClassName),
    named(_$isCustomGodotClass),
    named(_$instanceBindingCallbacks)
)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// Enables a member to be exposed to the Godot editor.
@attached(peer, names: prefixed(_$godotRegister_))
public macro ExpositionAvailable(_: Object.Type) = #externalMacro(module: "GodotMacros", type: "ExpositionAvailableMacro")

/// Prevents a member from being exposed to the Godot editor.
@attached(peer)
public macro ExpositionIgnored() = #externalMacro(module: "GodotMacros", type: "ExpositionIgnoredMacro")
