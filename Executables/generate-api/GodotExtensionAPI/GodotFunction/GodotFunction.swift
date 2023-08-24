import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

/// A protocol representing a Godot function.
///
/// Conform your type to the protocol to gain access
/// to usefull syntax declarations.
protocol GodotFunction {
    var name: String { get }
    var arguments: [GodotArgument]? { get }
    var returnType: GodotType? { get }
    
    var isVararg: Bool { get }
    var isVarargArray: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
}

// MARK: - Default behavior

extension GodotFunction {
    var isVararg: Bool { false }
    var isVarargArray: Bool { false }
    var isStatic: Bool { false }
    var isConst: Bool { false }
    var isMutating: Bool { false }
}

// MARK: - Extensions

extension GodotFunction {
    private var varargArgumentIdentifier: String {
        "rest"
    }
    
    /// Returns the syntax for the number of arguments.
    /// 
    /// - Parameter type: The expected type of integer.
    ///
    /// For a function with 3 arguments, it will return "`3`".
    /// 
    /// For a vararg function with 3 arguments and a `Int32` type,
    /// it will return "`3 + Int32(rest.count)`".
    func argumentsCountSyntax<IntegerType: BinaryInteger>(type: IntegerType.Type) -> String {
        var syntax = String(arguments?.count ?? 0)
        if isVararg {
            syntax.append(" + \(IntegerType.self)(\(varargArgumentIdentifier).count)")
        }
        return syntax
    }
    
    /// Returns the declaration syntax of the function.
    func declSyntax(
        underscoreName: Bool = false,
        hideAllLabels: Bool = false,
        options: GodotTypeSyntaxOptions = [],
        keywords: Keyword...,
        @CodeBlockItemListBuilder bodyBuilder: () throws -> CodeBlockItemListSyntax
    ) throws -> FunctionDeclSyntax {
        let arguments = self.arguments ?? []
        
        var functionHeader = String()
        
        functionHeader.append("func ")
        
        if underscoreName {
            functionHeader.append("_")
        }
        
        functionHeader.append(name)
        functionHeader.append("(")
        functionHeader.append(arguments.map { argument in
            var parameterString = ""
            
            if argument.isLabelHidden || hideAllLabels {
                parameterString.append("_ ")
            } else if let label = argument.label {
                parameterString.append(label)
                parameterString.append(" ")
            }
            parameterString.append(CodeLanguage.swift.protectNameIfKeyword(for: argument.name))
            parameterString.append(": ")
            parameterString.append(argument.type.optional(argument.type.isGodotClass).syntax(options: options))
            
            if let defaultValue = argument.defaultValue {
                parameterString.append(" = ")
                parameterString.append(defaultValue.syntax(forType: argument.type))
            }
            
            return parameterString
        }.joined(separator: ", "))
        
        if isVararg {
            if !arguments.isEmpty {
                functionHeader.append(", ")
            }
            functionHeader.append(varargArgumentIdentifier)
            if isVarargArray {
                functionHeader.append(": [Variant]")
            } else {
                functionHeader.append(": Variant...")
            }
        }
        
        functionHeader.append(")")
        
        if let returnType {
            functionHeader.append(" -> ")
            functionHeader.append(returnType.optional(returnType.isGodotClass).syntax(options: options))
        }
        
        let modifiers = DeclModifierListSyntax {
            if isStatic {
                DeclModifierSyntax(name: .keyword(.static))
            }
            
            if isMutating {
                DeclModifierSyntax(name: .keyword(.mutating))
            }
            
            for keyword in keywords {
                DeclModifierSyntax(name: .keyword(keyword))
            }
        }
        
        return try FunctionDeclSyntax("\(raw: functionHeader)", bodyBuilder: bodyBuilder)
            .with(\.modifiers, modifiers)
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// Use this to access all the arguments pointers in the function.
    /// The `bodyBuilder` provides an argument giving all the
    /// pointer names accessible in the closure.
    ///
    /// For a function with 2 parameters, the following syntax would be generated:
    /// ```swift
    /// withUnsafePointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafePointer(to: arg2) { __ptr_arg2 in
    ///         // Body with ["__ptr_arg1", "__ptr_arg2"]
    ///     }
    /// }
    /// ```
    func argumentsPointerAccessSyntax(
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        try argumentsPointerAccessSyntax(indexes: 0..<(arguments?.count ?? 0), bodyBuilder: bodyBuilder)
    }
    
    /// Returns a pack of all the arguments pointers of the function.
    ///
    /// - Parameters:
    ///   - forcePackCreation: A Boolean value indicating whether the
    ///   pack sould be created,
    ///   even if no argument is inside the pack.
    ///   - bodyBuilder: The content syntax.
    ///
    /// Use this to access all the arguments pointers in the function
    /// grouped in a pack.
    /// The `bodyBuilder` provides an argument giving the
    /// pack name accessible in the closure.
    ///
    /// For a function with 2 parameters, the following syntax would be generated:
    /// ```swift
    /// withUnsafePointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafePointer(to: arg2) { __ptr_arg2 in
    ///         withUnsafeArgumentPackPointer(__ptr_arg1, __ptr_arg2) { __accessPtr in
    ///             // Body with "__accessPtr"
    ///         }
    ///     }
    /// }
    /// ```
    ///
    /// If no argument is available in the pack, and if `forcePackCreation` is at `false`,
    /// no pack is created, and a "`nil`" String will be given in the closure.
    func argumentsPackPointerAccessSyntax(
        forcePackCreation: Bool = false,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let packName = "__accessPtr"
        let varargPointerName = "__ptrs_" + varargArgumentIdentifier
        
        // No argument and vararg. Return no pack is created.
        if !forcePackCreation && (arguments == nil || arguments?.isEmpty == true) && !isVararg {
            return try bodyBuilder("nil")
        }
        
        return try argumentsPointerAccessSyntax { pointerNames in
            if isVararg {
                let closure = try ClosureExprSyntax(
                    signature: .init(parameterClause: .parameterClause(.init(parameters: [
                        "\(raw: varargPointerName)"
                    ])))
                ) {
                    let closure = try ClosureExprSyntax(
                        signature: .init(parameterClause: .parameterClause(.init(parameters: [
                            "\(raw: packName)"
                        ])))
                    ) {
                        try bodyBuilder(packName)
                    }
                    
                    let functionName = if pointerNames.isEmpty {
                        "withUnsafeArgumentPackPointer(varargs: \(varargPointerName))"
                    } else {
                        "withUnsafeArgumentPackPointer(\(pointerNames.joined(separator: ", ")), varargs: \(varargPointerName))"
                    }
                    
                    FunctionCallExprSyntax(
                        calledExpression: DeclReferenceExprSyntax(baseName: "\(raw: functionName)"),
                        arguments: [],
                        trailingClosure: closure
                    )
                }
                
                let functionName = "withUnsafeVarargArgumentPointers(to: \(varargArgumentIdentifier))"
                
                FunctionCallExprSyntax(
                    calledExpression: DeclReferenceExprSyntax(baseName: "\(raw: functionName)"),
                    arguments: [],
                    trailingClosure: closure
                )
            } else {
                let closure = try ClosureExprSyntax(
                    signature: .init(parameterClause: .parameterClause(.init(parameters: [
                        "\(raw: packName)"
                    ])))
                ) {
                    try bodyBuilder(packName)
                }
                
                let functionName = "withUnsafeArgumentPackPointer(\(pointerNames.joined(separator: ", ")))"
                
                FunctionCallExprSyntax(
                    calledExpression: DeclReferenceExprSyntax(baseName: "\(raw: functionName)"),
                    arguments: [],
                    trailingClosure: closure
                )
            }
        }
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// - Parameters:
    ///   - indexes: The indexes of the arguments to retreive.
    ///   - bodyBuilder: The body content syntax.
    private func argumentsPointerAccessSyntax(
        indexes: some Collection<Int>,
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        guard let index = indexes.first else {
            return try bodyBuilder([])
        }
        
        let argument = arguments![index]
        
        return try argument.type.pointerAccessSyntax(instanceName: argument.name) { pointerName in
            try argumentsPointerAccessSyntax(indexes: indexes.dropFirst()) { pointerNames in
                try bodyBuilder([pointerName] + pointerNames)
            }
        }
    }
    
    func callSyntax(
        withParameters parameterValues: [String]
    ) -> FunctionCallExprSyntax {
        let parameterStrings = (arguments ?? []).enumerated().map { (index, argument) in
            if argument.isLabelHidden {
                parameterValues[index]
            } else if let label = argument.label {
                label + ": " + parameterValues[index]
            } else {
                argument.name + ": " + parameterValues[index]
            }
        }
        
        let exprSyntax = if parameterStrings.isEmpty {
            ExprSyntax("\(raw: name)()")
        } else {
            ExprSyntax("""
            \(raw: name)(
                \(raw: parameterStrings.joined(separator: ",\n    "))
            )
            """)
        }
        
        return exprSyntax.as(FunctionCallExprSyntax.self)!
    }
}
