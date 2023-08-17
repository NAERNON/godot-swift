import SwiftSyntax
import SwiftSyntaxMacros

/// A type that can be exposed if inside an exposable class.
protocol ClassExposableMember {
    /// A Boolean value indicating whether this member is exluded
    /// from the exposition inside a class.
    var isExcludedFromClassExposition: Bool { get }
    
    /// Returns a Boolean value indicating whether the member can be exposed
    /// to Godot.
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool
    
    /// Returns the syntax for exposing the member to Godot.
    ///
    /// This function should always generate an expression,
    /// regardless of the exclusion of this member.
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax
}

extension ClassExposableMember {
    func expositionSyntaxIfExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        guard !isExcludedFromClassExposition else {
            return nil
        }
        
        guard isExposable(fromClass: classDecl, in: context) else {
            return nil
        }
        
        return expositionSyntax(fromClass: classDecl, in: context)
    }
}
