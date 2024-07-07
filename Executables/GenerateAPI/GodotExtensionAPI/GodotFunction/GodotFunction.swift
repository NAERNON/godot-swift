import Utils

/// A type representing a Godot function.
struct GodotFunction {
    var name: String
    var arguments: [GodotArgument]
    var returnType: GodotType?
    
    var isVararg: Bool
    var isStatic: Bool
    var isMutating: Bool
    
    /// A Boolean value indicating whether the function uses generics instead
    /// of variants.
    ///
    /// If the function is vararg, a parameter pack is used at the end.
    var usesVariantGeneric: Bool
    
    /// A Boolean value indicating whether all parameters are converted to variants.
    var convertsAllParameterToVariant: Bool
    
    var accessControl: AccessControl
    
    init(
        name: String,
        arguments: [GodotArgument],
        returnType: GodotType?,
        isVararg: Bool,
        isStatic: Bool,
        isMutating: Bool,
        usesVariantGeneric: Bool,
        convertsAllParameterToVariant: Bool,
        accessControl: AccessControl
    ) {
        self.name = name
        self.arguments = arguments
        self.returnType = returnType
        self.isVararg = isVararg
        self.isStatic = isStatic
        self.isMutating = isMutating
        self.usesVariantGeneric = usesVariantGeneric
        self.convertsAllParameterToVariant = convertsAllParameterToVariant
        self.accessControl = accessControl
    }
}

private struct GenericType {
    let name: Syntax
    let constraint: Syntax
}

// MARK: - Extensions

extension GodotFunction {
    private var varargArgumentIdentifier: Syntax {
        "rest"
    }
    
    private func genericTypeConstraints(for argument: GodotArgument) -> [Syntax] {
        let variantStorableType: Syntax = "Variant.Storable"
        if argument.type == .variant {
            return [variantStorableType]
        } else if argument.type == .array {
            return [variantStorableType]
        } else if argument.type == .dictionary {
            return [variantStorableType, variantStorableType]
        } else {
            return []
        }
    }
    
    private func genericTypesCount() -> Int {
        arguments.reduce(0) { partialResult, argument in
            partialResult + genericTypeConstraints(for: argument).count
        }
    }
    
    private func genericTypes(forArgumentAt index: Int) -> [GenericType] {
        var previousGenericTypesCount = 0
        if index > 0 {
            for i in 0..<index {
                previousGenericTypesCount += genericTypes(forArgumentAt: i).count
            }
        }
        
        let argument = arguments[index]
        let genericCount = genericTypesCount()
        
        return genericTypeConstraints(for: argument)
            .enumerated()
            .map { enumeratedIndex, constraint in
                if genericCount == 1 {
                    .init(
                        name: "Value",
                        constraint: constraint)
                } else {
                    .init(
                        name: "Value\(previousGenericTypesCount + enumeratedIndex + 1)",
                        constraint: constraint)
                }
            }
    }
    
    private func genericSyntax() -> Syntax {
        guard usesVariantGeneric else {
            return Syntax()
        }
        
        var syntaxes = [Syntax]()
        
        for index in 0..<arguments.count {
            syntaxes.append(
                contentsOf: genericTypes(forArgumentAt: index).map { "\($0.name): \($0.constraint)" }
            )
        }
        
        if isVararg {
            syntaxes.append("each VariantRest: Variant.Storable")
        }
        
        if syntaxes.isEmpty {
            return Syntax()
        } else {
            return "<\(syntaxes.joined(separator: ", "))>"
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
    func argumentsCountSyntax<IntegerType: BinaryInteger>(
        type: IntegerType.Type
    ) -> Syntax {
        if isVararg {
            return "\(IntegerType.self)(packCount)"
        } else {
            return "\(arguments.count)"
        }
    }
    
    /// Returns the declaration syntax of the function.
    func declSyntax(
        hideAllLabels: Bool = false,
        options: GodotTypeSyntaxOptions = [],
        @SyntaxGroupBuilder body: () throws -> SyntaxGroup
    ) rethrows -> Syntax {
        var argumentsSyntaxes = [Syntax]()
        
        for (index, argument) in self.arguments.enumerated() {
            let genericNames = genericTypes(forArgumentAt: index).map { $0.name }
            
            let typeSyntax: Syntax? = if usesVariantGeneric, argument.type == .variant {
                genericNames[0]
            } else if usesVariantGeneric, argument.type == .array {
                GodotType.generic(
                    type: argument.type,
                    genericType: .base(genericNames[0].formatted())
                ).syntax(options: options.subtracting([
                    .genericArrayOnVariant,
                    .genericArrayOnElement
                ]))
            } else if usesVariantGeneric, argument.type == .dictionary {
                GodotType.generic(
                    type: argument.type,
                    genericType: .base(genericNames[0].formatted() + ", " + genericNames[1].formatted())
                ).syntax(options: options.subtracting([
                    .genericDictionaryOnVariant,
                    .genericDictionaryOnKeyValue
                ]))
            } else {
                nil
            }
            
            argumentsSyntaxes.append(
                argument.functionParameterSyntax(
                    hideLabel: hideAllLabels,
                    type: typeSyntax,
                    options: options
                )
            )
        }
        
        if isVararg {
            if usesVariantGeneric {
                argumentsSyntaxes.append("_ \(varargArgumentIdentifier): repeat each VariantRest")
            } else {
                argumentsSyntaxes.append("_ \(varargArgumentIdentifier): \(GodotType.variant.syntax())...")
            }
        }
        
        var modifiers = [Syntax]()
        if isStatic { modifiers.append("static") }
        if isMutating { modifiers.append("mutating") }
        modifiers.append(accessControl.keyword)
        
        let genericSyntax = self.genericSyntax()
        
        let returnClause: Syntax? = if let returnType {
            " -> \(returnType.syntax(options: options))"
        } else {
            nil
        }
        
        let argumentSyntax: Syntax = if argumentsSyntaxes.isEmpty {
            ""
        } else {
            """
            
                \(argumentsSyntaxes.joined(separator: ",\n"))
            
            """
        }
        
        let header: Syntax = "\(modifiers.joined(separator: " ")) func \(name.backticksKeyword())\(genericSyntax)(\(argumentSyntax))\(returnClause)"
        
        return try Syntax(header, builder: body)
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// Use this to access all the arguments pointers in the function.
    /// The `body` provides an argument giving all the
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
        @SyntaxGroupBuilder body: ([Syntax]) throws -> SyntaxGroup
    ) rethrows -> Syntax {
        try argumentsPointerAccessSyntax(
            options: options,
            indexes: 0..<arguments.count,
            body: body
        )
    }
    
    /// Returns a pack of all the arguments pointers of the function.
    ///
    /// - Parameters:
    ///   - options: The options for type syntax.
    ///   - forcePackCreation: A Boolean value indicating whether the
    ///   pack should be created,
    ///   even if no argument is inside the pack.
    ///   - body: The content syntax.
    ///
    /// Use this to access all the arguments pointers in the function
    /// grouped in a pack.
    /// The `body` provides an argument giving the
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
        @SyntaxGroupBuilder body: (Syntax) throws -> SyntaxGroup
    ) rethrows -> Syntax {
        let packName: Syntax = "__accessPtr"
        
        // No argument and vararg. Return no pack is created.
        if !forcePackCreation && arguments.isEmpty == true && !isVararg {
            return try body("nil").syntax()
        }
        
        return try argumentsPointerAccessSyntax(options: options) { pointerNames in
            if isVararg {
                let call: Syntax = if pointerNames.isEmpty {
                    "withUnsafeArgumentPackPointer(varargs: repeat each \(varargArgumentIdentifier)) { packCount, \(packName) in"
                } else {
                    "withUnsafeArgumentPackPointer(\(pointerNames.joined(separator: ", ")), varargs: repeat each \(varargArgumentIdentifier)) { packCount, \(packName) in"
                }
                
                """
                \(call)
                    \(try body(packName))
                }
                """
            } else {
                """
                withUnsafeArgumentPackPointer(\(pointerNames.joined(separator: ", "))) { \(packName) in
                    \(try body(packName))
                }
                """
            }
        }
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// - Parameters:
    ///   - options: The options for type syntax.
    ///   - indexes: The indexes of the arguments to retrieve.
    ///   - body: The body content syntax.
    private func argumentsPointerAccessSyntax(
        options: GodotTypeSyntaxOptions,
        indexes: some Collection<Int>,
        @SyntaxGroupBuilder body: ([Syntax]) throws -> SyntaxGroup
    ) rethrows -> Syntax {
        if let index = indexes.first {
            let argument = arguments[index]
            let accessThroughVariantStorage = convertsAllParameterToVariant ||
                (usesVariantGeneric && argument.type == .variant)
            
            return try argument.type.argumentPointerAccessSyntax(
                instanceName: argument.name.backticksKeyword(),
                options: options,
                mutability: .const,
                accessThroughVariantStorage: accessThroughVariantStorage
            ) { pointerName in
                try argumentsPointerAccessSyntax(options: options, indexes: indexes.dropFirst()) { pointerNames in
                    try body([pointerName] + pointerNames)
                }
            }
        } else {
            return try body([]).syntax()
        }
    }
    
    func callExprSyntax(
        withParameters parameterValues: [Syntax]
    ) -> Syntax {
        let parameterSyntaxes: [Syntax] = arguments.enumerated().map { (index, argument) in
            if argument.isLabelHidden {
                parameterValues[index]
            } else if let label = argument.label {
                "\(label): \(parameterValues[index])"
            } else {
                "\(argument.name): \(parameterValues[index])"
            }
        }
        
        let functionName = name.backticksKeyword()
        
        let exprSyntax: Syntax = if parameterSyntaxes.isEmpty {
            "\(functionName)()"
        } else {
            """
            \(functionName)(
                \(parameterSyntaxes.joined(separator: ",\n"))
            )
            """
        }
        
        return exprSyntax
    }
}
