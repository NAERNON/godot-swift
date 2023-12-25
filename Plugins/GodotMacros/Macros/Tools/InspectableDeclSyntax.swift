import SwiftSyntax

protocol InspectableDeclSyntax: DeclSyntaxProtocol {
    var modifiers: DeclModifierListSyntax { get }
    var typeKeyword: TokenSyntax { get }
    var attributes: AttributeListSyntax { get }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> Self
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> Self
    func withAttributes(_ attributes: AttributeListSyntax) -> Self
}

// MARK: Conformances

extension EnumDeclSyntax: InspectableDeclSyntax {
    var typeKeyword: TokenSyntax { enumKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> EnumDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> EnumDeclSyntax {
        self.with(\.enumKeyword, tokenSyntax)
    }
    
    func withAttributes(_ attributes: AttributeListSyntax) -> EnumDeclSyntax {
        self.with(\.attributes, attributes)
    }
}

extension StructDeclSyntax: InspectableDeclSyntax {
    var typeKeyword: TokenSyntax { structKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> StructDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> StructDeclSyntax {
        self.with(\.structKeyword, tokenSyntax)
    }
    
    func withAttributes(_ attributes: AttributeListSyntax) -> StructDeclSyntax {
        self.with(\.attributes, attributes)
    }
}

extension ClassDeclSyntax: InspectableDeclSyntax {
    var typeKeyword: TokenSyntax { classKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> ClassDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> ClassDeclSyntax {
        self.with(\.classKeyword, tokenSyntax)
    }
    
    func withAttributes(_ attributes: AttributeListSyntax) -> ClassDeclSyntax {
        self.with(\.attributes, attributes)
    }
}

extension FunctionDeclSyntax: InspectableDeclSyntax {
    var typeKeyword: TokenSyntax { funcKeyword }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> FunctionDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> FunctionDeclSyntax {
        self.with(\.funcKeyword, tokenSyntax)
    }
    
    func withAttributes(_ attributes: AttributeListSyntax) -> FunctionDeclSyntax {
        self.with(\.attributes, attributes)
    }
}

extension VariableDeclSyntax: InspectableDeclSyntax {
    var typeKeyword: TokenSyntax { self.bindingSpecifier }
    
    func withModifiers(_ modifiers: DeclModifierListSyntax) -> VariableDeclSyntax {
        self.with(\.modifiers, modifiers)
    }
    
    func withTypeKeyword(_ tokenSyntax: TokenSyntax) -> VariableDeclSyntax {
        self.with(\.bindingSpecifier, tokenSyntax)
    }
    
    func withAttributes(_ attributes: AttributeListSyntax) -> VariableDeclSyntax {
        self.with(\.attributes, attributes)
    }
}
