import Foundation

/// A macro that enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(member, names: named(_gd_exposeToGodot), named(_gd_className), named(_gd_isCustomClass))
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// A macro that sets an entry point for Godot.
///
/// The macro automatically conforms the attached type to the ``GodotBridge`` protocol,
/// and creates a C function that will serve as the entry point for Godot.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
@attached(conformance)
@attached(peer, names: suffixed(_godot_init))
public macro Bridge() = #externalMacro(module: "GodotMacros", type: "BridgeMacro")
