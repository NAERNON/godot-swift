import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct EmitterMember: ExposableMember {
    enum ExpositionError: Error, CustomStringConvertible {
        case isNotPublic
        
        var description: String {
            switch self {
            case .isNotPublic:
                "The emitter is not public"
            }
        }
    }
    
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self),
              structDeclSyntax.attributes.contains(
                where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Emitter" }
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
        guard let emitterAttribute = structDeclSyntax.attributes.first(
            where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Emitter" }
        )?.as(AttributeSyntax.self),
              let macroArguments = EmitterMacro.macroArguments(
                from: emitterAttribute,
                in: context,
                diagnoseErrors: false
              )
        else {
            return nil
        }
        
        let parameters = macroArguments.params.map {
            """
            .argument(\($0.type).self, name: "\($0.name.translated(from: .camel, to: .snake))"),
            """
        }
        
        return """
        Godot.GodotExtension.classRegistrar.registerSignal(
            named: \(raw: structDeclSyntax.name.trimmedDescription).signalName,
            insideType: self,
            argumentParameters:  [
                \(raw: parameters.joined(separator: "\n"))
            ]
        )
        """
    }
}
