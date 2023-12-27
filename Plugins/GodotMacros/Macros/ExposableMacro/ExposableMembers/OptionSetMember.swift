import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct OptionSetMember: ExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self),
              structDeclSyntax.attributes.contains(
                where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "GodotOptionSet" }
              )
        else {
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
            return .failure(.init("OptionSet cannot be exposed because '\(className.trimmedDescription)' is not public"))
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
        let optionSetName = removeBackticks(structDeclSyntax.name.trimmedDescription)
        
        return """
        Godot.GodotExtension.classRegistrar.registerEnumOrOptionSet(
            named: \(literal: optionSetName),
            values: \(raw: structDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: true,
            insideType: \(className).self
        )
        """
    }
    
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
}
