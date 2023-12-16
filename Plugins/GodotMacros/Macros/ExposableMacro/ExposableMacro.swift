import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation
import RegexBuilder

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
        var groupStructure = GroupStructure()
        var expressions = [ExprSyntax]()
        
        for member in classDecl.memberBlock.members {
            for trivia in member.leadingTrivia {
                guard case let .lineComment(commentString) = trivia,
                   let groupTrivia = GroupTrivia(commentLine: commentString)
                else {
                    continue
                }
                
                let groupExprSyntax: ExprSyntax
                switch groupTrivia {
                case .group(let string):
                    groupStructure.groupName = string
                    groupStructure.subgroupName = nil
                    groupExprSyntax = """
                    Godot.GodotExtension.classRegistrar.registerGroup(
                        named: \(literal: string),
                        prefix: \(literal: groupStructure.groupPrefix),
                        insideType: self
                    )
                    """
                case .subgroup(let string):
                    groupStructure.subgroupName = string
                    groupExprSyntax = """
                    Godot.GodotExtension.classRegistrar.registerSubgroup(
                        named: \(literal: string),
                        prefix: \(literal: groupStructure.subgroupPrefix),
                        insideType: self
                    )
                    """
                }
                
                expressions.append(groupExprSyntax)
            }
            
            guard let exposableMember = member.decl.exposableMember(),
                  !exposableMember.hasExpositionIgnoredAttribute
            else {
                continue
            }
            
            do {
                try exposableMember.checkShouldBeExposed()
            } catch {
                continue
            }
            
            guard let expositionSyntax = exposableMember.expositionSyntax(
                classContext: classDecl.name,
                namePrefix: groupStructure.memberPrefix,
                in: context
            ) else {
                continue
            }
            
            expressions.append(expositionSyntax)
        }
        
        return expressions
    }
}

// MARK: - Group

private struct GroupStructure {
    var groupName: String?
    var subgroupName: String?
    
    var groupPrefix: String {
        if let groupName {
            "_" + transformToPrefix(groupName) + "_"
        } else {
            ""
        }
    }
    
    var subgroupPrefix: String {
        if let subgroupName {
            groupPrefix + transformToPrefix(subgroupName) + "_"
        } else {
            groupPrefix
        }
    }
    
    var memberPrefix: String {
        subgroupPrefix
    }
    
    private func transformToPrefix(_ string: String) -> String {
        String(format:"%02X", string.hashValue).lowercased()
    }
}

private enum GroupTrivia {
    case group(String)
    case subgroup(String)
    
    static let groupString = "EXPORT: -"
    static let subgroupString = "EXPORT: --"
    
    init?(commentLine: String) {
        let regex = Regex {
            "//"
            ZeroOrMore(.whitespace)
            "EXPORT: "
            ZeroOrMore(.whitespace)
            Capture {
                ChoiceOf {
                    "--"
                    "-"
                }
            }
            ZeroOrMore(.whitespace)
            Capture(ZeroOrMore(.anyNonNewline))
        }
        
        guard let match = commentLine.firstMatch(of: regex) else {
            return nil
        }
        
        let groupName = match.output.2.trimmingCharacters(in: .whitespaces)
        
        switch match.output.1 {
        case "-": self = .group(groupName)
        case "--": self = .subgroup(groupName)
        default: return nil
        }
    }
    
    var name: String {
        switch self {
        case .group(let string):
            string
        case .subgroup(let string):
            string
        }
    }
}
