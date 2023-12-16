import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct ClassMember: ExposableMember {
    enum ExpositionError: Error, CustomStringConvertible {
        case isNotPublic
        
        var description: String {
            switch self {
            case .isNotPublic:
                "The class is not public"
            }
        }
    }
    
    let classDeclSyntax: ClassDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let classDeclSyntax = declSyntax.as(ClassDeclSyntax.self),
              classDeclSyntax.isPublic()
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
    
    func checkShouldBeExposed() throws {
        if !classDeclSyntax.isPublic() {
            throw ExpositionError.isNotPublic
        }
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        context.diagnose(Diagnostic(
            node: Syntax(classDeclSyntax.name),
            message: GodotDiagnostic("Classes are not exposable")
        ))
        
        return nil
    }
}
