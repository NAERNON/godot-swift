import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GodotMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ExposableMacro.self,
        BridgeMacro.self,
        GodotClassMacro.self,
        GodotRefCountedClassMacro.self,
        GodotRootClassMacro.self,
        GodotRefCountedRootClassMacro.self,
    ]
}
