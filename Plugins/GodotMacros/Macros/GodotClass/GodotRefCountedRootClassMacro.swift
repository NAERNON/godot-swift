import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotRefCountedRootClassMacro: MemberMacro {
    // MARK: Member
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try classExpansion(of: attribute, providingMembersOf: declaration, in: context)
    }
    
    private static func classExpansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        // Check is class
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            return []
        }
        
        return try ClassMacroDeclProvider(classDecl: classDecl, classType: .refCountedRoot).decls()
    }
}
