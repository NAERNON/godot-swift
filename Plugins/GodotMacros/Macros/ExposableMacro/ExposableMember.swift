import SwiftSyntax
import SwiftSyntaxMacros
import Utils

/// A type that can be exposed inside an exposable class.
///
/// Sometimes, a member should be exposed, but the syntax in it prevents it.
/// In this case, `checkShouldBeExposable()` doesn't throw,
/// but `expositionSyntax` returns nil.
///
/// If the member should not even be considered for exposition,
/// `checkShouldBeExposable()` throws an error.
protocol ExposableMember {
    /// Creates a new instance of the exposable member.
    ///
    /// Returns nil if the member doesn't match.
    init?(declSyntax: some DeclSyntaxProtocol)
    
    /// An identifier used to identify the member exposition.
    var exposableMemberIdentifier: String { get }
    
    /// A list of all the attached attributes.
    var attributes: AttributeListSyntax? { get }
    
    /// This function throws if the exposition should not be registered.
    func checkShouldBeExposed() throws
    
    /// Returns the syntax for exposing the member to Godot.
    ///
    /// This function should diagnose any error that prevents the exposition
    /// using the provided context, and return `nil` in that case.
    func expositionSyntax(
        classContext: TokenSyntax,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax?
}

extension ExposableMember {
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
        if let member = EmitterMember(declSyntax: self) {
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
