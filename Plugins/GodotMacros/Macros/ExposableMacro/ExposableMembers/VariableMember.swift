import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import Utils

struct VariableMember: ExposableMember {
    let variableDeclSyntax: VariableDeclSyntax
    let isExported: Bool
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let variableDeclSyntax = declSyntax.as(VariableDeclSyntax.self) else {
            return nil
        }
        
        self.variableDeclSyntax = variableDeclSyntax
        
        isExported = variableDeclSyntax.attributes.contains(where: {
            $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Export"
        }) == true
    }
    
    var attributes: AttributeListSyntax? {
        variableDeclSyntax.attributes
    }
    
    func checkExpositionAvailable(
        className: TokenSyntax,
        isContextPublic: Bool
    ) -> Result<Void, CheckExpositionError> {
        if isExported {
            return .success(())
        }
        
        if !isContextPublic {
            return .failure(.init("Property cannot be exposed because '\(className.trimmedDescription)' is not public"))
        }
        
        if !variableDeclSyntax.accessModifierInspector.isPublic() {
            return .failure(.notPublicMember)
        }
        
        let tokens = variableDeclSyntax.modifiers.map(\.name.tokenKind)
        if tokens.contains(where: { $0 == .keyword(.override) }) {
            return .failure(.init("The property is an override"))
        }
        
        return .success(())
    }
    
    func expositionSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        namePrefix: String,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        guard let variableBinding = variableDeclSyntax.bindings.first else {
            return nil
        }
        
        if !isContextPublic && isExported {
            context.diagnose(Diagnostic(
                node: Syntax(variableDeclSyntax),
                message: GodotDiagnostic("'\(className.trimmedDescription)' cannot contain exported properties because the class is not public")
            ))
            return nil
        }
        
        if isExported, variableDeclSyntax.accessModifierInspector.diagnoseIfNotPublic(
            "Exported property must be public",
            in: context
        ) { return nil }
        
        var isExposable = true
        
        // Check async or throws
        if let accessors = variableBinding.accessorBlock?.accessors.as(AccessorDeclListSyntax.self) {
            for accessor in accessors {
                if let specifiers = accessor.effectSpecifiers?.as(AccessorEffectSpecifiersSyntax.self) {
                    if let throwsSpecifier = specifiers.throwsSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(throwsSpecifier),
                            message: GodotDiagnostic("Exposed variables cannot be marked 'throws'")
                        ))
                        isExposable = false
                    }
                    
                    if let asyncSpecifier = specifiers.asyncSpecifier {
                        context.diagnose(Diagnostic(
                            node: Syntax(asyncSpecifier),
                            message: GodotDiagnostic("Exposed variables cannot be marked 'async'")
                        ))
                        isExposable = false
                    }
                }
            }
        }
        
        // Check static or class
        let staticClassDiagnostic = GodotDiagnostic("Exposed variables cannot be marked 'static' or 'class'")
        if let modifier = variableDeclSyntax.modifiers.first(where: { $0.name.tokenKind == .keyword(.static) }) {
            context.diagnose(Diagnostic(
                node: Syntax(modifier),
                message: staticClassDiagnostic
            ))
            isExposable = false
        }
        if let modifier = variableDeclSyntax.modifiers.first(where: { $0.name.tokenKind == .keyword(.class) }) {
            context.diagnose(Diagnostic(
                node: Syntax(modifier),
                message: staticClassDiagnostic
            ))
            isExposable = false
        }
        
        guard isExposable else {
            return nil
        }
        
        guard let variableBinding = variableDeclSyntax.bindings.first else {
            return nil
        }
        
        let hasSetter: Bool
        if variableDeclSyntax.bindingSpecifier.tokenKind == .keyword(.let) {
            // Is a let property
            hasSetter = false
        } else if variableDeclSyntax.modifiers.contains(where: isModifierInternalSet) {
            // Is at least internal(set)
            hasSetter = false
        } else if variableBinding.initializer != nil {
            // Has an initializer
            hasSetter = true
        } else if variableBinding.accessorBlock == nil {
            // Has no accessor block
            hasSetter = true
        } else if let accessors = variableBinding.accessorBlock?.accessors.as(AccessorDeclListSyntax.self) {
            // Has a set, didSet or willSet in the accessors
            hasSetter = accessors.contains(where: {
                $0.accessorSpecifier.tokenKind == .keyword(.set) ||
                $0.accessorSpecifier.tokenKind == .keyword(.didSet) ||
                $0.accessorSpecifier.tokenKind == .keyword(.willSet)
            })
        } else {
            hasSetter = false
        }
        
        // Syntax
        
        let swiftVariableName = variableBinding.pattern.trimmed
        let className = className.trimmed
        
        let getterExprSyntax: ExprSyntax = """
        Godot.Variant.withStorage(of: Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue().\(swiftVariableName)) { storage in
            storage.copyToGodot(unsafePointer: returnPtr!)
        }
        """
        
        let getterPointerExprSyntax: ExprSyntax = """
        Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue().\(swiftVariableName).copyToGodot(unsafePointer: returnPtr!)
        """
        
        let setterExprSyntax: ExprSyntax = """
        Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue().\(swiftVariableName) = .convertFromCheckedStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
        """
        
        let setterPointerExprSyntax: ExprSyntax = """
        Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue().\(swiftVariableName) = .fromGodotUnsafePointer(args!.advanced(by: 0).pointee!)
        """
        
        let variableName = variableBinding.pattern.trimmedDescription.translated(from: .camel, to: .snake)
        let getterName = "get_" + variableName
        let setterName = "set_" + variableName
        
        let hintSyntax = hintSyntax(classContext: className, swiftVariableName: swiftVariableName)
        
        let functionName: String
        let hintLineSyntax: String
        
        if let hintSyntax {
            functionName = "registerExportedVariable"
            hintLineSyntax = "\nhint: \(hintSyntax),"
        } else {
            functionName = "registerVariable"
            hintLineSyntax = ""
        }
        
        if hasSetter {
            return """
            Godot.GodotExtension.classRegistrar.\(raw: functionName)(
                named: \(literal: namePrefix + variableName),
                keyPath: \\.\(raw: swiftVariableName),
                insideType: \(className).self, \(raw: hintLineSyntax)
                getterName: \(literal: getterName),
                setterName: \(literal: setterName)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(getterExprSyntax)
            } getterPointerCall: { _, instancePtr, args, returnPtr in
                \(getterPointerExprSyntax)
            } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                \(setterExprSyntax)
            } setterPointerCall: { _, instancePtr, args, returnPtr in
                \(setterPointerExprSyntax)
            }
            """
        } else {
            return """
            Godot.GodotExtension.classRegistrar.\(raw: functionName)(
                named: \(literal: variableName),
                keyPath: \\.\(raw: swiftVariableName),
                insideType: self, \(raw: hintLineSyntax)
                getterName: \(literal: getterName)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(getterExprSyntax)
            } getterPointerCall: { _, instancePtr, args, returnPtr in
                \(getterPointerExprSyntax)
            }
            """
        }
    }
    
    func expositionPeerSyntax(
        className: TokenSyntax,
        isContextPublic: Bool,
        in context: some MacroExpansionContext
    ) -> [DeclSyntax] {
        []
    }
    
    private func isModifierInternalSet(_ modifier: DeclModifierSyntax) -> Bool {
        let tokenKind = modifier.name.tokenKind
        
        guard tokenKind == .keyword(.private) ||
                tokenKind == .keyword(.fileprivate) ||
                tokenKind == .keyword(.internal) ||
                tokenKind == .keyword(.package),
              let detail = modifier.detail else {
            return false
        }
        
        return detail.detail.tokenKind == .identifier("set")
    }
    
    private func hintSyntax(
        classContext: TokenSyntax,
        swiftVariableName: PatternSyntax
    ) -> String? {
        guard let attributeSyntax = attributes?
            .first(where: {
                $0.as(AttributeSyntax.self)?.attributeName.trimmedDescription == "Export"
            })?
            .as(AttributeSyntax.self) else {
            return nil
        }
        
        if let hintContent = attributeSyntax
            .arguments?
            .as(LabeledExprListSyntax.self)?
            .first?
            .as(LabeledExprSyntax.self)?
            .expression {
            return hintContent.trimmedDescription
        } else {
            return "._defaultForValue(at: \\\(classContext).\(swiftVariableName))"
        }
    }
}
