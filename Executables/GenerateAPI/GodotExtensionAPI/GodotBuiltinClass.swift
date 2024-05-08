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
            var name = "operator" + identifier.translated(from: .snake, to: .pascal)
            if let rightType {
                name += rightType.syntax(options: [.floatAsDouble]).translated(from: .snake, to: .pascal)
                    .plain()
            }
            
            return name
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
            "method\(name.translated(from: .snake, to: .pascal))"
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
            "make"
        }
        
        var returnType: GodotType? {
            .selfType
        }
        
        var isStatic: Bool {
            true
        }
        
        var ptrIdentifier: String {
            var string = "constructor"
            
            if let arguments {
                string += "From"
                
                for argument in arguments {
                    string += argument.type.syntax()
                        .plain()
                }
            }
            
            return string
        }
        
        var usesVariantGeneric: Bool {
            true
        }
    }
    
    // MARK: - Syntax
    
    var generatesConstants: Bool {
        name == .color
    }
    
    var generatesEnums: Bool {
        !name.isVector
    }
    
    var isCoveredByStandardLibrary: Bool {
        return switch name {
        case .bool, .float, .int, .nil: true
        default: false
        }
    }
    
    var useOpaque: Bool {
        name.isBuiltinGodotClassWithOpaque
    }
    
    var generateRawOpaque: Bool {
        name == .string
    }
    
    var identifier: String {
        name.syntax()
    }
    
    var bindingsIdentifier: String {
        name.syntax(options: .packedArrayStorage).plain() + "Bindings"
    }
    
    var syntaxOptions: GodotTypeSyntaxOptions {
        if name == .color {
            [
                .optionalClasses,
                .prefixByGodot,
                .genericArrayOnVariant,
                .genericDictionaryOnVariant,
                .packedArrayStorage,
            ]
        } else if useOpaque {
            [
                .optionalClasses,
                .prefixByGodot,
                .floatAsDouble,
                .packedArrayStorage,
                name == .array ? .genericArrayOnElement : .genericArrayOnVariant,
                name == .dictionary ? .genericDictionaryOnKeyValue : .genericDictionaryOnVariant,
            ]
        } else {
            [
                .optionalClasses, .prefixByGodot,
                .floatUseBuildConfiguration,
                .genericArrayOnVariant,
                .genericDictionaryOnVariant,
                .packedArrayStorage,
            ]
        }
    }
    
    @CodeBlockItemListBuilder
    func bindingsSyntax() throws -> CodeBlockItemListSyntax {
        try EnumDeclSyntax("internal enum \(raw: bindingsIdentifier)") {
            "static private var areBindingsLoaded = false"
            
            try FunctionDeclSyntax("internal static func loadBindings()") {
                """
                precondition(!areBindingsLoaded, "\(raw: identifier) bindings are already loaded.")
                """
                
                "areBindingsLoaded = true"
                
                if hasDestructor {
                    """
                    destructor = GodotExtension.Interface.variantGetPtrDestructor(\(raw: name.variantRepresentationType!))!
                    """
                }
                
                for constructor in constructors {
                    """
                    \(raw: constructor.ptrIdentifier) = GodotExtension.Interface.variantGetPtrConstructor(\(raw: name.variantRepresentationType!), \(literal: constructor.index))!
                    """
                }
                
                for `operator` in operators {
                    """
                    \(raw: `operator`.ptrIdentifier) = GodotExtension.Interface.variantGetPtrOperatorEvaluator(\(raw: `operator`.extensionSyntax), \(raw: name.variantRepresentationType!), \(raw: `operator`.rightType?.variantRepresentationType ?? "GDEXTENSION_VARIANT_TYPE_NIL"))!
                    """
                }
                
                if indexingReturnType != nil, !isKeyed {
                    "indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(\(raw: name.variantRepresentationType!))!"
                    "indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(\(raw: name.variantRepresentationType!))!"
                }
                
                if isKeyed {
                    "keyedSetter = GodotExtension.Interface.variantGetPtrKeyedSetter(\(raw: name.variantRepresentationType!))!"
                    "keyedGetter = GodotExtension.Interface.variantGetPtrKeyedGetter(\(raw: name.variantRepresentationType!))!"
                    "keyedChecker = GodotExtension.Interface.variantGetPtrKeyedChecker(\(raw: name.variantRepresentationType!))!"
                }
                
                if let methods {
                    for method in methods {
                        """
                        \(raw: method.ptrIdentifier) = GodotStringName(swiftStaticString: \(literal: method.name)).withUnsafeOpaquePointer { __ptr__method_name in
                            GodotExtension.Interface.variantGetPtrBuiltinMethod(\(raw: name.variantRepresentationType!), __ptr__method_name, \(literal: method.hash))!
                        }
                        """
                    }
                }
            }
            
            if hasDestructor {
                """
                static private(set) var destructor: GDExtensionPtrDestructor!
                """
            }
            
            for constructor in constructors {
                """
                static private(set) var \(raw: constructor.ptrIdentifier): GDExtensionPtrConstructor!
                """
            }
            
            for `operator` in operators {
                """
                static private(set) var \(raw: `operator`.ptrIdentifier): GDExtensionPtrOperatorEvaluator!
                """
            }
            
            if indexingReturnType != nil, !isKeyed {
                """
                static private(set) var indexedSetter: GDExtensionPtrIndexedSetter!
                static private(set) var indexedGetter: GDExtensionPtrIndexedGetter!
                """
            }
            
            if isKeyed {
                """
                static private(set) var keyedSetter: GDExtensionPtrKeyedSetter!
                static private(set) var keyedGetter: GDExtensionPtrKeyedGetter!
                static private(set) var keyedChecker: GDExtensionPtrKeyedChecker!
                """
            }
            
            if let methods {
                for method in methods {
                    """
                    static private(set) var \(raw: method.ptrIdentifier): GDExtensionPtrBuiltInMethod!
                    """
                }
            }
        }
    }
    
    func opaqueRawOpaqueSyntax(classSize: Int) -> DeclSyntax {
        let rawTuple = repeatElement("UInt8", count: classSize).joined(separator: ", ")
        
        return "internal typealias \(raw: identifier)RawOpaque = (\(raw: rawTuple))"
    }
    
    @MemberBlockItemListBuilder
    func constantsSyntax() -> MemberBlockItemListSyntax {
        if let constants, generatesConstants {
            for constant in constants {
                let name = constant.name.lowercased().translated(from: .snake, to: .camel)
                
                """
                public static var \(raw: name): \(raw: constant.type.syntax()) {
                    \(raw: constant.value.syntax(forType: constant.type, useStaticVariables: false))
                }
                """
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func enumSyntax() throws -> MemberBlockItemListSyntax {
        if let enums, generatesEnums {
            for `enum` in enums {
                try `enum`.syntax()
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func constructorsSyntax(classSize: Int) throws -> MemberBlockItemListSyntax {
        if useOpaque {
            let destructorPtr = hasDestructor ? "\(bindingsIdentifier).destructor" : "nil"
            
            """
            static internal func makeOpaque(useDestructor: Bool = true) -> Opaque {
                Opaque(size: \(literal: classSize), destructorPtr: useDestructor ? \(raw: destructorPtr) : nil)
            }
            """
        }
        
        for constructor in constructors {
            try constructorSyntax(constructor)
        }
    }
    
    @MemberBlockItemListBuilder
    private func constructorSyntax(
        _ constructor: Constructor
    ) throws -> MemberBlockItemListSyntax {
        try constructor.translatedArguments().declSyntax(
            options: syntaxOptions,
            keywords: .internal
        ) {
            if useOpaque {
                "let __temporary: Opaque = makeOpaque()"
            } else {
                "var __temporary = \(raw: name.syntax())()"
            }
            
            try constructor.translatedArguments().argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                if name.isBuiltinGodotClassWithOpaque {
                    """
                    __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                        \(raw: bindingsIdentifier).\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
                    }
                    """
                } else {
                    """
                    withUnsafeMutablePointer(to: &__temporary) { __ptr___temporary in
                        \(raw: bindingsIdentifier).\(raw: constructor.ptrIdentifier)(__ptr___temporary, \(raw: packName))
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
        }
    }
    
    @MemberBlockItemListBuilder
    private func operatorSyntax(_ `operator`: Operator) throws -> MemberBlockItemListSyntax {
        let operatorFunction = OperatorFunction(operator: `operator`, type: name)
            .withVariantStorageReturnType()
            .translated()
        
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
                    \(raw: bindingsIdentifier).\(raw: `operator`.ptrIdentifier)(\(raw: lhsPointer), \(raw: rhsPointer), \(raw: instancePtr))
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
                        "\(raw: bindingsIdentifier).indexedGetter(\(raw: selfPtr), index, \(raw: instancePtr))"
                    }
                }
            }
            
            try FunctionDeclSyntax("mutating internal func _setValue(_ value: \(raw: borrows ? "borrowing " : "")\(raw: indexingReturnType.syntax(options: syntaxOptions)), at index: GDExtensionInt)") {
                if useOpaque {
                    "makeUniqueIfSharedOpaque()"
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
                        "\(raw: bindingsIdentifier).indexedSetter(\(raw: selfPtr), index, \(raw: valuePtr))"
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
                
                __returnValue.withUnsafeMutableRawPointer { __ptr___returnValue in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeOpaquePointer { __ptr_self in
                            \(raw: bindingsIdentifier).keyedGetter(__ptr_self, __ptr_key, __ptr___returnValue)
                        }
                    }
                }
                
                return __returnValue
            }
            """
            
            """
            internal mutating func _set(value: borrowing Variant.Storage, forKey key: borrowing Variant.Storage) {
                makeUniqueIfSharedOpaque()
                
                value.withUnsafeRawPointer { __ptr_value in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeMutableOpaquePointer { __ptr_self in
                            \(raw: bindingsIdentifier).keyedSetter(__ptr_self, __ptr_key, __ptr_value)
                        }
                    }
                }
            }
            """
            
            """
            internal func _check(key: borrowing Variant.Storage) -> Bool {
                var keyCheck = UInt32()
                
                key.withUnsafeRawPointer { __ptr_key in
                    self.withUnsafeOpaquePointer { __ptr_self in
                        keyCheck = \(raw: bindingsIdentifier).keyedChecker(__ptr_self, __ptr_key)
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
            }
        }
    }
    
    @MemberBlockItemListBuilder
    private func methodSyntax(_ method: Method) throws -> MemberBlockItemListSyntax {
        let mutability: GodotType.Mutability = method.isMutating ? .mutable : .constMutablePointer
        let translatedMethod = method.withVariantStorageParameters().translated()
        let functionDecl = try translatedMethod.withNamePrefixed(by: "_").declSyntax(
            options: syntaxOptions,
            keywords: .internal
        ) {
            if method.shouldReplaceOpaqueIfNecessary && useOpaque {
                "makeUniqueIfSharedOpaque()"
            }
            
            if let returnType = translatedMethod.returnType {
                try returnType.instantiationSyntax(options: syntaxOptions, prefix: "return ") { instancePtr in
                    try translatedMethod.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if method.isStatic {
                            "\(raw: bindingsIdentifier).\(raw: method.ptrIdentifier)(nil, \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                        } else {
                            try name.pointerAccessSyntax(
                                instanceName: "self",
                                options: syntaxOptions,
                                mutability: mutability
                            ) { selfPtr in
                                "\(raw: bindingsIdentifier).\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), \(raw: instancePtr), \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                            }
                        }
                    }
                }
            } else {
                try translatedMethod.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                    if method.isStatic {
                        "\(raw: bindingsIdentifier).\(raw: method.ptrIdentifier)(nil, \(raw: packName), nil, \(raw: method.argumentsCountSyntax(type: Int32.self)))"
                    } else {
                        try name.pointerAccessSyntax(
                            instanceName: "self",
                            options: syntaxOptions,
                            mutability: mutability
                        ) { selfPtr in
                            "\(raw: bindingsIdentifier).\(raw: method.ptrIdentifier)(\(raw: selfPtr), \(raw: packName), nil, \(raw: method.argumentsCountSyntax(type: Int32.self)))"
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

extension GodotBuiltinClass: FileSource {
    var isFileContentAvailable: Bool {
        !isCoveredByStandardLibrary
    }
    
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        let classSize = extensionAPI.builtinClassSizes.size(ofClass: name, for: configuration)!
        
        "import GodotExtensionHeaders"
        
        if useOpaque {
            try bindingsSyntax()
            
            if generateRawOpaque {
                opaqueRawOpaqueSyntax(classSize: classSize)
            }
        }
        
        try ExtensionDeclSyntax("extension \(raw: name.syntax(options: .packedArrayStorage))") {
            constantsSyntax()
            try enumSyntax()
            
            if useOpaque {
                try constructorsSyntax(classSize: classSize)
                try operatorsSyntax()
                try getterSetterSyntax()
                keyGetterSetterSyntax()
                try methodsSyntax()
            }
        }
    }
}

// MARK: - String extension

private extension String {
    func plain() -> String {
        self
            .replacingOccurrences(of: ">", with: "")
            .replacingOccurrences(of: "<", with: "")
            .replacingOccurrences(of: ".", with: "")
    }
}
