import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct EnumMember: ExposableMember {
    let enumDeclSyntax: EnumDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let enumDeclSyntax = declSyntax.as(EnumDeclSyntax.self) else {
            return nil
        }
        
        self.enumDeclSyntax = enumDeclSyntax
    }
    
    var attributes: AttributeListSyntax? {
        enumDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        classToken: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        if !isContextPublic {
            return .failure(.init("Enum cannot be exposed because '\(classToken.trimmedDescription)' is not public"))
        }
        
        if !enumDeclSyntax.accessModifierInspector.isPublic() {
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
        let attributeSyntax = AttributeSyntax(attributeName: IdentifierTypeSyntax(name: "GodotEnum"))
        
        var attributes = enumDeclSyntax.attributes
        
        // Check @GodotEnum
        guard attributes
            .contains(where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "GodotEnum" })
        else {
            // No @GodotEnum, so provide fixit that inserts @GodotEnum
            // TODO: Some trivia is not right
            attributes.append(.attribute(attributeSyntax).with(\.leadingTrivia, .newline))
            let fixedDecl = enumDeclSyntax
                .with(
                    \.attributes,
                     attributes
                )
            let fixIt = FixIt(message: GodotDiagnostic("Insert '@GodotEnum'"), changes: [
                .replace(
                    oldNode: Syntax(enumDeclSyntax),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(enumDeclSyntax.name),
                message: GodotDiagnostic("Godot enums must be marked '@GodotEnum'"),
                fixIt: fixIt
            ))
            return nil
        }
        
        let enumName = removeBackticks(enumDeclSyntax.name.trimmedDescription)
        
        return """
        Godot.GodotExtension.classRegistrar.registerEnumOrOptionSet(
            named: \(literal: enumName),
            values: \(raw: enumDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: false,
            insideType: self
        )
        """
    }
    
    func expositionPeerSyntax(
        classToken: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
}
