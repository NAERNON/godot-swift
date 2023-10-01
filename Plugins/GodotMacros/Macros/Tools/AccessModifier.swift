import SwiftSyntax
import SwiftDiagnostics

// MARK: DeclSyntaxWithAccessModifier

protocol DeclSyntaxWithAccessModifier: DeclSyntaxProtocol {
    var modifiers: DeclModifierListSyntax { get }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> Self
}

protocol DeclSyntaxWithTypeKeyword: DeclSyntaxProtocol {
    var typeKeyword: TokenSyntax { get }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> Self
}

extension DeclSyntaxWithAccessModifier {
    func isPublic() -> Bool {
        modifiers.map(\.name.tokenKind).contains {
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
        for modifier in modifiers {
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
}

extension DeclSyntaxWithAccessModifier where Self : DeclSyntaxWithTypeKeyword {
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

extension EnumDeclSyntax: DeclSyntaxWithAccessModifier, DeclSyntaxWithTypeKeyword {
    var typeKeyword: TokenSyntax { enumKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> EnumDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> EnumDeclSyntax {
        self.with(\.enumKeyword, tokenSyntax)
    }
}

extension StructDeclSyntax: DeclSyntaxWithAccessModifier, DeclSyntaxWithTypeKeyword {
    var typeKeyword: TokenSyntax { structKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> StructDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> StructDeclSyntax {
        self.with(\.structKeyword, tokenSyntax)
    }
}

extension ClassDeclSyntax: DeclSyntaxWithAccessModifier, DeclSyntaxWithTypeKeyword {
    var typeKeyword: TokenSyntax { classKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> ClassDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> ClassDeclSyntax {
        self.with(\.classKeyword, tokenSyntax)
    }
}

extension FunctionDeclSyntax: DeclSyntaxWithAccessModifier, DeclSyntaxWithTypeKeyword {
    var typeKeyword: TokenSyntax { funcKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> FunctionDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> FunctionDeclSyntax {
        self.with(\.funcKeyword, tokenSyntax)
    }
}

extension VariableDeclSyntax: DeclSyntaxWithAccessModifier {
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> VariableDeclSyntax {
        self.with(\.modifiers, modifiers)
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
