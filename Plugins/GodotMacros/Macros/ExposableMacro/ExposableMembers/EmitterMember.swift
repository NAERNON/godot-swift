import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

struct EmitterMember: ExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let structDeclSyntax = declSyntax.as(StructDeclSyntax.self),
              let attributes = structDeclSyntax.attributes,
              let tokens = structDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public)
              }),
              attributes.contains(
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
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        guard let emitterAttribute = structDeclSyntax.attributes?.first(
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
            .argument(\($0.type).self, name: "\(NamingConvention.camel.convert($0.name, to: .snake))"),
            """
        }
        
        return """
        Godot.GodotExtension.classRegister.registerSignal(
            named: \(raw: structDeclSyntax.name.trimmedDescription).signalName,
            insideType: self,
            argumentParameters:  [
                \(raw: parameters.joined(separator: "\n"))
            ]
        )
        """
    }
}
