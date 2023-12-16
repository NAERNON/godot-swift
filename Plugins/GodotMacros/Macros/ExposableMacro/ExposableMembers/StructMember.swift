import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct StructMember: ExposableMember {
    enum ExpositionError: Error, CustomStringConvertible {
        case isNotPublic
        
        var description: String {
            switch self {
            case .isNotPublic:
                "The struct is not public"
            }
        }
    }
    
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self) else {
            return nil
        }
        
        self.structDeclSyntax = structDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        structDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        structDeclSyntax.attributes
    }
    
    func checkShouldBeExposed() throws {
        if !structDeclSyntax.isPublic() {
            throw ExpositionError.isNotPublic
        }
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        context.diagnose(Diagnostic(
            node: Syntax(structDeclSyntax.name),
            message: GodotDiagnostic("Simple structs are not exposable")
        ))
        
        return nil
    }
}
