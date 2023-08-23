import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GodotMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        ExposableMacro.self,
        ExposableMemberMacro.self,
        BridgeMacro.self,
        GodotEnumMacro.self,
        GodotOptionSetMacro.self,
        EmitterMacro.self,
        
        GodotClassMacro.self,
        GodotRefCountedClassMacro.self,
        GodotRootClassMacro.self,
        GodotRefCountedRootClassMacro.self,
        GodotOpaqueBuiltinClassMacro.self,
    ]
}
