import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros

struct StructMember: ExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self) else {
            return nil
        }
        
        self.structDeclSyntax = structDeclSyntax
    }
    
    var attributes: AttributeListSyntax? {
        structDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        className: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        if !isContextPublic {
            return .failure(.init("Struct cannot be exposed because '\(className.trimmedDescription)' is not public"))
        }
        
        if !structDeclSyntax.accessModifierInspector.isPublic() {
            return .failure(.notPublicMember)
        }
        
        return .success(())
    }
    
    func expositionSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        structDeclSyntax.expositionInspector.diagnoseNotExposable(
            "Only structs annotated with '@GodotOptionSet' are exposable",
            in: context
        )
        
        return nil
    }
    
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
}
