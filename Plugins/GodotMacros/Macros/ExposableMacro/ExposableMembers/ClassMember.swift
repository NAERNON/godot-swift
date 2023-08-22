import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct ClassMember: ExposableMember {
    let classDeclSyntax: ClassDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let classDeclSyntax = declSyntax.as(ClassDeclSyntax.self),
              let tokens = classDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public)
              })
        else {
            return nil
        }
        
        self.classDeclSyntax = classDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        classDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        classDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        context.diagnose(Diagnostic(
            node: Syntax(classDeclSyntax.name),
            message: GodotDiagnostic("'@ExposableMember' cannot be applied to a class")
        ))
        
        return nil
    }
}
