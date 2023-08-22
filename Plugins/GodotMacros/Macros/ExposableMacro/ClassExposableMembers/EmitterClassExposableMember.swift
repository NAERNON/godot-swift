import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

struct EmitterClassExposableMember: ClassExposableMember {
    let structDeclSyntax: StructDeclSyntax
    
    init?(_ structDeclSyntax: StructDeclSyntax) {
        self.structDeclSyntax = structDeclSyntax
        
        guard let attributes = structDeclSyntax.attributes else {
            return nil
        }
        
        if !attributes.contains(
            where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Emitter" }
        ) {
            return nil
        }
    }
    
    var classExpositionIdentifier: String {
        structDeclSyntax.name.trimmedDescription
    }
    
    /// An emitter is excluded from exposition if it:
    /// - is not public
    var isExcludedFromClassExposition: Bool {
        guard let tokens = structDeclSyntax.modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public)
        })
    }
    
    /// An emitter is *always* exposable.
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        return true
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let emitterAttribute = structDeclSyntax.attributes?.first(
            where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Emitter" }
        )?.as(AttributeSyntax.self),
              let emitterParameters = EmitterMacro.emitterParameters(
                from: emitterAttribute,
                in: context,
                diagnoseErrors: false
              )
        else {
            return ""
        }
        
        let parameters = emitterParameters.map {
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
