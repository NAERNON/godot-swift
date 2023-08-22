import SwiftSyntax
import SwiftSyntaxMacros

/// A type that can be exposed inside an exposable class.
protocol ExposableMember {
    /// Creates a new instance of the exposable member.
    init?(declSyntax: some DeclSyntaxProtocol)
    
    /// An identifier used to identify the member exposition.
    var exposableMemberIdentifier: String { get }
    
    /// Returns the syntax for exposing the member to Godot.
    ///
    /// This function should diagnose any error that prevents the exposition
    /// using the provided context.
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax?
}

extension ExposableMember {
    var classExpositionFunctionIdentifier: String {
        "__godotRegister_" + exposableMemberIdentifier
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
