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
                message: GodotDiagnostic("Only classes are exposable")
            ))
            return []
        }
        
        // Check has inheritance
        guard let inheritedElement = classDecl.inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotDiagnostic("Exposable class must inherit Godot 'Object' type")
            ))
            return []
        }
        
        // Check is public or open
        guard classDecl.isPublic() else {
            context.diagnose(classDecl.notPublicDiagnostic(description: "Exposable class is not public"))
            return []
        }
        
        let isFinal = classDecl.modifiers.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.final)
        })
        
        // Syntax
        let provider = ClassMacroDeclProvider(
            customClassDecl: classDecl,
            superclassName: inheritedElement.type.trimmedDescription, 
            isFinal: isFinal,
            in: context
        ) {
            for member in classDecl.memberBlock.members {
                if let exposableMember = member.decl.exposableMember(),
                   !exposableMember.hasExpositionIgnoredAttribute {
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
              !exposableMember.hasExpositionAvailableAttribute,
              !exposableMember.hasExpositionIgnoredAttribute else {
            return []
        }
        
        return [AttributeSyntax("@ExpositionAvailable(\(classDecl.name))")]
    }
}
