import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case noExplicitType
    case `throws`
    case isAsync
    case isStaticOrClass
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .noExplicitType:
            "Exposable variables must explicitly define their type"
        case .throws:
            "Exposable variables cannot be marked 'throws'"
        case .isAsync:
            "Exposable variables cannot be marked 'async'"
        case .isStaticOrClass:
            "Exposable variables cannot be marked 'static' or 'class'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension VariableDeclSyntax: ClassExposableMember {
    var classExpositionIdentifier: String {
        bindings.first?.pattern.trimmedDescription ?? ""
    }
    
    var isExcludedFromClassExposition: Bool {
        guard let tokens = modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        // Check override
        if tokens.contains(where: { $0 == .keyword(.override) }) {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public) || 
            $0 == .keyword(.open)
        })
    }
    
    private var variableType: TypeSyntax? {
        bindings.first?.typeAnnotation?.type
    }
    
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        guard let variableBinding = bindings.first else {
            return false
        }
        
        // Check type is explicitly written
        guard let variableType else {
            context.diagnose(Diagnostic(
                node: Syntax(variableBinding),
                message: ExpositionDiagnostic.noExplicitType
            ))
            return false
        }
        
        var isExposable = true
        
        // Check async or throws
        if let accessors = variableBinding.accessorBlock?.accessors.as(AccessorDeclListSyntax.self) {
            for accessor in accessors {
                if let specifiers = accessor.effectSpecifiers?.as(AccessorEffectSpecifiersSyntax.self) {
                    if let throwsSpecifier = specifiers.throwsSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(throwsSpecifier),
                            message: ExpositionDiagnostic.throws
                        ))
                        isExposable = false
                    }
                    
                    if let asyncSpecifier = specifiers.asyncSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(asyncSpecifier),
                            message: ExpositionDiagnostic.isAsync
                        ))
                        isExposable = false
                    }
                }
            }
        }
        
        // Check static or class
        if let modifiers {
            if let modifier = modifiers.first(where: { $0.name.tokenKind == .keyword(.static) }) {
                context.diagnose(Diagnostic(
                    node: Syntax(modifier),
                    message: ExpositionDiagnostic.isStaticOrClass
                ))
                isExposable = false
            }
            if let modifier = modifiers.first(where: { $0.name.tokenKind == .keyword(.class) }) {
                context.diagnose(Diagnostic(
                    node: Syntax(modifier),
                    message: ExpositionDiagnostic.isStaticOrClass
                ))
                isExposable = false
            }
        }
        
        return isExposable
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        guard let variableBinding = bindings.first,
              let variableType
        else {
            return ""
        }
        
        let hasSetter: Bool
        if bindingSpecifier.tokenKind == .keyword(.let) {
            hasSetter = false
        } else if variableBinding.initializer != nil {
            hasSetter = true
        } else if let accessors = variableBinding.accessorBlock?.accessors.as(AccessorDeclListSyntax.self) {
            hasSetter = accessors.contains(where: { $0.accessorSpecifier == .keyword(.set) })
        } else {
            hasSetter = false
        }
        
        // Syntax
        
        let getterExprSyntax: ExprSyntax = """
        Unmanaged<\(raw: classDecl.name.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue().\(raw: variableBinding.pattern.trimmedDescription).makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
        """
        
        let setterExprSyntax: ExprSyntax = """
        Unmanaged<\(raw: classDecl.name.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue().\(raw: variableBinding.pattern.trimmedDescription) = \(variableType.trimmed).fromMatchingTypeVariant(Variant(godotExtensionPointer: args!.advanced(by: 0).pointee!))
        """
        
        let variableName = NamingConvention.camel.convert(variableBinding.pattern.trimmedDescription, to: .snake)
        let getterName = "get_" + variableName
        let setterName = "set_" + variableName
        
        if hasSetter {
            return """
            GodotExtension.classRegister.registerVariable(
                named: \(literal: variableName),
                type: Int.self,
                insideType: self,
                getterName: \(literal: getterName),
                setterName: \(literal: setterName)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(getterExprSyntax)
            } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                \(setterExprSyntax)
            }
            """
        } else {
            return """
            GodotExtension.classRegister.registerVariable(
                named: \(literal: variableName),
                type: Int.self,
                insideType: self,
                getterName: \(literal: getterName)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(getterExprSyntax)
            }
            """
        }
    }
}
