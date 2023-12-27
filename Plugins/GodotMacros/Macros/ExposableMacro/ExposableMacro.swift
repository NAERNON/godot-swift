import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation
import RegexBuilder
import Utils

public enum ExposableMacro: MemberMacro, ExtensionMacro, MemberAttributeMacro {
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let classDeclSyntax = declaration.declarationInspector.as(
            ClassDeclSyntax.self,
            diagnoseOtherwise: "Only classes are exposable to Godot",
            in: context
        ) else {
            return []
        }
        
        guard let inheritedElement = classDeclSyntax.inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classDeclSyntax.classKeyword),
                message: GodotDiagnostic("No inheritance found for exposable class")
            ))
            return []
        }
        
        let isFinal = classDeclSyntax.modifiers.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.final)
        })
        
        let isPublic = classDeclSyntax.accessModifierInspector.isPublic()
        let className = removeBackticks(classDeclSyntax.name.trimmedDescription)
        
        // Syntax
        let provider = ClassMacroDeclProvider.customClass(
            customClassDecl: classDeclSyntax,
            superclassName: inheritedElement.type.trimmedDescription, 
            isFinal: isFinal,
            in: context,
            isClassVisible: isPublic,
            exposedClassName: isPublic ? className : "_" + context.makeUniqueName(className).trimmedDescription.replacingOccurrences(of: "$", with: "")
        ) {
            let memberExpositions = membersExpositions(of: classDeclSyntax, in: context)
            
            for memberExposition in memberExpositions {
                memberExposition
            }
        }
        
        var additionalDecls: [DeclSyntax] = []
        for member in classDeclSyntax.memberBlock.members {
            guard let exposableMember = member.decl.exposableMember(),
                  isMemberExpositionAvailable(exposableMember, classDeclSyntax: classDeclSyntax)
            else {
                continue
            }
            
            additionalDecls.append(contentsOf: exposableMember.expositionPeerSyntax(
                classDeclSyntax: classDeclSyntax,
                in: context
            ))
        }
        
        return try provider.decls() + additionalDecls
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        try protocols.map { protocolSyntax in
            try ExtensionDeclSyntax("extension \(type): Godot.\(protocolSyntax)") {}
        }
    }
    
    private static func membersExpositions(
        of classDeclSyntax: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> [ExprSyntax] {
        var groupStructure = GroupStructure()
        var expressions = [ExprSyntax]()
        
        for member in classDeclSyntax.memberBlock.members {
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
                        insideType: \(classDeclSyntax.name).self
                    )
                    """
                case .subgroup(let string):
                    groupStructure.subgroupName = string
                    groupExprSyntax = """
                    Godot.GodotExtension.classRegistrar.registerSubgroup(
                        named: \(literal: string),
                        prefix: \(literal: groupStructure.subgroupPrefix),
                        insideType: \(classDeclSyntax.name).self
                    )
                    """
                }
                
                expressions.append(groupExprSyntax)
            }
            
            guard let exposableMember = member.decl.exposableMember(),
                  isMemberExpositionAvailable(exposableMember, classDeclSyntax: classDeclSyntax)
            else {
                continue
            }
            
            guard let expositionSyntax = exposableMember.expositionSyntax(
                classDeclSyntax: classDeclSyntax,
                namePrefix: groupStructure.memberPrefix,
                in: context
            ) else {
                continue
            }
            
            expressions.append(expositionSyntax)
        }
        
        return expressions
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingAttributesFor member: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [AttributeSyntax] {
        guard let classDeclSyntax = declaration.as(ClassDeclSyntax.self) else {
            return []
        }
        
        guard let exposableMember = member.exposableMember(),
              isMemberExpositionAvailable(exposableMember, classDeclSyntax: classDeclSyntax)
        else {
            return []
        }
        
        return ["@_ExposedMember"]
    }
    
    private static func isMemberExpositionAvailable(
        _ member: some ExposableMember,
        classDeclSyntax: ClassDeclSyntax
    ) -> Bool {
        if member.hasExpositionIgnoredAttribute {
            return false
        }
        
        switch member.checkExpositionAvailable(
            className: classDeclSyntax.name,
            isContextPublic: classDeclSyntax.accessModifierInspector.isPublic()
        ) {
        case .failure(_): return false
        case .success(_): return true
        }
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
