import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum ExposableMacro: MemberMacro, MemberAttributeMacro {
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        // Check is class
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(attribute),
                message: GodotDiagnostic("Only classes can be exposed to Godot")
            ))
            return []
        }
        
        // Check has inheritance
        guard let inheritedElement = classDecl.inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotDiagnostic("Only classes that inherit the Godot 'Object' class can be exposed to Godot")
            ))
            return []
        }
        
        // Check is public or open
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotDiagnostic("Only public classes can be exposed to Godot")
            ))
            return []
        }
        
        // Syntax
        let provider = ClassMacroDeclProvider(
            customClassDecl: classDecl,
            superclassName: inheritedElement.type.trimmedDescription,
            in: context
        ) {
            for member in classDecl.memberBlock.members {
                if let exposableMember = member.decl.exposableMember() {
                    "\(raw: exposableMember.classExpositionFunctionIdentifier)()"
                }
            }
        }
        
        return try provider.decls()
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        guard let classDecl = declaration.as(ClassDeclSyntax.self),
              let exposableMember = member.exposableMember(),
              !exposableMember.hasExposableMemberAttribute else {
            return []
        }
        
        return [AttributeSyntax("@ExposableMember(\(classDecl.name))")]
    }
}
