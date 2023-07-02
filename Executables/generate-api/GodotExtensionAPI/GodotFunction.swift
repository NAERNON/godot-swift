import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

/// A protocol representing a Godot function.
///
/// Conform your type to the protocol to gain access
/// to usefull syntax declarations.
protocol GodotFunction {
    /// The name of the function, using C naming conventions.
    var name: String { get }
    
    var arguments: [GodotArgument]? { get }
    
    var returnType: GodotType? { get }
    
    var isVararg: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
}

// MARK: - Default behavior

extension GodotFunction {
    var isVararg: Bool { false }
    var isStatic: Bool { false }
    var isConst: Bool { false }
    var isMutating: Bool { false }
}

// MARK: - Extensions

extension GodotFunction {
    // MARK: - Syntax
    
    private var translatedFunction: (name: String, parameters: [FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: (arguments ?? []).map { .init(name: $0.name, label: nil, isLabelHidden: false) },
            to: .swift
        )
    }
    
    private var varargArgumentIdentifier: String {
        "rest"
    }
    
    /// Returns the translated function identifier.
    ///
    /// A function with the signature "`do_something(a:b:)`"
    /// would return the indentifier "doSomething".
    func syntaxIdentifier() -> String {
        translatedFunction.name
    }
    
    /// Returns the argument identifier at a given index.
    func argumentSyntaxIndentifier(at index: Int) -> String {
        translatedFunction.parameters[index].name
    }
    
    /// Returns the syntax for the number of arguments.
    ///
    /// For a function with 3 arguments, it will return "`3`".
    ///
    /// For a vararg function with 3 arguments, it will return "`3 + Int32(rest.count)`".
    var argumentsCountSyntax: String {
        var syntax = String(arguments?.count ?? 0)
        if isVararg {
            syntax.append(" + Int32(\(varargArgumentIdentifier).count)")
        }
        return syntax
    }
    
    /// Returns the declaration syntax of the function.
    func declSyntax(
        underscoreName: Bool = false,
        hideAllLabels: Bool = false,
        options: GodotTypeSyntaxOptions = [],
        @CodeBlockItemListBuilder bodyBuilder: () throws -> CodeBlockItemListSyntax
    ) throws -> FunctionDeclSyntax {
        let arguments = self.arguments ?? []
        let functionParameters = translatedFunction.parameters
        
        var functionHeader = String()
        
        if isStatic {
            functionHeader.append("static ")
        }
        if isMutating {
            functionHeader.append("mutating ")
        }
        
        functionHeader.append("func ")
        
        if underscoreName {
            functionHeader.append("_")
        }
        
        functionHeader.append(syntaxIdentifier())
        functionHeader.append("(")
        functionHeader.append(functionParameters.enumerated().map { (index, parameter) in
            let argument = arguments[index]
            var parameterString = ""
            
            if parameter.isLabelHidden || hideAllLabels {
                parameterString.append("_ ")
            } else if let label = parameter.label {
                parameterString.append(label)
                parameterString.append(" ")
            }
            parameterString.append(CodeLanguage.swift.protectNameIfKeyword(for: parameter.name))
            parameterString.append(": ")
            parameterString.append(argument.type.syntax(options: options))
            
            if argument.type.isGodotClass {
                parameterString.append("?")
            }
            
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
            functionHeader.append(": Variant...")
        }
        
        functionHeader.append(")")
        
        if let returnType {
            functionHeader.append(" -> ")
            functionHeader.append(returnType.syntax(options: options))
            
            if returnType.isGodotClass {
                functionHeader.append("?")
            }
        }
        
        return try FunctionDeclSyntax("\(raw: functionHeader)", bodyBuilder: bodyBuilder)
    }
    
    /// Returns the arguments pointer access of the function.
    ///
    /// Use this to access all the arguments pointers in the function.
    /// The `bodyBuilder` provides an argument giving all the
    /// pointer names accessible in the closure.
    ///
    /// For a function with 2 parameters, the following syntax would be generated:
    /// ```swift
    /// withUnsafeGodotAccessPointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafeGodotAccessPointer(to: arg2) { __ptr_arg2 in
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
    /// withUnsafeGodotAccessPointer(to: arg1) { __ptr_arg1 in
    ///     withUnsafeGodotAccessPointer(to: arg2) { __ptr_arg2 in
    ///         withUnsafeArgumentPointer(__ptr_arg1, __ptr_arg2) { __accessPtr in
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
        let varargPointerName = "__ptr_" + varargArgumentIdentifier
        
        // No argument and vararg. Return no pack is created.
        if !forcePackCreation && (arguments == nil || arguments?.isEmpty == true) && !isVararg {
            return try bodyBuilder("nil")
        }
        
        return try argumentsPointerAccessSyntax { pointerNames in
            if isVararg {
                DeclSyntax("withUnsafeGodotAccessVarargsPointer(to: \(raw: varargArgumentIdentifier)) { \(raw: varargPointerName) in")
                DeclSyntax("withUnsafeArgumentPointer(\(raw: (pointerNames + [varargPointerName]).joined(separator: ", "))) { \(raw: packName) in")
                
                try bodyBuilder(packName)
                
                DeclSyntax("}")
                DeclSyntax("}")
            } else {
                DeclSyntax("withUnsafeArgumentPointer(\(raw: pointerNames.joined(separator: ", "))) { \(raw: packName) in")
                
                try bodyBuilder(packName)
                
                DeclSyntax("}")
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
        let argumentIdentifier = argumentSyntaxIndentifier(at: index)
        
        return try argument.type.pointerAccessSyntax(instanceName: argumentIdentifier) { pointerName in
            try argumentsPointerAccessSyntax(indexes: indexes.dropFirst()) { pointerNames in
                try bodyBuilder([pointerName] + pointerNames)
            }
        }
    }
    
    func callSyntax(
        withParameters parameterValues: [String]
    ) -> String {
        let (translatedName, translatedParameters) = translatedFunction
        
        let parameterStrings = translatedParameters.enumerated().map { (index, parameter) in
            if parameter.isLabelHidden {
                parameterValues[index]
            } else if let label = parameter.label {
                label + ": " + parameterValues[index]
            } else {
                parameter.name + ": " + parameterValues[index]
            }
        }
        
        return """
        \(translatedName)(
            \(parameterStrings.joined(separator: ",\n    "))
        )
        """
    }
}
