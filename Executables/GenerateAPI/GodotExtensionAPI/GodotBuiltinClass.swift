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
    func bindingsSyntax() -> Syntax {
        let godotVariantType = name.godotVariantType!
        
        return Syntax("internal enum \(bindingsIdentifier)", separator: .newlines(2)) {
            "static private var areBindingsLoaded = false"
            
            Syntax("internal static func loadBindings()") {
                """
                precondition(!areBindingsLoaded, "\(identifier) bindings are already loaded.")
                areBindingsLoaded = true
                
                """
                
                if hasDestructor {
                    """
                    destructor = GodotExtension.Interface.variantGetPtrDestructor(\(godotVariantType))!
                    """
                }
                
                for constructor in constructors {
                    """
                    \(constructor.ptrIdentifier) = GodotExtension.Interface.variantGetPtrConstructor(\(godotVariantType), \( constructor.index))!
                    """
                }
                
                for `operator` in operators {
                    """
                    \(`operator`.ptrIdentifier) = GodotExtension.Interface.variantGetPtrOperatorEvaluator(\(`operator`.extensionSyntax), \(godotVariantType), \(`operator`.rightType?.godotVariantType ?? "GDEXTENSION_VARIANT_TYPE_NIL"))!
                    """
                }
                
                if indexingReturnType != nil, !isKeyed {
                    """
                    indexedSetter = GodotExtension.Interface.variantGetPtrIndexedSetter(\(godotVariantType))!
                    indexedGetter = GodotExtension.Interface.variantGetPtrIndexedGetter(\(godotVariantType))!
                    """
                }
                
                if isKeyed {
                    """
                    keyedSetter = GodotExtension.Interface.variantGetPtrKeyedSetter(\(godotVariantType))!
                    keyedGetter = GodotExtension.Interface.variantGetPtrKeyedGetter(\(godotVariantType))!
                    keyedChecker = GodotExtension.Interface.variantGetPtrKeyedChecker(\(godotVariantType))!
                    """
                }
                
                for method in methods {
                    """
                    \(method.ptrIdentifier) = GodotStringName(swiftStaticString: "\(method.name)").withUnsafeOpaquePointer { __ptr__method_name in
                        GodotExtension.Interface.variantGetPtrBuiltinMethod(\(godotVariantType), __ptr__method_name, \(method.hash))!
                    }
                    """
                }
            }
            
            Syntax {
                if hasDestructor {
                    """
                    static private(set) var destructor: GDExtensionPtrDestructor!
                    """
                }
                
                for constructor in constructors {
                    """
                    static private(set) var \(constructor.ptrIdentifier): GDExtensionPtrConstructor!
                    """
                }
                
                for `operator` in operators {
                    """
                    static private(set) var \(`operator`.ptrIdentifier): GDExtensionPtrOperatorEvaluator!
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
                    static private(set) var \(method.ptrIdentifier): GDExtensionPtrBuiltInMethod!
                    """
                }
            }
        }
    }
}

// MARK: - Constant

extension GodotBuiltinClass.Constant {
    func declSyntax() -> Syntax {
        let name = name.lowercased().translated(from: .snake, to: .camel)
        
        return """
        public static var \(name): \(type.syntax()) {
            \(value.syntax(forType: type, useStaticVariables: false))
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
    
    var extensionSyntax: Syntax {
        "GDEXTENSION_VARIANT_OP_\(identifier.uppercased())"
    }
    
    var ptrIdentifier: Syntax {
        var name = "operator" + identifier.translated(from: .snake, to: .pascal)
        if let rightType {
            name += rightType.syntax(options: [.floatAsDouble])
                .formatted()
                .translated(from: .snake, to: .pascal)
                .plain()
        }
        
        return .init(name)
    }
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) -> Syntax {
        var arguments = [GodotArgument(name: "lhs", type: builtinClass.name)]
        if let rightType = rightType {
            arguments.append(GodotArgument(name: "rhs", type: rightType))
        }
        
        let function = GodotFunction(
            name: "_operator_" + identifier,
            arguments: arguments,
            returnType: returnType.variantStorage,
            isVararg: false,
            isStatic: true,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false, 
            accessControl: .internal
        ).translated()
        
        return function.declSyntax(
            hideAllLabels: true,
            options: builtinClass.syntaxOptions
        ) {
            returnType.instantiationSyntax { instancePtr in
                function.argumentsPointerAccessSyntax(options: builtinClass.syntaxOptions) { pointerNames in
                    let lhsPointer = pointerNames[0]
                    let rhsPointer = rightType == nil ? "nil" : pointerNames[1]
                    
                    """
                    \(builtinClass.bindingsIdentifier).\(ptrIdentifier)(\(lhsPointer), \(rhsPointer), \(instancePtr))
                    """
                }
            }
        }
    }
}

// MARK: - Method

extension GodotBuiltinClass.Method {
    var ptrIdentifier: Syntax {
        "method\(name.translated(from: .snake, to: .pascal))"
    }
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) -> Syntax {
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
            returnType: returnType?.variantStorage,
            isVararg: isVararg,
            isStatic: isStatic,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false,
            accessControl: .internal
        ).translated()
        
        function.name.insert("_", at: function.name.startIndex)
        
        return function.declSyntax(options: syntaxOptions) {
            if let returnType {
                returnType.instantiationSyntax(options: syntaxOptions, prefix: "return ") { instancePtr in
                    function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if isStatic {
                            "\(builtinClass.bindingsIdentifier).\(ptrIdentifier)(nil, \(packName), \(instancePtr), \(function.argumentsCountSyntax(type: Int32.self)))"
                        } else {
                            builtinClass.name.pointerAccessSyntax(
                                instanceName: "self",
                                options: syntaxOptions,
                                mutability: .constMutablePointer
                            ) { selfPtr in
                                "\(builtinClass.bindingsIdentifier).\(ptrIdentifier)(\(selfPtr), \(packName), \(instancePtr), \(function.argumentsCountSyntax(type: Int32.self)))"
                            }
                        }
                    }
                }
            } else {
                function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                    if isStatic {
                        "\(builtinClass.bindingsIdentifier).\(ptrIdentifier)(nil, \(packName), nil, \(function.argumentsCountSyntax(type: Int32.self)))"
                    } else {
                        builtinClass.name.pointerAccessSyntax(
                            instanceName: "self",
                            options: syntaxOptions,
                            mutability: .constMutablePointer
                        ) { selfPtr in
                            "\(builtinClass.bindingsIdentifier).\(ptrIdentifier)(\(selfPtr), \(packName), nil, \(function.argumentsCountSyntax(type: Int32.self)))"
                        }
                    }
                }
            }
        }
    }
}

// MARK: - Constructor

extension GodotBuiltinClass.Constructor {
    var ptrIdentifier: Syntax {
        var string = "constructor"
        
        if !arguments.isEmpty {
            string += "From"
            
            for argument in arguments {
                string += argument.type.syntax()
                    .formatted()
                    .plain()
            }
        }
        
        return .init(string)
    }
    
    func declSyntax(
        builtinClass: GodotBuiltinClass
    ) -> Syntax {
        let function = GodotFunction(
            name: "make",
            arguments: arguments,
            returnType: .scope("Opaque", type: .base("Storage")),
            isVararg: false,
            isStatic: true,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false,
            accessControl: .internal
        ).translated()
        
        return function.declSyntax(options: builtinClass.syntaxOptions) {
            "let __temporary: Opaque.Storage = makeOpaqueStorage()"
            
            function.argumentsPackPointerAccessSyntax(options: builtinClass.syntaxOptions) { packName in
                """
                __temporary.withUnsafeMutableRawPointer { __ptr___temporary in
                    \(builtinClass.bindingsIdentifier).\(ptrIdentifier)(__ptr___temporary, \(packName))
                }
                """
            }
            
            "return __temporary"
        }
    }
    
    static func opaqueStorageDeclSyntax(
        builtinClass: GodotBuiltinClass,
        classSize: Int
    ) -> Syntax {
        let destructorPtr: Syntax = builtinClass.hasDestructor ?
            "\(builtinClass.bindingsIdentifier).destructor" : "nil"
        
        return """
        static internal func makeOpaqueStorage(
            useDestructor: Bool = true
        ) -> Opaque.Storage {
            Opaque.Storage(size: \(classSize), destructorPtr: useDestructor ? \(destructorPtr) : nil)
        }
        """
    }
    
    static func opaqueRawOpaqueSyntax(
        builtinClass: GodotBuiltinClass,
        classSize: Int
    ) -> Syntax {
        let rawTuple = repeatElement("UInt8", count: classSize).joined(separator: ", ")
        
        return "internal typealias \(builtinClass.identifier)RawOpaque = (\(rawTuple))"
    }
}

// MARK: - Getter Setter

extension GodotBuiltinClass {
    func getterSetterSyntax() -> Syntax {
        if let indexingReturnType, !isKeyed {
            let borrows = indexingReturnType == .variant
            let indexingReturnType = indexingReturnType.variantStorage
            
            return """
            internal func _getValue(at index: GDExtensionInt) -> \(indexingReturnType.syntax(options: syntaxOptions)) {
                \(indexingReturnType.instantiationSyntax(options: syntaxOptions) { instancePtr in
                    name.pointerAccessSyntax(
                        instanceName: "self",
                        options: syntaxOptions,
                        mutability: .const
                    ) { selfPtr in
                        "\(bindingsIdentifier).indexedGetter(\(selfPtr), index, \(instancePtr))"
                    }
                })
            }
            
            internal func _setValue(_ value: \(borrows ? "borrowing " : "")\(indexingReturnType.syntax(options: syntaxOptions)), at index: GDExtensionInt) {
                \(indexingReturnType.pointerAccessSyntax(
                    instanceName: "value",
                    options: syntaxOptions,
                    mutability: .const
                ) { valuePtr in
                    name.pointerAccessSyntax(
                        instanceName: "self",
                        options: syntaxOptions,
                        mutability: .constMutablePointer
                    ) { selfPtr in
                        "\(bindingsIdentifier).indexedSetter(\(selfPtr), index, \(valuePtr))"
                    }
                })
            }
            """
        } else {
            return Syntax()
        }
    }
}

// MARK: - Key Getter Setter

extension GodotBuiltinClass {
    func keyGetterSetterSyntax() -> Syntax {
        if isKeyed {
            return """
            internal func _getValue(forKey key: borrowing Variant.Storage) -> Variant.Storage {
                let __returnValue = Variant.Storage()
                
                __returnValue.withUnsafeMutableRawPointer { __ptr___returnValue in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeOpaquePointer { __ptr_self in
                            \(bindingsIdentifier).keyedGetter(__ptr_self, __ptr_key, __ptr___returnValue)
                        }
                    }
                }
                
                return __returnValue
            }
            
            internal func _set(value: borrowing Variant.Storage, forKey key: borrowing Variant.Storage) {
                value.withUnsafeRawPointer { __ptr_value in
                    key.withUnsafeRawPointer { __ptr_key in
                        self.withUnsafeMutableOpaquePointer { __ptr_self in
                            \(bindingsIdentifier).keyedSetter(__ptr_self, __ptr_key, __ptr_value)
                        }
                    }
                }
            }
            
            internal func _check(key: borrowing Variant.Storage) -> Bool {
                var keyCheck = UInt32()
                
                key.withUnsafeRawPointer { __ptr_key in
                    self.withUnsafeOpaquePointer { __ptr_self in
                        keyCheck = \(bindingsIdentifier).keyedChecker(__ptr_self, __ptr_key)
                    }
                }
                
                return keyCheck != 0
            }
            """
        } else {
            return Syntax()
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
    
    var identifier: Syntax {
        name.syntax()
    }
    
    var bindingsIdentifier: Syntax {
        "\(name.syntax(options: .packedArrayStorage).formatted().plain())Bindings"
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
    ) throws -> Syntax {
        Syntax(separator: .newlines(2)) {
            let classSize = extensionAPI.builtinClassSizes.size(ofClass: name, for: configuration)!
            
            "import GodotExtensionHeaders"
            
            if useOpaque {
                bindingsSyntax()
                
                if name == .string {
                    Constructor.opaqueRawOpaqueSyntax(builtinClass: self, classSize: classSize)
                }
            }
            
            Syntax("extension \(name.syntax(options: .packedArrayStorage))", separator: .newlines(2)) {
                if name == .color {
                    for constant in constants {
                        constant.declSyntax()
                    }
                }
                
                if !name.isVector {
                    for `enum` in enums {
                        `enum`.declSyntax()
                    }
                }
                
                if useOpaque {
                    Constructor.opaqueStorageDeclSyntax(builtinClass: self, classSize: classSize)
                    
                    for constructor in constructors {
                        constructor.declSyntax(builtinClass: self)
                    }
                    
                    for `operator` in operators {
                        `operator`.declSyntax(builtinClass: self)
                    }
                    
                    getterSetterSyntax()
                    keyGetterSetterSyntax()
                    
                    for method in methods {
                        method.declSyntax(builtinClass: self)
                    }
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
