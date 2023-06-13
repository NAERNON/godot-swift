import Foundation

@attached(member, names: named(exposeToGodot))
public macro GodotExposable() = #externalMacro(module: "GodotMacros", type: "GodotExposableMacro")

@attached(conformance)
@attached(peer, names: arbitrary)
public macro GodotBridge() = #externalMacro(module: "GodotMacros", type: "GodotBridgeMacro")
