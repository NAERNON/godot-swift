import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct OptionSetMember: ExposableMember {
    enum ExpositionError: Error, CustomStringConvertible {
        case isNotPublic
        
        var description: String {
            switch self {
            case .isNotPublic:
                "The option set is not public"
            }
        }
    }
    
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
        let optionSetName = removeBackticks(structDeclSyntax.name.trimmedDescription)
        
        return """
        Godot.GodotExtension.classRegistrar.registerEnumOrOptionSet(
            named: \(literal: optionSetName),
            values: \(raw: structDeclSyntax.name.trimmedDescription).godotExposableValues(),
            isOptionSet: true,
            insideType: self
        )
        """
    }
}
