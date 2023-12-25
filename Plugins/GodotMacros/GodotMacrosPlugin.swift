import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GodotMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        BridgeMacro.self,
        
        ExposableMacro.self,
        DebugExpositionMacro.self,
        ExposedMemberMacro.self,
        ExpositionIgnoredMacro.self,
        
        GodotEnumMacro.self,
        GodotOptionSetMacro.self,
        
        SignalMacro.self,
        ReceiverMacro.self,
        
        GodotClassMacro.self,
        GodotRefCountedClassMacro.self,
        GodotRootClassMacro.self,
        GodotRefCountedRootClassMacro.self,
        GodotOpaqueBuiltinClassMacro.self,
        GodotPackedArrayMacro.self,
    ]
}
