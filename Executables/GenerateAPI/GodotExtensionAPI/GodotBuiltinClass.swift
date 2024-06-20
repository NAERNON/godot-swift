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
    var members: [GodotArgument]
    var constants: [Constant]
    var enums: [GodotEnum]
    var operators: [Operator]
    var methods: [Method]
    var constructors: [Constructor]
    var hasDestructor: Bool
    
    enum CodingKeys: CodingKey {
        case name
        case indexingReturnType
        case isKeyed
        case members
        case constants
        case enums
        case operators
        case methods
        case constructors
        case hasDestructor
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(GodotType.self, forKey: .name)
        self.indexingReturnType = try container.decodeIfPresent(GodotType.self, forKey: .indexingReturnType)
        self.isKeyed = try container.decode(Bool.self, forKey: .isKeyed)
        self.members = try container.decodeIfPresent([GodotArgument].self, forKey: .members) ?? []
        self.constants = try container.decodeIfPresent([GodotBuiltinClass.Constant].self, forKey: .constants) ?? []
        self.enums = try container.decodeIfPresent([GodotEnum].self, forKey: .enums) ?? []
        self.operators = try container.decode([GodotBuiltinClass.Operator].self, forKey: .operators)
        self.methods = try container.decodeIfPresent([GodotBuiltinClass.Method].self, forKey: .methods) ?? []
        self.constructors = try container.decode([GodotBuiltinClass.Constructor].self, forKey: .constructors)
        self.hasDestructor = try container.decode(Bool.self, forKey: .hasDestructor)
    }
    
    struct Constant: Decodable {
        var name: String
        var type: GodotType
        var value: GodotConstant
    }
    
    struct Operator: Decodable {
        var name: String
        var rightType: GodotType?
        var returnType: GodotType
    }
    
    struct Method: Decodable {
        var name: String
        var returnType: GodotType?
        var isVararg: Bool
        var isConst: Bool
        var isStatic: Bool
        var hash: Int
        var arguments: [GodotArgument]
        
        enum CodingKeys: CodingKey {
            case name
            case returnType
            case isVararg
            case isConst
            case isStatic
            case hash
            case arguments
        }
        
        init(from decoder: any Decoder) throws {
            let container: KeyedDecodingContainer<GodotBuiltinClass.Method.CodingKeys> = try decoder.container(keyedBy: GodotBuiltinClass.Method.CodingKeys.self)
            self.name = try container.decode(String.self, forKey: GodotBuiltinClass.Method.CodingKeys.name)
            self.returnType = try container.decodeIfPresent(GodotType.self, forKey: GodotBuiltinClass.Method.CodingKeys.returnType)
            self.isVararg = try container.decode(Bool.self, forKey: GodotBuiltinClass.Method.CodingKeys.isVararg)
            self.isConst = try container.decode(Bool.self, forKey: GodotBuiltinClass.Method.CodingKeys.isConst)
            self.isStatic = try container.decode(Bool.self, forKey: GodotBuiltinClass.Method.CodingKeys.isStatic)
            self.hash = try container.decode(Int.self, forKey: GodotBuiltinClass.Method.CodingKeys.hash)
            self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: GodotBuiltinClass.Method.CodingKeys.arguments) ?? []
        }
    }
    
    struct Constructor: Decodable {
        var index: Int
        var arguments: [GodotArgument]
        
        enum CodingKeys: CodingKey {
            case index
            case arguments
        }
        
        init(from decoder: any Decoder) throws {
            let container: KeyedDecodingContainer<GodotBuiltinClass.Constructor.CodingKeys> = try decoder.container(keyedBy: GodotBuiltinClass.Constructor.CodingKeys.self)
            self.index = try container.decode(Int.self, forKey: GodotBuiltinClass.Constructor.CodingKeys.index)
            self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: GodotBuiltinClass.Constructor.CodingKeys.arguments) ?? []
        }
    }
}

// MARK: - Bindings

extension GodotBuiltinClass {
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
                
                for method in methods {
                    """
                    \(raw: method.ptrIdentifier) = GodotStringName(swiftStaticString: \(literal: method.name)).withUnsafeOpaquePointer { __ptr__method_name in
                        GodotExtension.Interface.variantGetPtrBuiltinMethod(\(raw: name.variantRepresentationType!), __ptr__method_name, \(literal: method.hash))!
                    }
                    """
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
            
            for method in methods {
                """
                static private(set) var \(raw: method.ptrIdentifier): GDExtensionPtrBuiltInMethod!
                """
            }
        }
    }
}

// MARK: - Constant

extension GodotBuiltinClass.Constant {
    func declSyntax() -> DeclSyntax {
        let name = name.lowercased().translated(from: .snake, to: .camel)
        
        return """
        public static var \(raw: name): \(raw: type.syntax()) {
            \(raw: value.syntax(forType: type, useStaticVariables: false))
        }
        """
    }
}

// MARK: - Operator

extension GodotBuiltinClass.Operator {
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
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) throws -> FunctionDeclSyntax {
        var arguments = [GodotArgument(name: "lhs", type: builtinClass.name)]
        if let rightType = rightType {
            arguments.append(GodotArgument(name: "rhs", type: rightType))
        }
        
        let function = GodotFunction(
            name: "_operator_" + identifier,
            arguments: arguments,
            returnType: returnType.storage,
            isVararg: false,
            isStatic: true,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false, 
            accessControl: .internal
        ).translated()
        
        return try function.declSyntax(
            hideAllLabels: true,
            options: builtinClass.syntaxOptions
        ) {
            try returnType.instantiationSyntax { instancePtr in
                try function.argumentsPointerAccessSyntax(options: builtinClass.syntaxOptions) { pointerNames in
                    let lhsPointer = pointerNames[0]
                    let rhsPointer = rightType == nil ? "nil" : pointerNames[1]
                    
                        """
                        \(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(\(raw: lhsPointer), \(raw: rhsPointer), \(raw: instancePtr))
                        """
                }
            }
        }
    }
}

// MARK: - Method

extension GodotBuiltinClass.Method {
    var ptrIdentifier: String {
        "method\(name.translated(from: .snake, to: .pascal))"
    }
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) throws -> FunctionDeclSyntax {
        let syntaxOptions = builtinClass.syntaxOptions
        var arguments = arguments
        
        for index in 0..<arguments.count {
            if arguments[index].type == .variant {
                arguments[index].type = .variantStorage
                arguments[index].attributes.append("borrowing")
                arguments[index].defaultValue = nil
            }
        }
        
        var function = GodotFunction(
            name: name,
            arguments: arguments,
            returnType: returnType?.storage,
            isVararg: isVararg,
            isStatic: isStatic,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false,
            accessControl: .internal
        ).translated()
        
        function.name.insert("_", at: function.name.startIndex)
        
        return try function.declSyntax(options: syntaxOptions) {
            if let returnType {
                try returnType.instantiationSyntax(options: syntaxOptions, prefix: "return ") { instancePtr in
                    try function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if isStatic {
                            "\(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(nil, \(raw: packName), \(raw: instancePtr), \(raw: function.argumentsCountSyntax(type: Int32.self)))"
                        } else {
                            try builtinClass.name.pointerAccessSyntax(
                                instanceName: "self",
                                options: syntaxOptions,
                                mutability: .constMutablePointer
                            ) { selfPtr in
                                "\(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(\(raw: selfPtr), \(raw: packName), \(raw: instancePtr), \(raw: function.argumentsCountSyntax(type: Int32.self)))"
                            }
                        }
                    }
                }
            } else {
                try function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                    if isStatic {
                        "\(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(nil, \(raw: packName), nil, \(raw: function.argumentsCountSyntax(type: Int32.self)))"
                    } else {
                        try builtinClass.name.pointerAccessSyntax(
                            instanceName: "self",
                            options: syntaxOptions,
                            mutability: .constMutablePointer
                        ) { selfPtr in
                            "\(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(\(raw: selfPtr), \(raw: packName), nil, \(raw: function.argumentsCountSyntax(type: Int32.self)))"
                        }
                    }
                }
            }
        }
    }
}

// MARK: - Constructor

extension GodotBuiltinClass.Constructor {
    var ptrIdentifier: String {
        var string = "constructor"
        
        if !arguments.isEmpty {
            string += "From"
            
            for argument in arguments {
                string += argument.type.syntax()
                    .plain()
            }
        }
        
        return string
    }
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) throws -> FunctionDeclSyntax {
        let function = GodotFunction(
            name: "make",
            arguments: arguments,
            returnType: .scope(scopeType: .base("Opaque"), type: .base("Storage")),
            isVararg: false,
            isStatic: true,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false,
            accessControl: .internal
        ).translated()
        
        return try function.declSyntax(options: builtinClass.syntaxOptions) {
            "var __temporary: Opaque.Storage = makeOpaqueStorage()"
            
            try function.argumentsPackPointerAccessSyntax(options: builtinClass.syntaxOptions) { packName in
                """
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    \(raw: builtinClass.bindingsIdentifier).\(raw: ptrIdentifier)(__ptr___temporary, \(raw: packName))
                }
                """
            }
            
            "return __temporary"
        }
    }
    
    static func opaqueStorageDeclSyntax(
        builtinClass: GodotBuiltinClass,
        classSize: Int
    ) -> DeclSyntax {
        let destructorPtr = builtinClass.hasDestructor ? "\(builtinClass.bindingsIdentifier).destructor" : "nil"
        
        return """
        static internal func makeOpaqueStorage(useDestructor: Bool = true) -> Opaque.Storage {
            Opaque.Storage(size: \(literal: classSize), destructorPtr: useDestructor ? \(raw: destructorPtr) : nil)
        }
        """
    }
    
    static func opaqueRawOpaqueSyntax(
        builtinClass: GodotBuiltinClass,
        classSize: Int
    ) -> DeclSyntax {
        let rawTuple = repeatElement("UInt8", count: classSize).joined(separator: ", ")
        
        return "internal typealias \(raw: builtinClass.identifier)RawOpaque = (\(raw: rawTuple))"
    }
}

// MARK: - Getter Setter

extension GodotBuiltinClass {
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
            
            try FunctionDeclSyntax("internal func _setValue(_ value: \(raw: borrows ? "borrowing " : "")\(raw: indexingReturnType.syntax(options: syntaxOptions)), at index: GDExtensionInt)") {
                try indexingReturnType.pointerAccessSyntax(
                    instanceName: "value",
                    options: syntaxOptions,
                    mutability: .const
                ) { valuePtr in
                    try name.pointerAccessSyntax(
                        instanceName: "self",
                        options: syntaxOptions,
                        mutability: .constMutablePointer
                    ) { selfPtr in
                        "\(raw: bindingsIdentifier).indexedSetter(\(raw: selfPtr), index, \(raw: valuePtr))"
                    }
                }
            }
        }
    }
}

// MARK: - Key Getter Setter

extension GodotBuiltinClass {
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
            internal func _set(value: borrowing Variant.Storage, forKey key: borrowing Variant.Storage) {
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
}

// MARK: - FileSource

extension GodotBuiltinClass: FileSource {
    var isCoveredByStandardLibrary: Bool {
        return switch name {
        case .bool, .float, .int, .nil: true
        default: false
        }
    }
    
    var useOpaque: Bool {
        name.isBuiltinGodotClassWithOpaque
    }
    
    var isReferenceType: Bool {
        name == .callable ||
        name == .array ||
        name == .dictionary ||
        name == .string ||
        name == .stringName ||
        name == .nodePath ||
        name == .rid ||
        name == .signal
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
            
            if name == .string {
                Constructor.opaqueRawOpaqueSyntax(builtinClass: self, classSize: classSize)
            }
        }
        
        try ExtensionDeclSyntax("extension \(raw: name.syntax(options: .packedArrayStorage))") {
            if name == .color {
                for constant in constants {
                    constant.declSyntax()
                }
            }
            
            if !name.isVector {
                for `enum` in enums {
                    try `enum`.declSyntax()
                }
            }
            
            if useOpaque {
                Constructor.opaqueStorageDeclSyntax(builtinClass: self, classSize: classSize)
                
                for constructor in constructors {
                    try constructor.declSyntax(builtinClass: self)
                }
                
                for `operator` in operators {
                    try `operator`.declSyntax(builtinClass: self)
                }
                
                try getterSetterSyntax()
                keyGetterSetterSyntax()
                
                for method in methods {
                    try method.declSyntax(builtinClass: self)
                }
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
