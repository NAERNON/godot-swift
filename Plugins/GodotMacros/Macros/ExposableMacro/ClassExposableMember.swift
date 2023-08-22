import SwiftSyntax
import SwiftSyntaxMacros

/// A type that can be exposed if inside an exposable class.
protocol ClassExposableMember {
    var attributes: AttributeListSyntax? { get }
    
    /// An identifier used to identify the member exposition.
    var classExpositionIdentifier: String { get }
    
    /// A Boolean value indicating whether this member is exluded
    /// from the exposition inside a class.
    var isExcludedFromClassExposition: Bool { get }
    
    /// Returns a Boolean value indicating whether the member can be exposed
    /// to Godot.
    ///
    /// This function should diagnose any error that prevents the exposition
    /// using the provided context.
    func isExposable(in context: some MacroExpansionContext) -> Bool
    
    /// Returns the syntax for exposing the member to Godot.
    ///
    /// This function should always generate an expression,
    /// regardless of the exclusion of this member.
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax
}

extension ClassExposableMember {
    var classExpositionFunctionIdentifier: String {
        "__godotRegister_" + classExpositionIdentifier
    }
}

extension DeclSyntaxProtocol {
    func exposableMember() -> ClassExposableMember? {
        if let exposableMember = self.as(EnumDeclSyntax.self) {
            return exposableMember
        }
        
        if let exposableMember = self.as(StructDeclSyntax.self) {
            return exposableMember
        }
        
        if let exposableMember = self.as(ClassDeclSyntax.self) {
            return exposableMember
        }
        
        if let exposableMember = self.as(FunctionDeclSyntax.self) {
            return exposableMember
        }
        
        if let exposableMember = self.as(VariableDeclSyntax.self) {
            return exposableMember
        }
        
        return nil
    }
}
