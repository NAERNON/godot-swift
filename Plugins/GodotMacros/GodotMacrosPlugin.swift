import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GodotMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ExposableMacro.self,
        BridgeMacro.self,
        GodotEnumMacro.self,
        
        GodotClassMacro.self,
        GodotRefCountedClassMacro.self,
        GodotRootClassMacro.self,
        GodotRefCountedRootClassMacro.self,
        GodotOpaqueBuiltinClassMacro.self,
    ]
}
