import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct StructMember: ExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self),
              let tokens = structDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public)
              })
        else {
            return nil
        }
        
        self.structDeclSyntax = structDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        structDeclSyntax.name.trimmedDescription
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        context.diagnose(Diagnostic(
            node: Syntax(structDeclSyntax.name),
            message: GodotDiagnostic("'@ExposableMember' cannot be applied to a simple struct")
        ))
        
        return nil
    }
}
