import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotBridgeMacro: ConformanceMacro, PeerMacro {
    // MARK: Conformance
    
    public static func expansion(
        of node: AttributeSyntax,
        providingConformancesOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [(TypeSyntax, GenericWhereClauseSyntax?)] {
        [("GodotBridgeProtocol", nil)]
    }
    
    // MARK: Peer
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        if let classDecl = declaration.as(ClassDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        } else if let classDecl = declaration.as(StructDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        } else if let classDecl = declaration.as(EnumDeclSyntax.self) {
            return [libInitDecl(identifier: classDecl.identifier)]
        }
        
        let diagnostic = Diagnostic(
            node: Syntax(node),
            message: GodotBridgeDiagnostic.wrongType
        )
        context.diagnose(diagnostic)
        
        return []
    }
    
    private static func libInitDecl(identifier: TokenSyntax) -> DeclSyntax {
        let functionName = identifier.text.lowercased() + "_godot_init"
        
        return DeclSyntax(
            """
            @_cdecl("\(raw: functionName)")
            func \(raw: functionName)(interfacePtr: UnsafePointer<GDExtensionInterface>, libraryPtr: GDExtensionClassLibraryPtr, initializationPtr: UnsafeMutablePointer<GDExtensionInitialization>) -> GDExtensionBool {
                return GodotExtension.shared.setUp(
                    withInterfacePtr: interfacePtr,
                    libraryPtr: libraryPtr,
                    initializationPtr: initializationPtr,
                    initializerCallback: \(identifier).initializerCallback,
                    terminatorCallback: \(identifier).terminatorCallback,
                    minimumInitializationLevel: GDEXTENSION_INITIALIZATION_SCENE
                )
            }
            """
        )
    }
}

// MARK: - Diagnostic

private enum GodotBridgeDiagnostic: String, DiagnosticMessage {
    case wrongType
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .wrongType:
            "`@GodotBridge` can only be applied to `class`, `struct` and `enum`"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}
