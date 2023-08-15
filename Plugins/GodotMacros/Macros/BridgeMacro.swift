import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum BridgeMacro: ExtensionMacro, PeerMacro {
    // MARK: Conformance
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let sendableExtension: DeclSyntax =
        """
        extension \(type.trimmed): GodotBridge {}
        """
        
        guard let extensionDecl = sendableExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
    
    // MARK: Peer
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        if let decl = declaration.as(ClassDeclSyntax.self) {
            return [libInitDecl(identifier: decl.name)]
        } else if let decl = declaration.as(StructDeclSyntax.self) {
            return [libInitDecl(identifier: decl.name)]
        } else if let decl = declaration.as(EnumDeclSyntax.self) {
            return [libInitDecl(identifier: decl.name)]
        }
        
        let diagnostic = Diagnostic(
            node: Syntax(node),
            message: GodotBridgeDiagnostic.wrongType
        )
        context.diagnose(diagnostic)
        
        return []
    }
    
    private static func libInitDecl(identifier: TokenSyntax) -> DeclSyntax {
        let functionName = identifier.trimmedDescription + "_godot_init"
        
        return DeclSyntax(
            """
            @_cdecl("\(raw: functionName.lowercased())")
            internal func \(raw: functionName)(
                getProcAddress: GodotExtension.GetProcAddress,
                libraryPtr: GodotExtension.ClassLibraryPointer,
                initializationPtr: GodotExtension.InitializationPointer
            ) -> GodotExtension.InitializationResult {
                do {
                    try GodotExtension.initialize(
                        using: \(identifier).self,
                        getProcAddress: getProcAddress,
                        libraryPtr: libraryPtr,
                        initializationPtr: initializationPtr
                    )
                    return 1
                } catch {
                    return 0
                }
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
            "`@Bridge` can only be applied to `class`, `struct` and `enum`"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}
