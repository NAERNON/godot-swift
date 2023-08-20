import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case notExposableEnum
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notExposableEnum:
            "Exposable enums must be marked '@ExposableEnum'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

private enum ExpositionFixItMessage: String, FixItMessage {
    case addExposableEnum
    
    var message: String {
        switch self {
        case .addExposableEnum:
            "Add '@ExposableEnum'"
        }
    }
    
    var fixItID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension EnumDeclSyntax: ClassExposableMember {
    var classExpositionIdentifier: String {
        name.trimmedDescription
    }
    
    var isExcludedFromClassExposition: Bool {
        guard let tokens = modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public)
        })
    }
    
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        let attributeSyntax = AttributeSyntax(attributeName: IdentifierTypeSyntax(name: "ExposableEnum"))
        
        // Check @ExposableEnum
        guard var attributes else {
            let fixedDecl = self
                .with(\.leadingTrivia, .newline)
                .with(
                    \.attributes,
                     AttributeListSyntax([.attribute(attributeSyntax)])
                )
            let fixIt = FixIt(message: ExpositionFixItMessage.addExposableEnum, changes: [
                .replace(
                    oldNode: Syntax(self),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(name),
                message: ExpositionDiagnostic.notExposableEnum,
                fixIt: fixIt
            ))
            return false
        }
        
        guard attributes
            .contains(where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "ExposableEnum" })
        else {
            attributes.append(.attribute(attributeSyntax).with(\.leadingTrivia, .newline))
            let fixedDecl = self
                .with(
                    \.attributes,
                     attributes
                )
            let fixIt = FixIt(message: ExpositionFixItMessage.addExposableEnum, changes: [
                .replace(
                    oldNode: Syntax(self),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(name),
                message: ExpositionDiagnostic.notExposableEnum,
                fixIt: fixIt
            ))
            return false
        }
        
        return true
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        """
        GodotExtension.classRegister.registerEnumOrOptionSet(
            named: \(literal: name.trimmedDescription),
            values: \(raw: name.trimmedDescription).godotExposableValues(),
            isOptionSet: false,
            insideType: self
        )
        """
    }
}
