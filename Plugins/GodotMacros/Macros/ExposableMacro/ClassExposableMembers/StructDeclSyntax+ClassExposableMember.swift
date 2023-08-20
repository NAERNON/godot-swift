import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case notExposableOptionSet
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notExposableOptionSet:
            "Exposable structs must be option sets marked '@ExposableOptionSet'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

private enum ExpositionFixItMessage: String, FixItMessage {
    case addExposableOptionSet
    
    var message: String {
        switch self {
        case .addExposableOptionSet:
            "Add '@ExposableOptionSet'"
        }
    }
    
    var fixItID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension StructDeclSyntax: ClassExposableMember {
    var classExpositionIdentifier: String {
        name.trimmedDescription
    }
    
    /// A struct is excluded from exposition if it:
    /// - is not public
    var isExcludedFromClassExposition: Bool {
        guard let tokens = modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public)
        })
    }
    
    /// A struct is exposable if it:
    /// - is marked `@ExposableOptionSet`
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        let attributeSyntax = AttributeSyntax(attributeName: IdentifierTypeSyntax(name: "ExposableOptionSet"))
        
        // Check @ExposableOptionSet
        guard var attributes else {
            // No attributes at all, so provide fixit that adds @ExposableOptionSet
            let fixedDecl = self
                .with(\.leadingTrivia, .newline)
                .with(
                    \.attributes,
                     AttributeListSyntax([.attribute(attributeSyntax)])
                )
            let fixIt = FixIt(message: ExpositionFixItMessage.addExposableOptionSet, changes: [
                .replace(
                    oldNode: Syntax(self),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(name),
                message: ExpositionDiagnostic.notExposableOptionSet,
                fixIt: fixIt
            ))
            return false
        }
        
        // Check @ExposableOptionSet
        guard attributes
            .contains(where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "ExposableOptionSet" })
        else {
            // No @ExposableOptionSet, so provide fixit that inserts @ExposableOptionSet
            attributes.append(.attribute(attributeSyntax).with(\.leadingTrivia, .newline))
            let fixedDecl = self
                .with(
                    \.attributes,
                     attributes
                )
            let fixIt = FixIt(message: ExpositionFixItMessage.addExposableOptionSet, changes: [
                .replace(
                    oldNode: Syntax(self),
                    newNode: Syntax(fixedDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(name),
                message: ExpositionDiagnostic.notExposableOptionSet,
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
            isOptionSet: true,
            insideType: self
        )
        """
    }
}
