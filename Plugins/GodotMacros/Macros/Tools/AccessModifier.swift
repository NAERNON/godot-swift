import SwiftSyntax
import SwiftDiagnostics

// MARK: DeclSyntaxWithAccessModifier

protocol DeclSyntaxWithAccessModifier: DeclSyntaxProtocol {
    var modifiers: DeclModifierListSyntax { get }
    var typeKeyword: TokenSyntax { get }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> Self
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> Self
}

extension DeclSyntaxWithAccessModifier {
    func isPublic() -> Bool {
        modifiers.map(\.name.tokenKind).contains {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }
    }
    
    func accessModifierKeyword() -> Keyword? {
        for modifier in modifiers {
            if case let .keyword(keyword) = modifier.name.tokenKind,
                  keyword.isAccessModifier {
                return keyword
            }
        }
        
        return nil
    }
    
    func effectiveAccessModifier(minimum: Keyword? = nil) -> DeclModifierSyntax {
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
                    return .init(name: .keyword(orderedModifier))
                }
            }
        }
        
        return .init(name: .keyword(accessModifier))
    }
    
    /// Returns a FixIt that adds a public modifier.
    ///
    /// This fix it doesn't check if the modifiers already contain a public keyword.
    func notPublicFixIt() -> (fixIt: FixIt, node: Syntax) {
        var modifiers = self.modifiers
        var modifierIndex = modifiers.startIndex
        while modifierIndex != modifiers.endIndex {
            let modifier = modifiers[modifierIndex]
            
            guard case let .keyword(keyword) = modifier.name.tokenKind,
                  keyword.isAccessModifier else {
                modifierIndex = modifiers.index(after: modifierIndex)
                continue
            }
            
            modifiers[modifierIndex] = .init(name: .keyword(.public))
            
            let fixIt = FixIt(message: GodotDiagnostic("Replace '\(keyword)' with 'public'"), changes: [
                .replace(
                    oldNode: Syntax(self.modifiers),
                    newNode: Syntax(modifiers))
            ])
            return (fixIt, Syntax(modifier))
        }
        
        if modifiers.isEmpty {
            modifiers = [DeclModifierSyntax(name: .keyword(.public))]
            
            let fixIt = FixIt(message: GodotDiagnostic("Insert 'public'"), changes: [
                .replace(
                    oldNode: Syntax(self),
                    newNode: Syntax(self
                        .withModifiers(modifiers.with(\.leadingTrivia, typeKeyword.leadingTrivia))
                        .withTypeKeyword(typeKeyword.with(\.leadingTrivia, .space))
                    )
                ),
            ])
            return (fixIt, Syntax(typeKeyword))
        } else {
            modifiers.append(.init(name: .keyword(.public)))
            
            let fixIt = FixIt(message: GodotDiagnostic("Insert 'public'"), changes: [
                .replace(
                    oldNode: Syntax(self.modifiers),
                    newNode: Syntax(modifiers)),
            ])
            return (fixIt, Syntax(typeKeyword))
        }
    }
}

// MARK: Conformances

extension EnumDeclSyntax: DeclSyntaxWithAccessModifier {
    var typeKeyword: TokenSyntax { enumKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> EnumDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> EnumDeclSyntax {
        self.with(\.enumKeyword, tokenSyntax)
    }
}

extension StructDeclSyntax: DeclSyntaxWithAccessModifier {
    var typeKeyword: TokenSyntax { structKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> StructDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> StructDeclSyntax {
        self.with(\.structKeyword, tokenSyntax)
    }
}

extension ClassDeclSyntax: DeclSyntaxWithAccessModifier {
    var typeKeyword: TokenSyntax { classKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> ClassDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> ClassDeclSyntax {
        self.with(\.classKeyword, tokenSyntax)
    }
}

// MARK: Keyword extension

private let orderedAccessModifiers: [Keyword] = [
    .private,
    .fileprivate,
    .internal,
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
