import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GodotMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ExposableMacro.self,
        ExpositionAvailableMacro.self,
        ExpositionIgnoredMacro.self,
        BridgeMacro.self,
        GodotEnumMacro.self,
        GodotOptionSetMacro.self,
        EmitterMacro.self,
        ReceiverMacro.self,
        HintMacro.self,
        
        GodotClassMacro.self,
        GodotRefCountedClassMacro.self,
        GodotRootClassMacro.self,
        GodotRefCountedRootClassMacro.self,
        GodotOpaqueBuiltinClassMacro.self,
    ]
}
