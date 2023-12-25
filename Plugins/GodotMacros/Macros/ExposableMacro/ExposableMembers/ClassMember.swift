import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct ClassMember: ExposableMember {
    let classDeclSyntax: ClassDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let classDeclSyntax = declSyntax.as(ClassDeclSyntax.self) else {
            return nil
        }
        
        self.classDeclSyntax = classDeclSyntax
    }
    
    var attributes: AttributeListSyntax? {
        classDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        classToken: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        if !isContextPublic {
            return .failure(.init("Class cannot be exposed because '\(classToken.trimmedDescription)' is not public"))
        }
        
        if !classDeclSyntax.accessModifierInspector.isPublic() {
            return .failure(.notPublicMember)
        }
        
        return .success(())
    }
    
    func expositionSyntax(
        classToken: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        classDeclSyntax.expositionInspector.diagnoseNotExposable(
            "Classes are not exposable within an exposable class",
            in: context
        )
        
        return nil
    }
    
    func expositionPeerSyntax(
        classToken: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
}
