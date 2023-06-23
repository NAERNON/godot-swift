import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

/// A representation of a Godot builtin class.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotBuiltinClass: Decodable {
    var name: GodotType
    var indexingReturnType: GodotType?
    var isKeyed: Bool
    var members: [GodotArgument]?
    var constants: [Constant]?
    var enums: [GodotEnum]?
    var operators: [Operator]
    var methods: [Method]?
    var constructors: [Constructor]
    var hasDestructor: Bool
    
    // MARK: Constant
    
    struct Constant: Decodable {
        var name: String
        var type: GodotType
        var value: GodotConstant
    }
    
    // MARK: Operator
    
    struct Operator: Decodable {
        var name: String
        var rightType: GodotType?
        var returnType: GodotType
    }
    
    // MARK: Method
    
    struct Method: Decodable, GodotFunction {
        var name: String
        var returnType: GodotType?
        var isVararg: Bool
        var isConst: Bool
        var isStatic: Bool
        var hash: Int
        var arguments: [GodotArgument]?
    }
    
    // MARK: Constructor
    
    struct Constructor: Decodable, GodotFunction {
        var index: Int
        var arguments: [GodotArgument]?
        
        var name: String {
            "_constructor"
        }
        
        var returnType: GodotType? {
            "Self"
        }
        
        var isStatic: Bool {
            true
        }
        
        var ptrSyntax: String {
            "__constructor_\(index)"
        }
    }
    
    // MARK: - Syntax
    
    var identifier: String {
        name.syntax()
    }
    
    @CodeBlockItemListBuilder
    func syntax(
        extensionInsteadOfStructDecl: Bool,
        useOpaque: Bool,
        classSize: Int
    ) throws -> CodeBlockItemListSyntax {
        let body = try bodySyntax(useOpaque: useOpaque, classSize: classSize)
        
        if extensionInsteadOfStructDecl {
            try ExtensionDeclSyntax("public extension \(raw: identifier)") {
                body
            }
        } else {
            try StructDeclSyntax("public struct \(raw: identifier)") {
                body
            }
        }
    }
    
    @MemberDeclListBuilder
    private func bodySyntax(
        useOpaque: Bool,
        classSize: Int
    ) throws -> MemberDeclListSyntax {
        constantsSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        enumSyntax()
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
        
        try constructorsSyntax(useOpaque: useOpaque, classSize: classSize)
            .with(\.leadingTrivia, .newline)
            .with(\.trailingTrivia, .newlines(2))
    }
    
    private func constantsSyntax() -> DeclSyntax {
        let constantsSyntaxes: [String] = constants?.map { constant in
            let name = NamingConvention.snake.convert(constant.name.lowercased(), to: .camel)
            
            return "public static let \(name): \(constant.type.syntax()) = \(constant.value.syntax())"
        } ?? []
        
        return DeclSyntax("\(raw: constantsSyntaxes.joined(separator: "\n"))")
    }
    
    @MemberDeclListBuilder
    private func enumSyntax() -> MemberDeclListSyntax {
        if let enums {
            for `enum` in enums {
                `enum`.syntax()
            }
        }
    }
    
    @MemberDeclListBuilder
    private func constructorsSyntax(
        useOpaque: Bool,
        classSize: Int
    ) throws -> MemberDeclListSyntax {
        if useOpaque {
            try InitializerDeclSyntax("private init(opaque: Opaque)") {
                DeclSyntax("self.opaque = opaque")
            }
        }
        
        for constructor in constructors {
            try constructorSyntax(constructor, useOpaque: useOpaque, classSize: classSize)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    @MemberDeclListBuilder
    private func constructorSyntax(
        _ constructor: Constructor,
        useOpaque: Bool,
        classSize: Int
    ) throws -> MemberDeclListSyntax {
        try constructor.declSyntax {
            let destructorPtr = hasDestructor ? "Self.__destructor" : "nil"
            
            if useOpaque {
                DeclSyntax("var __temporary: Opaque = .init(size: \(literal: classSize), destructorPtr: \(raw: destructorPtr))")
            } else {
                DeclSyntax("var __temporary = \(raw: name.syntax())()")
            }
            
            try constructor.argumentsPackPointerAccessSyntax { packName in
                try name.pointerAccessSyntax(instanceName: "__temporary", mutability: .mutable) { instancePtrName in
                    DeclSyntax("Self.\(raw: constructor.ptrSyntax)(\(raw: instancePtrName), \(raw: packName))")
                }
            }
            
            if useOpaque {
                DeclSyntax("return Self.init(opaque: __temporary)")
            } else {
                DeclSyntax("return __temporary")
            }
        }
    }
}
