import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

public enum ExposableMacro: MemberMacro, ExtensionMacro {
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
            let memberExpositions = membersExpositions(of: classDecl, in: context)
            
            for memberExposition in memberExpositions {
                memberExposition
            }
        }
        
        return try provider.decls()
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let extensionSyntax = try ExtensionDeclSyntax("extension \(type): Godot.Exposable") {}
        
        return [extensionSyntax]
    }
    
    private static func membersExpositions(
        of classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [ExprSyntax] {
        classDecl.memberBlock.members.compactMap { member in
            guard let exposableMember = member.decl.exposableMember(),
                  !exposableMember.hasExpositionIgnoredAttribute
            else {
                return nil
            }
            
            do {
                try exposableMember.checkShouldBeExposed()
            } catch {
                return nil
            }
            
            return exposableMember.expositionSyntax(
                classContext: classDecl.name,
                in: context
            )
        }
    }
}
