import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case noSuperclassProvided
    case notPublic
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .noSuperclassProvided:
            "Only classes that inherit the Godot 'Object' class can be exposed to Godot"
        case .notPublic:
            "Only public classes can be exposed to Godot"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension ClassDeclSyntax {
    func exposableMacroSyntax(in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        // Check has inheritance
        guard let inheritedElement = inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classKeyword),
                message: ExpositionDiagnostic.noSuperclassProvided
            ))
            return []
        }
        
        // Check is public or open
        guard modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(classKeyword),
                message: ExpositionDiagnostic.notPublic
            ))
            return []
        }
        
        // Syntax
        let provider = ClassMacroDeclProvider(
            customClassDecl: self,
            superclassName: inheritedElement.type.trimmedDescription,
            in: context
        ) {
            for member in memberBlock.members {
                if let function = member.decl.as(FunctionDeclSyntax.self),
                   let syntax = function.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
                
                if let variable = member.decl.as(VariableDeclSyntax.self),
                   let syntax = variable.expositionSyntaxIfExposable(fromClass: self, in: context) {
                    syntax
                }
            }
        }
        
        return try provider.decls()
    }
}
