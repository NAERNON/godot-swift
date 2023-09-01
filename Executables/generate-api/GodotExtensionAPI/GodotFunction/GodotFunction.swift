import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

/// A protocol representing a Godot function.
///
/// Conform your type to the protocol to gain access
/// to usefull syntax declarations.
protocol GodotFunction {
    var name: String { get }
    var arguments: [GodotArgument]? { get }
    var returnType: GodotType? { get }
    
    var isVararg: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
    
    /// A Boolean value indicating whether the function uses generics instead
    /// of variants.
    ///
    /// If the function is vararg, a parameter pack is used at the end.
    var usesVariantGeneric: Bool { get }
    
    /// A Boolean value indicating whether all parameters are converted to variants.
    var convertsAllParameterToVariant: Bool { get }
}

// MARK: - Default behavior

extension GodotFunction {
    var isVararg: Bool { false }
    var isStatic: Bool { false }
    var isConst: Bool { false }
    var isMutating: Bool { false }
    
    var usesVariantGeneric: Bool { false }
    var convertsAllParameterToVariant: Bool { false }
}

// MARK: - Extensions

extension GodotFunction {
    private var varargArgumentIdentifier: String {
        "rest"
    }
    
    /// Returns the syntax to place inside the generic function signature.
    private func genericSyntax() -> String? {
        var genericArguments = [String]()
        
        if let arguments {
            var index = 1
            for argument in arguments {
                if argument.type == .variant {
                    genericArguments.append("Variant\(index) : ConvertibleToVariant")
                    index += 1
                }
            }
        }
        
        if isVararg {
            genericArguments.append("each VariantRest : ConvertibleToVariant")
        }
        
        if genericArguments.isEmpty {
            return nil
        } else {
            return genericArguments.joined(separator: ", ")
        }
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
        if isVararg {
            return "\(IntegerType.self)(packCount)"
        } else {
            return String(arguments?.count ?? 0)
        }
    }
    
    /// Returns the declaration syntax of the function.
    func declSyntax(
        hideAllLabels: Bool = false,
        options: GodotTypeSyntaxOptions = [],
        keywords: Keyword...,
        @CodeBlockItemListBuilder bodyBuilder: () throws -> CodeBlockItemListSyntax
    ) throws -> FunctionDeclSyntax {
        let arguments = self.arguments ?? []
        
        var functionHeader = String()
        
        functionHeader.append("func ")
        
        functionHeader.append(backticksKeyword(name))
        
        if usesVariantGeneric,
           let genericSyntax = genericSyntax() 
        {
            functionHeader.append("<\(genericSyntax)>")
        }
        
        var variantArgumentIndex = 1
        functionHeader.append("(")
        functionHeader.append(arguments.map { argument in
            var parameterString = ""
            
            if argument.isLabelHidden || hideAllLabels {
                parameterString.append("_ ")
            } else if let label = argument.label {
                parameterString.append(label)
                parameterString.append(" ")
            }
            parameterString.append(backticksKeyword(argument.name))
            parameterString.append(": ")
            
            if usesVariantGeneric,
               argument.type == .variant
            {
                parameterString.append("Variant\(variantArgumentIndex)")
                variantArgumentIndex += 1
            } else {
                parameterString.append(argument.type.syntax(options: options))
            }
            
            if let defaultValue = argument.defaultValue {
                parameterString.append(" = ")
                parameterString.append(defaultValue.syntax(forType: argument.type))
            }
            
            return parameterString
        }.joined(separator: ", "))
        
        if isVararg {
            if !arguments.isEmpty {
                functionHeader.append(",")
            }
            functionHeader.append("_ \(varargArgumentIdentifier): ")
            if usesVariantGeneric {
                functionHeader.append("repeat each VariantRest")
            } else {
                functionHeader.append("Variant...")
            }
        }
        
        functionHeader.append(")")
        
        if let returnType {
            functionHeader.append(" -> ")
            functionHeader.append(returnType.syntax(options: options))
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
        options: GodotTypeSyntaxOptions,
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        try argumentsPointerAccessSyntax(
            options: options,
            indexes: 0..<(arguments?.count ?? 0),
            bodyBuilder: bodyBuilder
        )
    }
    
    /// Returns a pack of all the arguments pointers of the function.
    ///
    /// - Parameters:
    ///   - options: The options for type syntax.
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
        options: GodotTypeSyntaxOptions,
        forcePackCreation: Bool = false,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let packName = "__accessPtr"
        
        // No argument and vararg. Return no pack is created.
        if !forcePackCreation && (arguments == nil || arguments?.isEmpty == true) && !isVararg {
            return try bodyBuilder("nil")
        }
        
        return try argumentsPointerAccessSyntax(options: options) { pointerNames in
            if isVararg {
                let closure = try ClosureExprSyntax(
                    signature: .init(parameterClause: .parameterClause(.init(parameters: [
                        "packCount, \(raw: packName)"
                    ])))
                ) {
                    try bodyBuilder(packName)
                }
                
                let functionName = if pointerNames.isEmpty {
                    "withUnsafeArgumentPackPointer(varargs: repeat each \(varargArgumentIdentifier))"
                } else {
                    "withUnsafeArgumentPackPointer(\(pointerNames.joined(separator: ", ")), varargs: repeat each \(varargArgumentIdentifier))"
                }
                
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
    ///   - options: The options for type syntax.
    ///   - indexes: The indexes of the arguments to retreive.
    ///   - bodyBuilder: The body content syntax.
    @CodeBlockItemListBuilder
    private func argumentsPointerAccessSyntax(
        options: GodotTypeSyntaxOptions,
        indexes: some Collection<Int>,
        @CodeBlockItemListBuilder bodyBuilder: ([String]) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        if let index = indexes.first {
            let argument = arguments![index]
            var argumentType = argument.type
            var caller = backticksKeyword(argument.name)
            
            if convertsAllParameterToVariant || (usesVariantGeneric && argument.type == .variant) {
                let _ = caller = "\(caller).makeVariant()"
                let _ = argumentType = .variantStorage
            }
            
            try argumentType.argumentPointerAccessSyntax(
                caller: caller,
                instanceName: argument.name,
                options: options
            ) { pointerName in
                try argumentsPointerAccessSyntax(options: options, indexes: indexes.dropFirst()) { pointerNames in
                    try bodyBuilder([pointerName] + pointerNames)
                }
            }
        } else {
            try bodyBuilder([])
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
        
        let functionName = backticksKeyword(name)
        
        let exprSyntax = if parameterStrings.isEmpty {
            ExprSyntax("\(raw: functionName)()")
        } else {
            ExprSyntax("""
            \(raw: functionName)(
                \(raw: parameterStrings.joined(separator: ",\n    "))
            )
            """)
        }
        
        return exprSyntax.as(FunctionCallExprSyntax.self)!
    }
}
