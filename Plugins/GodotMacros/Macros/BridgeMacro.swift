import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum BridgeMacro: ExtensionMacro, PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let bridgeExtension: DeclSyntax =
        """
        extension \(type.trimmed): Godot.Bridge {}
        """
        
        guard let extensionDecl = bridgeExtension.as(ExtensionDeclSyntax.self) else {
            return []
        }
        
        return [extensionDecl]
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let declName: TokenSyntax
        let isPublic: Bool
        let notPublicDiagnostic: Diagnostic
        let diagnosticDescription = "Bridge must be public"
        
        if let decl = declaration.as(ClassDeclSyntax.self) {
            declName = decl.name
            isPublic = decl.isPublic()
            notPublicDiagnostic = decl.notPublicDiagnostic(description: diagnosticDescription)
        } else if let decl = declaration.as(StructDeclSyntax.self) {
            declName = decl.name
            isPublic = decl.isPublic()
            notPublicDiagnostic = decl.notPublicDiagnostic(description: diagnosticDescription)
        } else if let decl = declaration.as(EnumDeclSyntax.self) {
            declName = decl.name
            isPublic = decl.isPublic()
            notPublicDiagnostic = decl.notPublicDiagnostic(description: diagnosticDescription)
        } else {
            let diagnostic = Diagnostic(
                node: Syntax(node),
                message: GodotDiagnostic("Bridge must either be a 'class', 'struct' or 'enum'")
            )
            context.diagnose(diagnostic)
            
            return []
        }
        
        // Check is public or open
        guard isPublic else {
            context.diagnose(notPublicDiagnostic)
            return []
        }
        
        return [libInitDecl(identifier: declName)]
    }
    
    private static func libInitDecl(identifier: TokenSyntax) -> DeclSyntax {
        let functionName = identifier.trimmedDescription + "_godot_init"
        
        return DeclSyntax(
            """
            @_cdecl("\(raw: functionName.lowercased())")
            public func \(raw: functionName)(
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
