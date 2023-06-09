import Foundation

@attached(member, names: named(exposeToGodot))
public macro GodotExposable() = #externalMacro(module: "GodotMacros", type: "GodotExposableMacro")
