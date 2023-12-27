import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

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
        
        var usesVariantGeneric: Bool { 
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
        
        var usesVariantGeneric: Bool {
            true
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
            [
                .optionalClasses,
                .prefixByGodot,
                .genericArrayOnVariant,
                .genericDictionaryOnVariant
            ]
        } else if useOpaque {
            [
                .optionalClasses,
                .prefixByGodot,
                .floatAsDouble,
                name == .array ? .genericArrayOnElement : .genericArrayOnVariant,
                name == .dictionary ? .genericDictionaryOnKeyValue : .genericDictionaryOnVariant
            ]
        } else {
            [
                .optionalClasses, .prefixByGodot,
                .floatAsReal,
                .genericArrayOnVariant,
                .genericDictionaryOnVariant
            ]
        }
    }
    
    @CodeBlockItemListBuilder
    func lazyVariablesSyntax() -> CodeBlockItemListSyntax {
        if hasDestructor {
            """
            private var __destructor: GDExtensionPtrDestructor = {
                return GodotExtension.Interface.variantGetPtrDestructor(\(raw: name.variantRepresentationType!))!
            }()
            """
        }
        
        for constructor in constructors {
            """
            private var \(raw: constructor.ptrIdentifier): GDExtensionPtrConstructor = {
                return GodotExtension.Interface.variantGetPtrConstructor(\(raw: name.variantRepresentationType!), \(literal: constructor.index))!
            }()
            """
        }
        
        for `operator` in operators {
            """
            private var \(raw: `operator`.ptrIdentifier): GDExtensionPtrOperatorEvaluator = {
                return GodotExtension.Interface.variantGetPtrOperatorEvaluator(\(raw: `operator`.extensionSyntax), \(raw: name.variantRepresentationType!), \(raw: `operator`.rightType?.variantRepresentationType ?? "GDEXTENSION_VARIANT_TYPE_NIL"))!
            }()
            """
        }
        
        if indexingReturnType != nil, !isKeyed {
            """
            private var __indexed_setter: GDExtensionPtrIndexedSetter = {
                return GodotExtension.Interface.variantGetPtrIndexedSetter(\(raw: name.variantRepresentationType!))!
            }()
            private var __indexed_getter: GDExtensionPtrIndexedGetter = {
                return GodotExtension.Interface.variantGetPtrIndexedGetter(\(raw: name.variantRepresentationType!))!
            }()
            """
        }
        
        if isKeyed {
            """
            private var __keyed_setter: GDExtensionPtrKeyedSetter = {
                return GodotExtension.Interface.variantGetPtrKeyedSetter(\(raw: name.variantRepresentationType!))!
            }()
            private var __keyed_getter: GDExtensionPtrKeyedGetter = {
                return GodotExtension.Interface.variantGetPtrKeyedGetter(\(raw: name.variantRepresentationType!))!
            }()
            private var __keyed_checker: GDExtensionPtrKeyedChecker = {
                return GodotExtension.Interface.variantGetPtrKeyedChecker(\(raw: name.variantRepresentationType!))!
            }()
            """
        }
        
        if let methods {
            for method in methods {
                """
                private var \(raw: method.ptrIdentifier): GDExtensionPtrBuiltInMethod = {
                    GodotStringName(swiftStaticString: \(literal: method.name)).withGodotUnsafeRawPointer { __ptr__method_name in
                    return GodotExtension.Interface.variantGetPtrBuiltinMethod(\(raw: name.variantRepresentationType!), __ptr__method_name, \(literal: method.hash))!
                    }
                }()
                """
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func constantsSyntax() -> MemberBlockItemListSyntax {
        if let constants {
            for constant in constants {
                let name = constant.name.lowercased().translated(from: .snake, to: .camel)
                
                "public static let \(raw: name): \(raw: constant.type.syntax()) = \(raw: constant.value.syntax(forType: constant.type))"
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func enumSyntax() throws -> MemberBlockItemListSyntax {
        if let enums {
            for `enum` in enums {
                try `enum`.syntax()
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func constructorsSyntax(classSize: Int) throws -> MemberBlockItemListSyntax {
        for constructor in constructors {
            try constructorSyntax(constructor, classSize: classSize)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    @MemberBlockItemListBuilder
    private func constructorSyntax(
        _ constructor: Constructor,
        classSize: Int
    ) throws -> MemberBlockItemListSyntax {
        try constructor.translatedArguments.declSyntax(
            options: syntaxOptions,
            keywords: .internal
        ) {
            let destructorPtr = hasDestructor ? "__destructor" : "nil"
            
            if useOpaque {
                "let __temporary: Opaque = .init(size: \(literal: classSize), destructorPtr: \(raw: destructorPtr))"
            } else {
                "var __temporary = \(raw: name.syntax())()"
            }
            
            try constructor.translatedArguments.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                if name.isBuiltinGodotClassWithOpaque {
                    """
                    __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                        \(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """
                } else {
                    """
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        \(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """
                }
            }
            
            if useOpaque {
                "return Self.init(opaque: __temporary)"
            } else {
                "return __temporary"
            }
        }
        
        let constructor = PointerConstructor(constructor)
        
        try constructor.translatedArguments.declSyntax(
            options: syntaxOptions,
            keywords: .internal
        ) {
            let destructorPtr = hasDestructor ? "__destructor" : "nil"
            
            if useOpaque {
                "let __temporary: Opaque = .init(size: \(literal: classSize), destructorPtr: \(raw: destructorPtr))"
            } else {
                "var __temporary = \(raw: name.syntax())()"
            }
            
            try constructor.translatedArguments.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                if name.isBuiltinGodotClassWithOpaque {
                    """
                    __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                        \(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """
                } else {
                    """
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        \(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """
                }
            }
            
            if useOpaque {
                "return Self.init(opaque: __temporary)"
            } else {
                "return __temporary"
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func operatorsSyntax() throws -> MemberBlockItemListSyntax {
        for `operator` in operators {
            try operatorSyntax(`operator`)
                .with(\.trailingTrivia, .newlines(2))
        }
    }
    
    @MemberBlockItemListBuilder
    private func operatorSyntax(_ `operator`: Operator) throws -> MemberBlockItemListSyntax {
        let operatorFunction = OperatorFunction(operator: `operator`, type: name)
            .withVariantStorageReturnType()
            .translated
        
        try operatorFunction.declSyntax(
            hideAllLabels: true,
            options: syntaxOptions,
            keywords: .internal
        ) {
            try `operator`.returnType.instantiationSyntax { instancePtr in
                try operatorFunction.argumentsPointerAccessSyntax(options: syntaxOptions) { pointerNames in
                    let lhsPointer = pointerNames[0]
                    let rhsPointer = `operator`.rightType == nil ? "nil" : pointerNames[1]
                    
                    """
                    \(raw: `operator`.ptrIdentifier)(\(raw: lhsPointer), \(raw: rhsPointer), \(raw: instancePtr))
                    """
                }
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func getterSetterSyntax() throws -> MemberBlockItemListSyntax {
        if let indexingReturnType, !isKeyed {
            let borrows = indexingReturnType == .variant
            let indexingReturnType = indexingReturnType.storage
            
            try FunctionDeclSyntax("internal func _getValue(at index: GDExtensionInt) -> \(raw: indexingReturnType.syntax(options: syntaxOptions))") {
                try indexingReturnType.instantiationSyntax(options: syntaxOptions) { instancePtr in
                    try name.pointerAccessSyntax(
                        instanceName: "self",
                        options: syntaxOptions,
                        mutability: .const
                    ) { selfPtr in
                        "__indexed_getter(\(raw: selfPtr), index, \(raw: instancePtr))"
                    }
                }
            }
            
            try FunctionDeclSyntax("mutating internal func _setValue(_ value: \(raw: borrows ? "borrowing " : "")\(raw: indexingReturnType.syntax(options: syntaxOptions)), at index: GDExtensionInt)") {
                if useOpaque {
                    "replaceOpaqueValueIfNecessary()"
                }
                
                try indexingReturnType.pointerAccessSyntax(
                    instanceName: "value",
                    options: syntaxOptions,
                    mutability: .const
                ) { valuePtr in
                    try name.pointerAccessSyntax(
                        instanceName: "self",
                        options: syntaxOptions,
                        mutability: .mutable
                    ) { selfPtr in
                        "__indexed_setter(\(raw: selfPtr), index, \(raw: valuePtr))"
                    }
                }
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func keyGetterSetterSyntax() -> MemberBlockItemListSyntax {
        if isKeyed {
            """
            internal func _getValue(forKey key: borrowing Variant.Storage) -> Variant.Storage {
                let __returnValue = Variant.Storage()
                
                __returnValue.withGodotUnsafeMutableRawPointer { __ptr___returnValue in
                    key.withGodotUnsafeRawPointer { __ptr_key in
                        self.withGodotUnsafeRawPointer { __ptr_self in
                            __keyed_getter(__ptr_self, __ptr_key, __ptr___returnValue)
                        }
                    }
                }
                
                return __returnValue
            }
            
            internal mutating func _set(value: borrowing Variant.Storage, forKey key: borrowing Variant.Storage) {
                replaceOpaqueValueIfNecessary()
                
                value.withGodotUnsafeRawPointer { __ptr_value in
                    key.withGodotUnsafeRawPointer { __ptr_key in
                        self.withGodotUnsafeMutableRawPointer { __ptr_self in
                            __keyed_setter(__ptr_self, __ptr_key, __ptr_value)
                        }
                    }
                }
            }
            
            internal func _check(key: borrowing Variant.Storage) -> Bool {
                var keyCheck = UInt32()
                
                key.withGodotUnsafeRawPointer { __ptr_key in
                    self.withGodotUnsafeRawPointer { __ptr_self in
                        keyCheck = __keyed_checker(__ptr_self, __ptr_key)
                    }
                }
                
                return keyCheck != 0
            }
            """
        }
    }
    
    @MemberBlockItemListBuilder
    func methodsSyntax() throws -> MemberBlockItemListSyntax {
        if let methods {
            for method in methods {
                try methodSyntax(method)
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    @MemberBlockItemListBuilder
    private func methodSyntax(_ method: Method) throws -> MemberBlockItemListSyntax {
        let mutability: GodotType.Mutability = method.isMutating ? .mutable : .constMutablePointer
        let translatedMethod = method.withVariantStorageParameters().translated
        let functionDecl = try translatedMethod.withNamePrefixed(by: "_").declSyntax(
            options: syntaxOptions,
            keywords: .internal
        ) {
            if method.shouldReplaceOpaqueIfNecessary && useOpaque {
                "replaceOpaqueValueIfNecessary()"
            }
            
            if let returnType = translatedMethod.returnType {
                try returnType.instantiationSyntax(options: syntaxOptions, prefix: "return ") { instancePtr in
                    try translatedMethod.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if method.isStatic {
                            "\(raw: method.ptrIdentifier)(nil, \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                        } else {
                            try name.pointerAccessSyntax(
                                instanceName: "self",
                                options: syntaxOptions,
                                mutability: mutability
                            ) { selfPtr in
                                "\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                            }
                        }
                    }
                }
            } else {
                try translatedMethod.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                    if method.isStatic {
                        "\(raw: method.ptrIdentifier)(nil, \(raw: packName), nil, \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                    } else {
                        try name.pointerAccessSyntax(
                            instanceName: "self",
                            options: syntaxOptions,
                            mutability: mutability
                        ) { selfPtr in
                            "\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), nil, \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                        }
                    }
                }
            }
        }
        
        if method.isResultDiscardable {
            let attributes = AttributeListSyntax {
                AttributeSyntax(
                    atSign: .atSignToken(),
                    attributeName: IdentifierTypeSyntax(name: .identifier("discardableResult"))
                )
            }
            functionDecl.with(\.attributes, attributes)
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
    
    var usesVariantGeneric: Bool { true }
}
