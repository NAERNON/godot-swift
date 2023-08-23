import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator
import Foundation

private let authorizedCharacters = CharacterSet.alphanumerics.union(.init(charactersIn: "_"))

public enum EmitterMacro: ExtensionMacro, MemberMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic("'@Emitter' can only be applied to a 'struct'")
            ))
            return []
        }
        
        // Check struct is empty
        guard structDecl.memberBlock.members.isEmpty else {
            // Provide a fixit with empty member
            let fixedStructDecl = structDecl
                .with(
                    \.memberBlock,
                     MemberBlockSyntax(members: MemberBlockItemListSyntax())
                )
            let fixIt = FixIt(message: GodotDiagnostic("Remove all '\(structDecl.name.trimmedDescription)' content"), changes: [
                .replace(
                    oldNode: Syntax(structDecl),
                    newNode: Syntax(fixedStructDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(structDecl.memberBlock),
                message: GodotDiagnostic("'@Emitter' can only be applied to an empty 'struct'"),
                fixIt: fixIt
            ))
            return []
        }
        
        let extensionDeclSyntax = try ExtensionDeclSyntax("extension \(type.trimmed): Godot.EmitterProtocol") {}
        
        return [extensionDeclSyntax]
    }
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            return []
        }
        
        guard let emitterAttribute = structDecl.attributes?.first(where: { $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Emitter" })?.as(AttributeSyntax.self) else {
            fatalError("No emitter macro found.")
        }
        
        guard let emitterParameters = self.emitterParameters(
            from: emitterAttribute,
            in: context,
            diagnoseErrors: true
        ) else {
            return []
        }
        
        let structName = structDecl.name.trimmedDescription
        var signalName = NamingConvention.pascal.convert(structName, to: .snake)
        let suffixToDelete = "_emitter"
        if signalName.hasSuffix(suffixToDelete) {
            signalName = String(signalName.dropLast(suffixToDelete.count))
        }
        
        let initDeclSyntax = try InitializerDeclSyntax("fileprivate init(_ object: Godot.Object)") {
            "signal = .init(object: object, signal: Self.signalName)"
        }
        
        let parametersString = emitterParameters
            .map { $0.name + ": " + $0.type }
            .joined(separator: ", ")
        let parametersCallString = emitterParameters
            .map { $0.name + ".makeVariant()" }
            .joined(separator: ", ")
        
        let emitFunctionDecl = try FunctionDeclSyntax("public func emit(\(raw: parametersString))") {
            "signal.emit(\(raw: parametersCallString))"
        }
        
        return [
        """
        public let signal: Godot.Signal
        public static let signalName: Godot.GodotStringName = \(literal: signalName)
        """,
        DeclSyntax(initDeclSyntax),
        DeclSyntax(emitFunctionDecl)
        ]
    }
    
    /// Returns an Array of all the parameters of the emitter,
    /// with each tuple being ("parameterName", "parameterType").
    static func emitterParameters(
        from attributeSyntax: AttributeSyntax,
        in context: some MacroExpansionContext,
        diagnoseErrors: Bool
    ) -> [(name: String, type: String)]? {
        guard let arguments = attributeSyntax.arguments?.as(LabeledExprListSyntax.self) else {
            return []
        }
        
        var parameters = [(String, String)]()
        var areParametersCorrect = true
        
        for argument in arguments {
            guard let tupleElements = argument.expression.as(TupleExprSyntax.self)?.elements,
                  tupleElements.count == 2 else {
                fatalError("The arguments should be tuples with two values.")
            }
            
            var index = tupleElements.startIndex
            let nameLabelSyntax = tupleElements[index]
            index = tupleElements.index(after: index)
            let typeLabelSyntax = tupleElements[index]
            
            // Check the correctness of the parameter string
            guard let stringLiteral = nameLabelSyntax.expression.as(StringLiteralExprSyntax.self),
                  stringLiteral.segments.count == 1,
                  let segment = stringLiteral.segments.first?.as(StringSegmentSyntax.self),
                  case .stringSegment(let stringSegment) = segment.content.tokenKind else {
                if diagnoseErrors {
                    context.diagnose(Diagnostic(
                        node: Syntax(nameLabelSyntax),
                        message: GodotDiagnostic("'\(nameLabelSyntax.expression.trimmedDescription)' cannot be used as name for signal parameter")
                    ))
                }
                areParametersCorrect = false
                continue
            }
            
            // Check no unauthorized character in the string
            if let unauthorizedRange = stringSegment.rangeOfCharacter(from: authorizedCharacters.inverted) {
                if diagnoseErrors {
                    context.diagnose(Diagnostic(
                        node: Syntax(nameLabelSyntax),
                        message: GodotDiagnostic("Character '\(stringSegment[unauthorizedRange])' cannot be used in name for signal parameter")
                    ))
                }
                areParametersCorrect = false
                continue
            }
            
            let typeDescription: String
            if let typeMember = typeLabelSyntax.expression.as(MemberAccessExprSyntax.self),
               let base = typeMember.base,
               typeMember.declName.baseName.tokenKind == .keyword(.self) {
                typeDescription = base.trimmedDescription
            } else {
                typeDescription = typeLabelSyntax.expression.trimmedDescription
            }
            
            parameters.append((stringSegment, typeDescription))
        }
        
        guard areParametersCorrect else {
            return nil
        }
        
        return parameters
    }
}
