import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator
import Foundation

private let authorizedCharacters = CharacterSet.alphanumerics.union(.init(charactersIn: "_"))

public enum EmitterMacro: MemberMacro, PeerMacro, ExtensionMacro {
    struct MacroArguments {
        let signal: String?
        let params: [(name: String, type: String)]
    }
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(
                node: Syntax(declaration),
                message: GodotDiagnostic("Emitter must be a 'struct'")
            ))
            return []
        }
        
        // Check is public
        guard structDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(structDecl.structKeyword),
                message: GodotDiagnostic("Emitter is not public")
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
            let fixIt = FixIt(message: GodotDiagnostic("Remove '\(structDecl.name.trimmedDescription)' body"), changes: [
                .replace(
                    oldNode: Syntax(structDecl),
                    newNode: Syntax(fixedStructDecl))
            ])
            
            context.diagnose(Diagnostic(
                node: Syntax(structDecl.memberBlock),
                message: GodotDiagnostic("Emitter must have an empty body"),
                fixIt: fixIt
            ))
            return []
        }
        
        guard let macroArguments = self.macroArguments(
            from: attribute,
            in: context,
            diagnoseErrors: true
        ) else {
            return []
        }
        
        let structName = structDecl.name.trimmedDescription
        let signalName = macroArguments.signal ?? NamingConvention.pascal.convert(structName, to: .snake)
        
        let propertiesDecl: DeclSyntax = """
        public typealias SignalInput = (\(raw: macroArguments.params.map { $0.type }.joined(separator: ", ")))
        
        public static let signalName: Godot.GodotStringName = \(literal: signalName)
        
        public weak private(set) var object: Godot.Object?
        """
        
        let initDeclSyntax = try InitializerDeclSyntax("fileprivate init(_ object: Godot.Object)") {
            "self.object = object"
        }
        
        let parametersString = macroArguments.params
            .map { $0.name + ": " + $0.type }
            .joined(separator: ", ")
        let parametersCallString = macroArguments.params
            .map { $0.name + ".makeVariant()" }
            .joined(separator: ", ")
        
        let emitFunctionDecl = try FunctionDeclSyntax("public func emit(\(raw: parametersString))") {
            if parametersCallString.isEmpty {
                "_ = object?.emitSignal(Self.signalName)"
            } else {
                "_ = object?.emitSignal(Self.signalName, rest: \(raw: parametersCallString))"
            }
        }
        
        return [
            propertiesDecl,
            DeclSyntax(initDeclSyntax),
            DeclSyntax(emitFunctionDecl)
        ]
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let structDecl = declaration.as(StructDeclSyntax.self) else {
            return []
        }
        
        let variableName = "emitter" + structDecl.name.trimmedDescription
        
        return [
            "public var \(raw: variableName): \(raw: structDecl.name.trimmed) { .init(self) }"
        ]
    }
    
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let decl = try ExtensionDeclSyntax("extension \(type): Godot.EmitterProtocol") {}
        
        return [decl]
    }
    
    /// Returns the arguments of the emitter macro.
    static func macroArguments(
        from attributeSyntax: AttributeSyntax,
        in context: some MacroExpansionContext,
        diagnoseErrors: Bool
    ) -> MacroArguments? {
        guard let arguments = attributeSyntax.arguments?.as(LabeledExprListSyntax.self) else {
            return MacroArguments(signal: nil, params: [])
        }
        
        var signalName: String?
        var parameters = [(String, String)]()
        var areParametersCorrect = true
        
        for argument in arguments {
            if let label = argument.label,
               label.text == "signal"
            {
                signalName = argument.expression.as(StringLiteralExprSyntax.self)?
                    .segments.trimmedDescription
                continue
            }
            
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
        
        return MacroArguments(signal: signalName, params: parameters)
    }
}
