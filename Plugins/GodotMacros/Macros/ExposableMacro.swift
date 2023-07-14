import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum ExposableMacro: MemberMacro {
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
            let diagnostic = Diagnostic(
                node: Syntax(attribute),
                message: GodotExposableDiagnostic.notAClass
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // Check has inheritance
        guard let inheritedElement = classDecl.inheritanceClause?
            .inheritedTypeCollection.first else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.noSuperclassProvided
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // Check is public
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.notPublic
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // MARK: Expose functions
        
        let functionsToExpose = classDecl.memberBlock.members
            .compactMap { $0.decl.as(FunctionDeclSyntax.self) }
            .filter {
                let tokens = $0.modifiers?.map(\.name.tokenKind) ?? []
                
                guard !tokens.contains(where: { $0 == .keyword(.override) }) else {
                    return false
                }
                
                return tokens.contains(where: {
                    $0 == .keyword(.public) || $0 == .keyword(.open)
                })
            }
        
        var functionExpositions = [ExprSyntax]()
        for functionToExpose in functionsToExpose {
            let isStatic = functionToExpose.modifiers?.map(\.name.tokenKind).contains(where: {
                $0 == .keyword(.static)
            }) == true
            
            let parameters = functionToExpose.signature.input.parameterList.map {
                """
                .argument(\($0.type.description).self, name: "\($0.secondName ?? $0.firstName)"),
                """
            }
            
            let returnParameter: String
            let returnValueName: String
            let returnDecl: ExprSyntax
            
            if let returnType = functionToExpose.signature.output?.returnType.description {
                returnParameter =
                    """
                    .returnParameter(\(returnType.description).self)
                    """
                
                returnValueName = "returnValue"
                returnDecl =
                    """
                    returnValue.makeVariant().copyTo(variantPtr: returnPtr!)
                    """
            } else {
                returnParameter = "nil"
                returnValueName = "_"
                returnDecl = ""
            }
            
            let preFunctionCall = if isStatic {
                classDecl.identifier.description
            } else {
                "Unmanaged<\(classDecl.identifier.description)>.fromOpaque(instancePtr!).takeUnretainedValue()"
            }
            
            var functionCall = functionToExpose.identifier.text + "("
            for (index, parameter) in functionToExpose.signature.input.parameterList.enumerated() {
                functionCall += "\n    "
                functionCall += (parameter.secondName?.description ?? parameter.firstName.description)
                functionCall += ": \(parameter.type.description).fromMatchingTypeVariant(Variant(extensionVariantPtr: args!.advanced(by: \(index)).pointee!))"
            }
            functionCall += "\n)"
            
            let functionCallAssignment: ExprSyntax =
                """
                let \(raw: returnValueName) = \(raw: preFunctionCall).\(raw: functionCall)
                """
            
            functionExpositions.append(
                """
                \(raw: Trivia.newline)
                // --- \(raw: functionToExpose.identifier.description) --- //
                
                GodotExtension.classRegister.registerFunction(
                    withName: \(literal: functionToExpose.identifier.description),
                    insideType: self,
                    argumentParameters: [
                        \(raw: parameters.joined(separator: "\n"))
                    ],
                    returnParameter: \(raw: returnParameter),
                    isStatic: \(literal: isStatic)
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    \(functionCallAssignment)
                    \(returnDecl)
                }
                """
            )
        }
        
        // MARK: Expose class
        
        let exposeToGodotDecl = try FunctionDeclSyntax("open override class func _gd_exposeToGodot()") {
            ExprSyntax(
                """
                let isClassRegistered = GodotExtension.classRegister.registerCustomClass(
                    ofType: self,
                    superclassType: \(raw: inheritedElement.description).self
                ) { _, _, _ in
                    
                }
                createInstanceFunction: { _ in
                    \(classDecl.identifier)._makeNewInstanceManagedByGodot()
                }
                freeInstanceFunction: { _, instancePtr in
                    \(classDecl.identifier)._freeInstanceManagedByGodot(instancePtr!)
                }
                
                guard isClassRegistered else { return }
                """
            )
            
            // Expose each function
            for function in functionExpositions {
                function
            }
        }
        
        // MARK: Override class properties
        
        let classNameVar = context.makeUniqueName("className")
        let staticClassNameDecl: DeclSyntax =
            """
            private static let \(classNameVar): StringName = \(literal: classDecl.identifier.description)
            """
        let classNameDecl: DeclSyntax =
            """
            open override class var _gd_className: StringName { \(classNameVar) }
            """
        let isCustomClassDecl: DeclSyntax =
            """
            open override class var _gd_isCustomClass: Bool { true }
            """
        
        return [DeclSyntax(exposeToGodotDecl), staticClassNameDecl, classNameDecl, isCustomClassDecl]
    }
}

// MARK: - Diagnostic

private enum GodotExposableDiagnostic: String, Error, DiagnosticMessage {
    case notAClass
    case noSuperclassProvided
    case notPublic
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAClass:
            "Only classes can be exposed to Godot"
        case .noSuperclassProvided:
            "Only classes that inherit the Godot 'Object' class can be exposed to Godot"
        case .notPublic:
            "Only public classes can be exposed to Godot"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}
