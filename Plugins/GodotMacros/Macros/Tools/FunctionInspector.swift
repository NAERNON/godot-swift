import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

extension FunctionDeclSyntax {
    var inspector: FunctionInspector {
        .init(self)
    }
}

struct FunctionInspector {
    let declSyntax: FunctionDeclSyntax
    
    fileprivate init(_ declSyntax: FunctionDeclSyntax) {
        self.declSyntax = declSyntax
    }
    
    func diagnoseIfThrows(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let specifiers = declSyntax.signature.effectSpecifiers,
              let throwsSpecifier = specifiers.throwsSpecifier else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(throwsSpecifier),
            message: GodotDiagnostic(warning),
            fixIt: FixIt(
                message: GodotDiagnostic("Remove 'throws'"),
                changes: [
                    .replace(
                        oldNode: Syntax(specifiers),
                        newNode: Syntax(specifiers.with(\.throwsSpecifier, nil))
                    )
                ]
            )
        ))
        return true
    }
    
    func diagnoseIfAsync(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let specifiers = declSyntax.signature.effectSpecifiers,
              let throwsSpecifier = specifiers.asyncSpecifier else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(throwsSpecifier),
            message: GodotDiagnostic(warning),
            fixIt: FixIt(
                message: GodotDiagnostic("Remove 'async'"),
                changes: [
                    .replace(
                        oldNode: Syntax(specifiers),
                        newNode: Syntax(specifiers.with(\.asyncSpecifier, nil))
                    )
                ]
            )
        ))
        return true
    }
    
    func diagnoseIfGeneric(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let generic = declSyntax.genericParameterClause else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(generic),
            message: GodotDiagnostic(warning)
        ))
        return true
    }
    
    func diagnoseIfReturnClauseExists(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let returnClause = declSyntax.signature.returnClause else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(returnClause),
            message: GodotDiagnostic(warning),
            fixIt: FixIt(
                message: GodotDiagnostic("Remove '\(returnClause.trimmedDescription)'"),
                changes: [
                    .replace(
                        oldNode: Syntax(declSyntax.signature),
                        newNode: Syntax(declSyntax.signature.with(\.returnClause, nil))
                    )
                ]
            )
        ))
        return true
    }
    
    private func overrideToken() -> TokenSyntax? {
        declSyntax.modifiers.map(\.name).first(where: {
            $0.tokenKind == .keyword(.override)
        })
    }
    
    func isOverride() -> Bool {
        overrideToken() != nil
    }
    
    func diagnoseIfOverride(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let overrideModifier = overrideToken() else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(overrideModifier),
            message: GodotDiagnostic(warning)
        ))
        return true
    }
    
    func diagnoseIfBodyExists(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let body = declSyntax.body else {
            return false
        }
        
        context.diagnose(Diagnostic(
            node: Syntax(body),
            message: GodotDiagnostic(warning),
            fixIt: FixIt(
                message: GodotDiagnostic("Remove function body"),
                changes: [
                    .replace(
                        oldNode: Syntax(declSyntax),
                        newNode: Syntax(declSyntax.with(\.body, nil))
                    )
                ]
            )
        ))
        return true
    }
    
    // MARK: Arguments
    
    struct Argument {
        let name: String
        let type: String
    }
    
    func arguments() -> [Argument] {
        declSyntax.signature.parameterClause.parameters.map { parameter in
            Argument(
                name: parameter.secondName?.trimmedDescription ?? parameter.firstName.trimmedDescription,
                type: parameter.type.trimmedDescription
            )
        }
    }
}
