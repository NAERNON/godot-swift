
/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(member, names: arbitrary)
@attached(extension, conformances: CustomObject)
@attached(memberAttribute)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// Prevents a member from being exposed to the Godot editor.
@attached(peer)
public macro ExpositionIgnored() = #externalMacro(module: "GodotMacros", type: "ExpositionIgnoredMacro")

/// A marker indicating that a member is exposed to the Godot editor.
///
/// You should not use this macro directly.
/// This macro does nothing on the attached declaration.
@attached(peer)
public macro ExposedMember() = #externalMacro(module: "GodotMacros", type: "ExposedMemberMacro")

#if DEBUG
@attached(peer, names: arbitrary)
public macro DebugExposition(type: Object.Type, isClassPublic: Bool) = #externalMacro(module: "GodotMacros", type: "DebugExpositionMacro")
#endif
