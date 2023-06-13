import Foundation

@attached(member, names: named(_gd_exposeToGodot), named(_gd_className), named(_gd_isCustomClass))
public macro GodotExposable() = #externalMacro(module: "GodotMacros", type: "GodotExposableMacro")

@attached(conformance)
@attached(peer, names: arbitrary)
public macro GodotBridge() = #externalMacro(module: "GodotMacros", type: "GodotBridgeMacro")
