import SwiftSyntax
import SwiftSyntaxMacros
import SwiftDiagnostics

extension InspectableDeclSyntax {
    var accessModifierInspector: AccessModifierInspector<Self> {
        .init(self)
    }
}

struct AccessModifierInspector<Decl> where Decl : InspectableDeclSyntax {
    let declSyntax: Decl
    
    fileprivate init(_ declSyntax: Decl) {
        self.declSyntax = declSyntax
    }
    
    func isPublic() -> Bool {
        declSyntax.modifiers.map(\.name.tokenKind).contains {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }
    }
    
    func isAccessModifierMoreAccessible(than keyword: Keyword) -> Bool {
        var keywordReached = false
        for orderedModifier in orderedAccessModifiers {
            if orderedModifier == keyword {
                keywordReached = true
            }
            
            if orderedModifier == accessModifierKeyword() ?? .internal {
                return keywordReached
            }
        }
        
        return false
    }
    
    func accessModifierKeyword() -> Keyword? {
        for modifier in declSyntax.modifiers {
            if case let .keyword(keyword) = modifier.name.tokenKind,
               keyword.isAccessModifier {
                return keyword
            }
        }
        
        return nil
    }
    
    func effectiveAccessModifierKeyword(minimum: Keyword? = nil) -> Keyword {
        let accessModifier = accessModifierKeyword() ?? .internal
        
        if let minimum {
            var minimumReached = false
            var modifierReached = false
            for orderedModifier in orderedAccessModifiers {
                if orderedModifier == minimum {
                    minimumReached = true
                }
                if orderedModifier == accessModifier {
                    modifierReached = true
                }
                
                if minimumReached && modifierReached {
                    return orderedModifier
                }
            }
        }
        
        return accessModifier
    }
    
    func effectiveAccessModifier(minimum: Keyword? = nil) -> DeclModifierSyntax {
        .init(name: .keyword(effectiveAccessModifierKeyword(minimum: minimum)))
    }
    
    func diagnoseIfNotPublic(
        _ warning: String,
        in context: some MacroExpansionContext
    ) -> Bool {
        if isPublic() {
            return false
        }
        
        context.diagnose(notPublicDiagnostic(description: warning))
        return true
    }
    
    /// Returns a FixIt that adds a public modifier.
    ///
    /// This fix it doesn't check if the modifiers already contain a public keyword.
    private func notPublicFixIt() -> (fixIt: FixIt, node: Syntax) {
        var modifiers = declSyntax.modifiers
        var modifierIndex = modifiers.startIndex
        while modifierIndex != modifiers.endIndex {
            let modifier = modifiers[modifierIndex]
            
            guard case let .keyword(keyword) = modifier.name.tokenKind,
                  keyword.isAccessModifier else {
                modifierIndex = modifiers.index(after: modifierIndex)
                continue
            }
            
            let token = modifiers[modifierIndex].name
            let newToken = token.with(\.tokenKind, .keyword(.public))
            
            let fixIt = FixIt(message: GodotDiagnostic("Replace '\(keyword)' with 'public'"), changes: [
                .replace(
                    oldNode: Syntax(token),
                    newNode: Syntax(newToken))
            ])
            return (fixIt, Syntax(token))
        }
        
        if modifiers.isEmpty {
            modifiers = [DeclModifierSyntax(name: .keyword(.public))]
            
            let fixIt = FixIt(message: GodotDiagnostic("Insert 'public'"), changes: [
                .replace(
                    oldNode: Syntax(declSyntax),
                    newNode: Syntax(declSyntax
                        .withModifiers(modifiers.with(\.leadingTrivia, declSyntax.typeKeyword.leadingTrivia))
                        .withTypeKeyword(declSyntax.typeKeyword.with(\.leadingTrivia, .space))
                    )
                ),
            ])
            return (fixIt, Syntax(declSyntax.typeKeyword))
        } else {
            modifiers.append(.init(name: .keyword(.public)))
            
            let fixIt = FixIt(message: GodotDiagnostic("Insert 'public'"), changes: [
                .replace(
                    oldNode: Syntax(declSyntax.modifiers),
                    newNode: Syntax(modifiers)),
            ])
            return (fixIt, Syntax(declSyntax.typeKeyword))
        }
    }
    
    private func notPublicDiagnostic(description: String, includeFixit: Bool = true) -> Diagnostic {
        let notPublicFixIt = notPublicFixIt()
        
        if includeFixit {
            return Diagnostic(
                node: notPublicFixIt.node,
                message: GodotDiagnostic(description),
                fixIt: notPublicFixIt.fixIt
            )
        } else {
            return Diagnostic(
                node: notPublicFixIt.node,
                message: GodotDiagnostic(description)
            )
        }
    }
}

// MARK: Keyword extension

private let orderedAccessModifiers: [Keyword] = [
    .private,
    .fileprivate,
    .internal,
    .package,
    .public,
    .open,
]

private extension Keyword {
    var isAccessModifier: Bool {
        orderedAccessModifiers.contains { keyword in
            keyword == self
        }
    }
}
