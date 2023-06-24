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
        
        var ptrSyntax: String {
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
        
        var ptrSyntax: String {
            "__method_binding_\(name)"
        }
        
        var isMutating: Bool {
            !isConst && !isStatic
        }
        
        var isResultDiscardable: Bool {
            isMutating && returnType != nil
        }
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
    
    func constantsSyntax() -> DeclSyntax {
        let constantsSyntaxes: [String] = constants?.map { constant in
            let name = NamingConvention.snake.convert(constant.name.lowercased(), to: .camel)
            
            return "public static let \(name): \(constant.type.syntax()) = \(constant.value.syntax())"
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
    func constructorsSyntax(
        useOpaque: Bool,
        classSize: Int,
        options: GodotTypeSyntaxOptions
    ) throws -> MemberDeclListSyntax {
        if useOpaque {
            try InitializerDeclSyntax("private init(opaque: Opaque)") {
                DeclSyntax("self.opaque = opaque")
            }
        }
        
        for constructor in constructors {
            try constructorSyntax(constructor, useOpaque: useOpaque, classSize: classSize, options: options)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    private func constructorSyntax(
        _ constructor: Constructor,
        useOpaque: Bool,
        classSize: Int,
        options: GodotTypeSyntaxOptions
    ) throws -> FunctionDeclSyntax {
        try constructor.declSyntax(options: options) {
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
        }.addModifier(.init(name: .keyword(.internal)))
    }
    
    @MemberDeclListBuilder
    func operatorsSyntax(options: GodotTypeSyntaxOptions) throws -> MemberDeclListSyntax {
        for `operator` in operators {
            try operatorSyntax(`operator`, options: options)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    private func operatorSyntax(
        _ `operator`: Operator,
        options: GodotTypeSyntaxOptions
    ) throws -> FunctionDeclSyntax {
        let operatorFunction = OperatorFunction(operator: `operator`, type: name)
        
        return try operatorFunction.declSyntax(hideAllLabels: true, options: options) {
            try `operator`.returnType.instantiationSyntax(isGodotObject: false) { instanceName in
                try operatorFunction.argumentsPointerAccessSyntax { pointerNames in
                    try name.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtrName in
                        let lhsPointer = pointerNames[0]
                        let rhsPointer = `operator`.rightType == nil ? "nil" : pointerNames[1]
                        
                        DeclSyntax("""
                        Self.\(raw: `operator`.ptrSyntax)(\(raw: lhsPointer), \(raw: rhsPointer), \(raw: instancePtrName))
                        """)
                    }
                }
            }
        }.addModifier(.init(name: .keyword(.internal)))
    }
    
    @MemberDeclListBuilder
    func getterSetterSyntax(
        useOpaque: Bool,
        options: GodotTypeSyntaxOptions
    ) throws -> MemberDeclListSyntax {
        if let indexingReturnType, !isKeyed {
            try FunctionDeclSyntax("func _getValue(at index: GDExtensionInt) -> \(raw: indexingReturnType.syntax())") {
                try indexingReturnType.instantiationSyntax(isGodotObject: false) { instanceName in
                    try indexingReturnType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                        try name.pointerAccessSyntax(instanceName: "self") { selfPtr in
                            DeclSyntax("Self.__indexed_getter(\(raw: selfPtr), index, \(raw: instancePtr))")
                        }
                    }
                }
            }.addModifier(.init(name: .keyword(.internal)))
            
            try FunctionDeclSyntax("mutating func _setValue(_ value: \(raw: indexingReturnType.syntax(options: options)), at index: GDExtensionInt)") {
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
            internal func _getValue(forKey key: Variant) -> Variant {
                var __returnValue = Variant()
                
                withUnsafeGodotMutableAccessPointer(to: &__returnValue) { __ptr___returnValue in
                    withUnsafeGodotAccessPointer(to: key) { __ptr_key in
                        withUnsafeGodotAccessPointer(to: `self`) { __ptr_self in
                            Self.__keyed_getter(__ptr_self, __ptr_key, __ptr___returnValue)
                        }
                    }
                }
                
                return __returnValue
            }
            
            internal mutating func _set(value: Variant, forKey key: Variant) {
                replaceOpaqueValueIfNecessary()
                
                withUnsafeGodotAccessPointer(to: value) { __ptr_value in
                    withUnsafeGodotAccessPointer(to: key) { __ptr_key in
                        withUnsafeGodotMutableAccessPointer(to: &`self`) { __ptr_self in
                            Self.__keyed_setter(__ptr_self, __ptr_key, __ptr_value)
                        }
                    }
                }
            }
            
            internal func _check(key: Variant) -> Bool {
                var keyCheck = UInt32()
                
                withUnsafeGodotAccessPointer(to: key) { __ptr_key in
                    withUnsafeGodotAccessPointer(to: `self`) { __ptr_self in
                        keyCheck = Self.__keyed_checker(__ptr_self, __ptr_key)
                    }
                }
                
                return keyCheck != 0
            }
            """)
        }
    }
    
    @MemberDeclListBuilder
    func methodsSyntax(
        extensionAPI: GodotExtensionAPI,
        options: GodotTypeSyntaxOptions = []
    ) throws -> MemberDeclListSyntax {
        if let methods {
            for method in methods {
                try methodSyntax(method, options: options, extensionAPI: extensionAPI)
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    private func methodSyntax(
        _ method: Method,
        options: GodotTypeSyntaxOptions,
        extensionAPI: GodotExtensionAPI
    ) throws -> FunctionDeclSyntax {
        let mutability: GodotType.Mutability = method.isMutating ? .mutable : .constMutablePointer
        
        let functionDecl = try method.declSyntax(underscoreName: true, options: options) {
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(
                    isGodotObject: extensionAPI.typeIsGodotClass(returnType),
                    options: options
                ) { instanceName in
                    try method.argumentsPackPointerAccessSyntax { packName in
                        try returnType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                            if method.isStatic {
                                DeclSyntax("Self.\(raw: method.ptrSyntax)(nil, \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax))")
                            } else {
                                try name.pointerAccessSyntax(instanceName: "self", mutability: mutability) { selfPtr in
                                    DeclSyntax("Self.\(raw: method.ptrSyntax)(\(raw: selfPtr), \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax))")
                                }
                            }
                        }
                    }
                }
            } else {
                try method.argumentsPackPointerAccessSyntax { packName in
                    if method.isStatic {
                        DeclSyntax("Self.\(raw: method.ptrSyntax)(nil, \(raw: packName), nil, \(raw: method.argumentsCountSyntax))")
                    } else {
                        try name.pointerAccessSyntax(instanceName: "self", mutability: mutability) { selfPtr in
                            DeclSyntax("Self.\(raw: method.ptrSyntax)(\(raw: selfPtr), \(raw: packName), nil, \(raw: method.argumentsCountSyntax))")
                        }
                    }
                }
            }
        }
        .addModifier(.init(name: .keyword(.internal)))
        
        if method.isResultDiscardable {
            return functionDecl.addAttribute(.init(AttributeSyntax(atSignToken: .atSignToken(), attributeName: SimpleTypeIdentifierSyntax(name: .identifier("discardableResult")))))
        } else {
            return functionDecl
        }
    }
    
    @MemberDeclListBuilder
    func propertiesBindingsSyntax() -> MemberDeclListSyntax {
        for constructor in constructors {
            DeclSyntax("private static var \(raw: constructor.ptrSyntax): GDExtensionPtrConstructor!")
        }
        
        if hasDestructor {
            DeclSyntax("private static var __destructor: GDExtensionPtrDestructor!")
        }
        
        if indexingReturnType != nil {
            DeclSyntax("private static var __indexed_setter: GDExtensionPtrIndexedSetter!")
            DeclSyntax("private static var __indexed_getter: GDExtensionPtrIndexedGetter!")
        }
        
        if isKeyed {
            DeclSyntax("private static var __keyed_setter: GDExtensionPtrKeyedSetter!")
            DeclSyntax("private static var __keyed_getter: GDExtensionPtrKeyedGetter!")
            DeclSyntax("private static var __keyed_checker: GDExtensionPtrKeyedChecker!")
        }
        
        if let methods {
            for method in methods {
                DeclSyntax("private static var \(raw: method.ptrSyntax): GDExtensionPtrBuiltInMethod!")
            }
        }
        
        for `operator` in operators {
            DeclSyntax("private static var \(raw: `operator`.ptrSyntax): GDExtensionPtrOperatorEvaluator!")
        }
    }
    
    func setInitializersBindingsSyntax() throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("internal static func setInitBindings()") {
            for constructor in constructors {
                DeclSyntax("\(raw: constructor.ptrSyntax) = GodotExtension.interface.variant_get_ptr_constructor(\(raw: name.variantType!), \(literal: constructor.index))")
            }
            
            if hasDestructor {
                DeclSyntax("__destructor = GodotExtension.interface.variant_get_ptr_destructor(\(raw: name.variantType!))")
            }
        }
    }
    
    func setFunctionBindingsSyntax() throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("internal static func setFunctionBindings()") {
            if indexingReturnType != nil {
                DeclSyntax("""
                __indexed_setter = GodotExtension.interface.variant_get_ptr_indexed_setter(\(raw: name.variantType!))
                __indexed_getter = GodotExtension.interface.variant_get_ptr_indexed_getter(\(raw: name.variantType!))
                """)
            }
            
            if isKeyed {
                DeclSyntax("""
                __keyed_setter = GodotExtension.interface.variant_get_ptr_keyed_setter(\(raw: name.variantType!))
                __keyed_getter = GodotExtension.interface.variant_get_ptr_keyed_getter(\(raw: name.variantType!))
                __keyed_checker = GodotExtension.interface.variant_get_ptr_keyed_checker(\(raw: name.variantType!))
                """)
            }
            
            if let methods {
                DeclSyntax("var _method_name: StringName!")
                for method in methods {
                    ExprSyntax("""
                    _method_name = \(literal: method.name)
                    withUnsafeGodotMutableAccessPointer(to: &_method_name) { __ptr__method_name in
                    \(raw: method.ptrSyntax) = GodotExtension.interface.variant_get_ptr_builtin_method(\(raw: name.variantType!), __ptr__method_name, \(literal: method.hash))
                    }
                    """)
                }
            }
            
            for `operator` in operators {
                DeclSyntax("\(raw: `operator`.ptrSyntax) = GodotExtension.interface.variant_get_ptr_operator_evaluator(\(raw: `operator`.extensionSyntax), \(raw: name.variantType!), \(raw: `operator`.rightType?.variantType ?? "GDEXTENSION_VARIANT_TYPE_NIL"))")
            }
        }
    }
    
    func opaqueValueSyntax() -> DeclSyntax {
        DeclSyntax("""
        /// When a function modifies the opaque array or any value associated,
        /// we should check that the `Opaque` value is uniquely referenced and if not,
        /// duplicate its value.
        private mutating func replaceOpaqueValueIfNecessary() {
            guard !isKnownUniquelyReferenced(&opaque) else {
                return
            }
            
            let tmp = Self(self)
            self.opaque = tmp.opaque
        }
        
        private(set) var opaque: Opaque
        
        internal func withUnsafeExtensionPointer(_ body: (GDExtensionTypePtr) -> ()) {
            opaque.withUnsafeMutableRawPointer(body)
        }
        
        internal func opaqueIsZero() -> Bool {
            opaque.isZero()
        }
        
        internal var opaqueDescription: Swift.String {
            opaque.debugDescription
        }
        """)
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
