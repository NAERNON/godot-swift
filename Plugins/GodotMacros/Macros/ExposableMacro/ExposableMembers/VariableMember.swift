import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

struct VariableMember: ExposableMember {
    let variableDeclSyntax: VariableDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let variableDeclSyntax = declSyntax.as(VariableDeclSyntax.self),
              let tokens = variableDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public) || $0 == .keyword(.open)
              }),
              !tokens.contains(where: { $0 == .keyword(.override) })
        else {
            return nil
        }
        
        self.variableDeclSyntax = variableDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        variableDeclSyntax.bindings.first?.pattern.trimmedDescription ?? ""
    }
    
    var attributes: AttributeListSyntax? {
        variableDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        guard let variableBinding = variableDeclSyntax.bindings.first else {
            return nil
        }
        
        // Check type is explicitly written
        guard let variableType = variableDeclSyntax.bindings.first?.typeAnnotation?.type else {
            context.diagnose(Diagnostic(
                node: Syntax(variableBinding),
                message: GodotDiagnostic("Exposable variables must explicitly define their type")
            ))
            return nil
        }
        
        var isExposable = true
        
        // Check async or throws
        if let accessors = variableBinding.accessorBlock?.accessors.as(AccessorDeclListSyntax.self) {
            for accessor in accessors {
                if let specifiers = accessor.effectSpecifiers?.as(AccessorEffectSpecifiersSyntax.self) {
                    if let throwsSpecifier = specifiers.throwsSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(throwsSpecifier),
                            message: GodotDiagnostic("Exposable variables cannot be marked 'throws'")
                        ))
                        isExposable = false
                    }
                    
                    if let asyncSpecifier = specifiers.asyncSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(asyncSpecifier),
                            message: GodotDiagnostic("Exposable variables cannot be marked 'async'")
                        ))
                        isExposable = false
                    }
                }
            }
        }
        
        // Check static or class
        if let modifiers = variableDeclSyntax.modifiers {
            let diagnostic = GodotDiagnostic("Exposable variables cannot be marked 'static' or 'class'")
            if let modifier = modifiers.first(where: { $0.name.tokenKind == .keyword(.static) }) {
                context.diagnose(Diagnostic(
                    node: Syntax(modifier),
                    message: diagnostic
                ))
                isExposable = false
            }
            if let modifier = modifiers.first(where: { $0.name.tokenKind == .keyword(.class) }) {
                context.diagnose(Diagnostic(
                    node: Syntax(modifier),
                    message: diagnostic
                ))
                isExposable = false
            }
        }
        
        guard isExposable else {
            return nil
        }
        
        guard let variableBinding = variableDeclSyntax.bindings.first else {
            return nil
        }
        
        let hasSetter: Bool
        if variableDeclSyntax.bindingSpecifier.tokenKind == .keyword(.let) {
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
        Unmanaged<\(raw: classContext.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue().\(raw: variableBinding.pattern.trimmedDescription).makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
        """
        
        let setterExprSyntax: ExprSyntax = """
        Unmanaged<\(raw: classContext.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue().\(raw: variableBinding.pattern.trimmedDescription) = \(variableType.trimmed).fromCompatibleVariant(Variant(godotExtensionPointer: args!.advanced(by: 0).pointee!))
        """
        
        let variableName = NamingConvention.camel.convert(variableBinding.pattern.trimmedDescription, to: .snake)
        let getterName = "get_" + variableName
        let setterName = "set_" + variableName
        
        if hasSetter {
            return """
            Godot.GodotExtension.classRegister.registerVariable(
                named: \(literal: variableName),
                type: \(variableType).self,
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
            Godot.GodotExtension.classRegister.registerVariable(
                named: \(literal: variableName),
                type: \(variableType).self,
                insideType: self,
                getterName: \(literal: getterName)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(getterExprSyntax)
            }
            """
        }
    }
}
