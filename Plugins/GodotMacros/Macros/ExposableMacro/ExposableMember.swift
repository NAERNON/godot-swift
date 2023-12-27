import SwiftSyntax
import SwiftSyntaxMacros
import Utils

/// A type that can be exposed inside an exposable class.
protocol ExposableMember {
    /// Creates a new instance of the exposable member.
    ///
    /// Returns nil if the member doesn't match.
    init?(declSyntax: some DeclSyntaxProtocol)
    
    /// A list of all the attached attributes.
    var attributes: AttributeListSyntax? { get }
    
    /// This returns a result indicating whether the
    /// exposition is available.
    ///
    /// If the exposition is not available, the `@Exposable`
    /// macro should ignore the member.
    func checkExpositionAvailable(
        className: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError>
    
    /// Returns the syntax for exposing the member to Godot.
    ///
    /// This function should diagnose any error that prevents the exposition
    /// using the provided context, and return `nil` in that case.
    func expositionSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax?
    
    /// Returns an array of decl syntaxes to place inside the class member block.
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax]
}

struct CheckExpositionError: Error, CustomStringConvertible {
    let description: String
    
    init(_ description: String) {
        self.description = description
    }
    
    static let notPublicMember: CheckExpositionError = .init("Member is not public")
}

extension ExposableMember {
    func expositionSyntax(
        classDeclSyntax: ClassDeclSyntax,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        expositionSyntax(
            className: classDeclSyntax.name,
            isContextPublic: classDeclSyntax.accessModifierInspector.isPublic(),
            namePrefix: namePrefix,
            in: context
        )
    }
    
    func expositionPeerSyntax(
        classDeclSyntax: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        expositionPeerSyntax(
            className: classDeclSyntax.name,
            isContextPublic: classDeclSyntax.accessModifierInspector.isPublic(),
            in: context
        )
    }
    
    var hasExpositionIgnoredAttribute: Bool {
        guard let attributes else {
            return false
        }
        
        return attributes.contains(
            where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "ExpositionIgnored" }
        )
    }
}

extension DeclSyntaxProtocol {
    func exposableMember() -> ExposableMember? {
        if let member = SignalMember(declSyntax: self) {
            return member
        }
        
        if let member = EnumMember(declSyntax: self) {
            return member
        }
        
        if let member = FunctionMember(declSyntax: self) {
            return member
        }
        
        if let member = FunctionOverrideMember(declSyntax: self) {
            return member
        }
        
        if let member = OptionSetMember(declSyntax: self) {
            return member
        }
        
        if let member = VariableMember(declSyntax: self) {
            return member
        }
        
        if let member = StructMember(declSyntax: self) {
            return member
        }

        if let member = ClassMember(declSyntax: self) {
            return member
        }
        
        return nil
    }
}
