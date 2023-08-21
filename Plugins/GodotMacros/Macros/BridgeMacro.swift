import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

private enum BridgeMacroDiagnostic: String, DiagnosticMessage {
    case wrongType
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .wrongType:
            "'@Bridge' can only be applied to 'class', 'struct' and 'enum'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

public enum BridgeMacro: ExtensionMacro, PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let godotBridgeExtension: DeclSyntax =
        """
        extension \(type.trimmed): GodotBridge {}
        """
        
        guard let extensionDecl = godotBridgeExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
    
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
            message: BridgeMacroDiagnostic.wrongType
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
                getProcAddress: Godot.GodotExtension.GetProcAddress,
                libraryPtr: Godot.GodotExtension.ClassLibraryPointer,
                initializationPtr: Godot.GodotExtension.InitializationPointer
            ) -> Godot.GodotExtension.InitializationResult {
                do {
                    try Godot.GodotExtension.initialize(
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
