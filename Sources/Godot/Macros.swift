import Foundation

@attached(member, names: named(_gd_exposeToGodot), named(_gd_className), named(_gd_isCustomClass))
public macro GodotExposable() = #externalMacro(module: "GodotMacros", type: "GodotExposableMacro")

/// A macro that sets an entry point for Godot.
///
/// The macro automatically conforms the attached type to the ``GodotBridgeProtocol`` protocol,
/// and creates a C function that will serve as the entry point for Godot.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
@attached(conformance)
@attached(peer, names: arbitrary)
public macro GodotBridge() = #externalMacro(module: "GodotMacros", type: "GodotBridgeMacro")
