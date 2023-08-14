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
        
        /// Returns an usable String for the operator ``name``.
        var identifier: String {
            switch name {
            case "==": "equal"
            case "!=": "not_equal"
            case "<": "less"
            case "<=": "less_equal"
            case ">": "greater"
            case ">=": "greater_equal"
                
            // mathematic
            case "+": "add"
            case "-": "subtract"
            case "*": "multiply"
            case "/": "divide"
            case "unary-": "negate"
            case "unary+": "positive"
            case "%": "module"
                
            // bitwise
            case "<<": "shift_left"
            case ">>": "shift_right"
            case "&": "bit_and"
            case "|": "bit_or"
            case "^": "bit_x_or"
            case "~": "bit_negate"
                
            // containment
            case "in": "in"
            default: name
            }
        }
        
        var extensionSyntax: String {
            "GDEXTENSION_VARIANT_OP_" + identifier.uppercased()
        }
        
        var ptrIdentifier: String {
            var name = "__operator_binding_" + identifier
            if let rightType {
                name += "_" + rightType.syntax(options: [.floatAsDouble])
            }
            
            return name.lowercased()
        }
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
        
        var ptrIdentifier: String {
            "__method_binding_\(name)"
        }
        
        var isVarargArray: Bool {
            true
        }
        
        var isMutating: Bool {
            !isConst && !isStatic
        }
        
        var isResultDiscardable: Bool {
            isMutating && returnType != nil
        }
        
        var shouldReplaceOpaqueIfNecessary: Bool {
            isMutating && name != "duplicate"
        }
    }
    
    // MARK: Constructor
    
    struct Constructor: Decodable, GodotFunction {
        var index: Int
        var arguments: [GodotArgument]?
        
        var name: String {
            var string = "_constructor"
            
            for argument in arguments ?? [] {
                string += "_"
                string += argument.type.syntax().lowercased()
            }
            
            return string
        }
        
        var returnType: GodotType? {
            "Self"
        }
        
        var isStatic: Bool {
            true
        }
        
        var ptrIdentifier: String {
            "_" + name
        }
    }
    
    /// A constructor that takes raw pointers as input.
    struct PointerConstructor: GodotFunction {
        let baseConstructor: Constructor
        
        init(_ constructor: Constructor) {
            self.baseConstructor = constructor
        }
        
        var arguments: [GodotArgument]? {
            guard var arguments = baseConstructor.arguments else {
                return nil
            }
            
            for index in 0..<arguments.count {
                arguments[index].type = .rawPointer
                arguments[index].defaultValue = nil
            }
            
            return arguments
        }
        
        var name: String {
            "_ptr" + baseConstructor.name
        }
        
        var returnType: GodotType? {
            "Self"
        }
        
        var isStatic: Bool {
            true
        }
        
        var ptrIdentifier: String {
            baseConstructor.ptrIdentifier
        }
    }
    
    // MARK: - Syntax
    
    var useOpaque: Bool {
        name.isBuiltinGodotClassWithOpaque
    }
    
    var identifier: String {
        name.syntax()
    }
    
    var syntaxOptions: GodotTypeSyntaxOptions {
        if name == "Color" {
            []
        } else if useOpaque {
            [.floatAsDouble]
        } else {
            [.floatAsReal]
        }
    }
    
    func constantsSyntax() -> DeclSyntax {
        let constantsSyntaxes: [String] = constants?.map { constant in
            let name = NamingConvention.snake.convert(constant.name.lowercased(), to: .camel)
            
            return "public static let \(name): \(constant.type.syntax()) = \(constant.value.syntax(forType: constant.type))"
        } ?? []
        
        return DeclSyntax("\(raw: constantsSyntaxes.joined(separator: "\n"))")
    }
    
    @MemberDeclListBuilder
    func enumSyntax() -> MemberDeclListSyntax {
        if let enums {
            for `enum` in enums {
                `enum`.syntax()
            }
        }
    }
    
    @MemberDeclListBuilder
    func constructorsSyntax(classSize: Int) throws -> MemberDeclListSyntax {
        if hasDestructor {
            DeclSyntax("""
            private static var __destructor: GDExtensionPtrDestructor = {
                return gdextension_interface_variant_get_ptr_destructor(\(raw: name.variantType!))!
            }()
            """)
        }
        
        for constructor in constructors {
            try constructorSyntax(constructor, classSize: classSize)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    @MemberDeclListBuilder
    private func constructorSyntax(
        _ constructor: Constructor,
        classSize: Int
    ) throws -> MemberDeclListSyntax {
        DeclSyntax("""
        private static var \(raw: constructor.ptrIdentifier): GDExtensionPtrConstructor = {
            return gdextension_interface_variant_get_ptr_constructor(\(raw: name.variantType!), \(literal: constructor.index))!
        }()
        """)
        
        try constructor.declSyntax(options: syntaxOptions, translateFunctionName: false) {
            let destructorPtr = hasDestructor ? "Self.__destructor" : "nil"
            
            if useOpaque {
                DeclSyntax("var __temporary: Opaque = .init(size: \(literal: classSize), destructorPtr: \(raw: destructorPtr))")
            } else {
                DeclSyntax("var __temporary = \(raw: name.syntax())()")
            }
            
            try constructor.argumentsPackPointerAccessSyntax { packName in
                if name.isBuiltinGodotClassWithOpaque {
                    DeclSyntax("""
                    __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                        Self.\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """)
                } else {
                    DeclSyntax("""
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """)
                }
            }
            
            if useOpaque {
                DeclSyntax("return Self.init(opaque: __temporary)")
            } else {
                DeclSyntax("return __temporary")
            }
        }.addModifier(.init(name: .keyword(.internal)))
        
        let constructor = PointerConstructor(constructor)
        
        try constructor.declSyntax(options: syntaxOptions, translateFunctionName: false) {
            let destructorPtr = hasDestructor ? "Self.__destructor" : "nil"
            
            if useOpaque {
                DeclSyntax("var __temporary: Opaque = .init(size: \(literal: classSize), destructorPtr: \(raw: destructorPtr))")
            } else {
                DeclSyntax("var __temporary = \(raw: name.syntax())()")
            }
            
            try constructor.argumentsPackPointerAccessSyntax { packName in
                if name.isBuiltinGodotClassWithOpaque {
                    DeclSyntax("""
                    __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                        Self.\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """)
                } else {
                    DeclSyntax("""
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        Self.\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """)
                }
            }
            
            if useOpaque {
                DeclSyntax("return Self.init(opaque: __temporary)")
            } else {
                DeclSyntax("return __temporary")
            }
        }.addModifier(.init(name: .keyword(.internal)))
    }
    
    @MemberDeclListBuilder
    func operatorsSyntax() throws -> MemberDeclListSyntax {
        for `operator` in operators {
            try operatorSyntax(`operator`)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    @MemberDeclListBuilder
    private func operatorSyntax(_ `operator`: Operator) throws -> MemberDeclListSyntax {
        let operatorFunction = OperatorFunction(operator: `operator`, type: name)
        
        DeclSyntax("""
        private static var \(raw: `operator`.ptrIdentifier): GDExtensionPtrOperatorEvaluator = {
            return gdextension_interface_variant_get_ptr_operator_evaluator(\(raw: `operator`.extensionSyntax), \(raw: name.variantType!), \(raw: `operator`.rightType?.variantType ?? "GDEXTENSION_VARIANT_TYPE_NIL"))!
        }()
        """)
        
        try operatorFunction.declSyntax(hideAllLabels: true, options: syntaxOptions) {
            try `operator`.returnType.instantiationSyntax { instanceType, instanceName in
                try operatorFunction.argumentsPointerAccessSyntax { pointerNames in
                    try instanceType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtrName in
                        let lhsPointer = pointerNames[0]
                        let rhsPointer = `operator`.rightType == nil ? "nil" : pointerNames[1]
                        
                        DeclSyntax("""
                        Self.\(raw: `operator`.ptrIdentifier)(\(raw: lhsPointer), \(raw: rhsPointer), \(raw: instancePtrName))
                        """)
                    }
                }
            }
        }.addModifier(.init(name: .keyword(.internal)))
    }
    
    @MemberDeclListBuilder
    func getterSetterSyntax() throws -> MemberDeclListSyntax {
        if let indexingReturnType, !isKeyed {
            DeclSyntax("""
            private static var __indexed_setter: GDExtensionPtrIndexedSetter = {
                return gdextension_interface_variant_get_ptr_indexed_setter(\(raw: name.variantType!))!
            }()
            private static var __indexed_getter: GDExtensionPtrIndexedGetter = {
                return gdextension_interface_variant_get_ptr_indexed_getter(\(raw: name.variantType!))!
            }()
            """)
            
            try FunctionDeclSyntax("func _getValue(at index: GDExtensionInt) -> \(raw: indexingReturnType.syntax(options: syntaxOptions))") {
                try indexingReturnType.instantiationSyntax(options: syntaxOptions) { instanceType, instanceName in
                    try instanceType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                        try name.pointerAccessSyntax(instanceName: "self") { selfPtr in
                            DeclSyntax("Self.__indexed_getter(\(raw: selfPtr), index, \(raw: instancePtr))")
                        }
                    }
                }
            }.addModifier(.init(name: .keyword(.internal)))
            
            try FunctionDeclSyntax("mutating func _setValue(_ value: \(raw: indexingReturnType.syntax(options: syntaxOptions)), at index: GDExtensionInt)") {
                if useOpaque {
                    DeclSyntax("replaceOpaqueValueIfNecessary()")
                }
                
                try indexingReturnType.pointerAccessSyntax(instanceName: "value") { valuePtr in
                    try name.pointerAccessSyntax(instanceName: "self", mutability: .mutable) { selfPtr in
                        DeclSyntax("Self.__indexed_setter(\(raw: selfPtr), index, \(raw: valuePtr))")
                    }
                }
            }.addModifier(.init(name: .keyword(.internal)))
        }
    }
    
    @MemberDeclListBuilder
    func keyGetterSetterSyntax() -> MemberDeclListSyntax {
        if isKeyed {
            DeclSyntax("""
            private static var __keyed_setter: GDExtensionPtrKeyedSetter = {
                return gdextension_interface_variant_get_ptr_keyed_setter(\(raw: name.variantType!))!
            }()
            internal func _getValue(forKey key: Variant) -> Variant {
                var __returnValue = Variant()
                
                __returnValue.withUnsafeRawPointer { __ptr___returnValue in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeRawPointer { __ptr_self in
                            Self.__keyed_getter(__ptr_self, __ptr_key, __ptr___returnValue)
                        }
                    }
                }
                
                return __returnValue
            }
            
            private static var __keyed_getter: GDExtensionPtrKeyedGetter = {
                return gdextension_interface_variant_get_ptr_keyed_getter(\(raw: name.variantType!))!
            }()
            internal mutating func _set(value: Variant, forKey key: Variant) {
                replaceOpaqueValueIfNecessary()
                
                value.withUnsafeRawPointer { __ptr_value in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeRawPointer { __ptr_self in
                            Self.__keyed_setter(__ptr_self, __ptr_key, __ptr_value)
                        }
                    }
                }
            }
            
            private static var __keyed_checker: GDExtensionPtrKeyedChecker = {
                return gdextension_interface_variant_get_ptr_keyed_checker(\(raw: name.variantType!))!
            }()
            internal func _check(key: Variant) -> Bool {
                var keyCheck = UInt32()
                
                key.withUnsafeRawPointer { __ptr_key in
                    self.withUnsafeRawPointer { __ptr_self in
                        keyCheck = Self.__keyed_checker(__ptr_self, __ptr_key)
                    }
                }
                
                return keyCheck != 0
            }
            """)
        }
    }
    
    @MemberDeclListBuilder
    func methodsSyntax() throws -> MemberDeclListSyntax {
        if let methods {
            for method in methods {
                try methodSyntax(method)
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    @MemberDeclListBuilder
    private func methodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        DeclSyntax("""
        private static var \(raw: method.ptrIdentifier): GDExtensionPtrBuiltInMethod = {
            GodotStringName(swiftString: \(literal: method.name)).withUnsafeRawPointer { __ptr__method_name in
            return gdextension_interface_variant_get_ptr_builtin_method(\(raw: name.variantType!), __ptr__method_name, \(literal: method.hash))!
            }
        }()
        """)
        
        let mutability: GodotType.Mutability = method.isMutating ? .mutable : .constMutablePointer
        let functionDecl = try method.declSyntax(underscoreName: true, options: syntaxOptions) {
            if method.shouldReplaceOpaqueIfNecessary && useOpaque {
                DeclSyntax("replaceOpaqueValueIfNecessary()")
            }
            
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(options: syntaxOptions) { instanceType, instanceName in
                    try method.argumentsPackPointerAccessSyntax { packName in
                        try instanceType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                            if method.isStatic {
                                DeclSyntax("Self.\(raw: method.ptrIdentifier)(nil, \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax))")
                            } else {
                                try name.pointerAccessSyntax(instanceName: "self", mutability: mutability) { selfPtr in
                                    DeclSyntax("Self.\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax))")
                                }
                            }
                        }
                    }
                }
            } else {
                try method.argumentsPackPointerAccessSyntax { packName in
                    if method.isStatic {
                        DeclSyntax("Self.\(raw: method.ptrIdentifier)(nil, \(raw: packName), nil, \(raw: method.argumentsCountSyntax))")
                    } else {
                        try name.pointerAccessSyntax(instanceName: "self", mutability: mutability) { selfPtr in
                            DeclSyntax("Self.\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), nil, \(raw: method.argumentsCountSyntax))")
                        }
                    }
                }
            }
        }
        .addModifier(.init(name: .keyword(.internal)))
        
        if method.isResultDiscardable {
            functionDecl.addAttribute(.init(AttributeSyntax(atSignToken: .atSignToken(), attributeName: SimpleTypeIdentifierSyntax(name: .identifier("discardableResult")))))
        } else {
            functionDecl
        }
    }
}

// MARK: - OperatorFunction

/// An operator function.
///
/// Because ``GodotBuiltinClass/Operator`` cannot conform to
/// the ``GodotFunction`` protocol, use this type to gain access to
/// all the function declarations for the operator.
private struct OperatorFunction: GodotFunction {
    let op: GodotBuiltinClass.Operator
    let type: GodotType
    let isStatic = true
    
    init(`operator`: GodotBuiltinClass.Operator, type: GodotType) {
        self.op = `operator`
        self.type = type
    }
    
    var name: String {
        "_operator_" + op.identifier
    }
    
    var returnType: GodotType? {
        op.returnType
    }
    
    var arguments: [GodotArgument]? {
        let lhsArgument = GodotArgument(name: "lhs", type: type)
        
        if let rightType = op.rightType {
            let rhsArgument = GodotArgument(name: "rhs", type: rightType)
            return [lhsArgument, rhsArgument]
        } else {
            return [lhsArgument]
        }
    }
}
