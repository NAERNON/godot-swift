import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator
import Foundation

// MARK: - ExposableMacro

public enum ExposableMacro: MemberMacro {
    // MARK: Diagnostic
    
    private enum ExposableDiagnostic: String, Error, DiagnosticMessage {
        case notAClass
        
        var severity: DiagnosticSeverity { .error }
        
        var message: String {
            switch self {
            case .notAClass:
                "Only classes can be exposed to Godot"
            }
        }
        
        var diagnosticID: MessageID {
            MessageID(domain: "GodotMacros", id: rawValue)
        }
    }
    
    // MARK: Syntax
    
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
            context.diagnose(Diagnostic(
                node: Syntax(attribute),
                message: ExposableDiagnostic.notAClass
            ))
            return []
        }
        
        return try ClassSyntaxProvider(classDecl: classDecl, context: context).expositionSyntax()
    }
}

// MARK: - ClassSyntaxProvider

private struct ClassSyntaxProvider<Context> where Context : MacroExpansionContext {
    let classDecl: ClassDeclSyntax
    let context: Context
    
    // MARK: Diagnostic
    
    private enum ClassDiagnostic: String, Error, DiagnosticMessage {
        case noSuperclassProvided
        case notPublic
        
        var severity: DiagnosticSeverity { .error }
        
        var message: String {
            switch self {
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
    
    // MARK: Syntax
    
    func expositionSyntax() throws -> [DeclSyntax]{
        // Check has inheritance
        guard let inheritedElement = classDecl.inheritanceClause?
            .inheritedTypes.first else {
            context.diagnose(Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: ClassDiagnostic.noSuperclassProvided
            ))
            return []
        }
        
        // Check is public or open
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            context.diagnose(Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: ClassDiagnostic.notPublic
            ))
            return []
        }
        
        // Syntax
        let provider = ClassMacroDeclProvider(
            customClassDecl: classDecl,
            superclassName: inheritedElement.type.trimmedDescription,
            in: context
        ) {
            FunctionSyntaxProvider(classDecl: classDecl, context: context).expositionSyntax()
        }
        
        return try provider.decls()
    }
}

// MARK: - FunctionSyntaxProvider

private struct FunctionSyntaxProvider<Context> where Context : MacroExpansionContext {
    let classDecl: ClassDeclSyntax
    let context: Context
    
    private func functionsToExpose() -> [FunctionDeclSyntax] {
        classDecl.memberBlock.members
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
    }
    
    // MARK: Diagnostic
    
    private enum FunctionDiagnostic: String, Error, DiagnosticMessage {
        case `throws`
        case isAsync
        case isGeneric
        case someOrAnyParameter
        case variadicParameter
        case someOrAnyReturnType
        
        var severity: DiagnosticSeverity { .error }
        
        var message: String {
            switch self {
            case .throws:
                "Godot exposed functions cannot be marked 'throws'"
            case .isAsync:
                "Godot exposed functions cannot be marked 'async'"
            case .isGeneric:
                "Godot exposed functions cannot be generic"
            case .someOrAnyParameter:
                "Godot exposed functions cannot have parameters marked 'some' or 'any'"
            case .variadicParameter:
                "Godot exposed functions cannot have variadic parameters"
            case .someOrAnyReturnType:
                "Godot exposed functions cannot return a type marked 'some' or 'any'"
            }
        }
        
        var diagnosticID: MessageID {
            MessageID(domain: "GodotMacros", id: rawValue)
        }
    }
    
    // MARK: Syntax
    
    @CodeBlockItemListBuilder
    func expositionSyntax() -> CodeBlockItemListSyntax {
        for function in functionsToExpose() {
            expositionSyntax(forFunction: function)
        }
    }
    
    private func expositionSyntax(forFunction functionDeclSyntax: FunctionDeclSyntax) -> ExprSyntax {
        var isFunctionExposable = true
        
        // Check not throw or async
        if let specifiers = functionDeclSyntax.signature.effectSpecifiers {
            if let throwsSpecifier = specifiers.throwsSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(throwsSpecifier),
                    message: FunctionDiagnostic.throws
                ))
                isFunctionExposable = false
            }
            
            if let asyncSpecifier = specifiers.asyncSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(asyncSpecifier),
                    message: FunctionDiagnostic.isAsync
                ))
                isFunctionExposable = false
            }
        }
        
        // Check not generic
        if let generic = functionDeclSyntax.genericParameterClause {
            context.diagnose(Diagnostic(
                node: Syntax(generic),
                message: FunctionDiagnostic.isGeneric
            ))
            isFunctionExposable = false
        }
        
        // Check no parameter is some, any or variadic
        for parameter in functionDeclSyntax.signature.parameterClause.parameters {
            if let someOrAnyTypeSyntax = parameter.type.as(SomeOrAnyTypeSyntax.self) {
                context.diagnose(Diagnostic(
                    node: Syntax(someOrAnyTypeSyntax),
                    message: FunctionDiagnostic.someOrAnyParameter
                ))
                isFunctionExposable = false
            }
            
            if let ellipsis = parameter.ellipsis {
                context.diagnose(Diagnostic(
                    node: Syntax(ellipsis),
                    message: FunctionDiagnostic.variadicParameter
                ))
                isFunctionExposable = false
            }
        }
        
        // Check return type is not some or any
        if let someOrAnyTypeSyntax = functionDeclSyntax.signature.returnClause?.type.as(SomeOrAnyTypeSyntax.self) {
            context.diagnose(Diagnostic(
                node: Syntax(someOrAnyTypeSyntax),
                message: FunctionDiagnostic.someOrAnyReturnType
            ))
            isFunctionExposable = false
        }
        
        guard isFunctionExposable else { return "" }
        
        // Syntax
        let isStatic = functionDeclSyntax.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        }) == true
        
        let parameters = functionDeclSyntax.signature.parameterClause.parameters.map {
            """
            .argument(\($0.type.trimmedDescription).self, name: "\($0.secondName ?? $0.firstName)"),
            """
        }
        
        let returnParameter: String
        let returnValueName: String
        let returnDecl: ExprSyntax
        
        if let returnType = functionDeclSyntax.signature.returnClause?.type.trimmed {
            returnParameter =
            """
            .returnParameter(\(returnType).self)
            """
            
            returnValueName = "returnValue"
            returnDecl =
            """
            returnValue.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
            """
        } else {
            returnParameter = "nil"
            returnValueName = "_"
            returnDecl = ""
        }
        
        let preFunctionCall = if isStatic {
            classDecl.name.trimmedDescription
        } else {
            "Unmanaged<\(classDecl.name.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue()"
        }
        
        var functionCall = functionDeclSyntax.name.trimmedDescription + "("
        let parameterList = functionDeclSyntax.signature.parameterClause.parameters
        for (index, parameter) in parameterList.enumerated() {
            functionCall += "\n    "
            if parameter.firstName.tokenKind != .wildcard {
                functionCall += parameter.firstName.trimmedDescription + ": "
            }
            functionCall += "\(parameter.type.trimmedDescription).fromMatchingTypeVariant(Variant(godotExtensionPointer: args!.advanced(by: \(index)).pointee!))"
            
            if index < parameterList.count - 1 {
                functionCall += ","
            }
        }
        functionCall += "\n)"
        
        let functionCallAssignment: ExprSyntax =
        """
        let \(raw: returnValueName) = \(raw: preFunctionCall).\(raw: functionCall)
        """
        
        let functionName = NamingConvention.camel.convert(functionDeclSyntax.name.trimmedDescription, to: .snake)
        
        return """
        \(raw: Trivia.newline)
        // --- \(functionDeclSyntax.name.trimmed) --- //
        
        GodotExtension.classRegister.registerFunction(
            withName: \(literal: functionName),
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
    }
}
