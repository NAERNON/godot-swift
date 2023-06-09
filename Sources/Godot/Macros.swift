import Foundation

@attached(member, names: named(exposeToGodot))
public macro GodotExposed() = #externalMacro(module: "GodotMacros", type: "GodotExposedMacro")
