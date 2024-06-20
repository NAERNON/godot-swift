import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

/// A representation of a Godot class.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotClass: Decodable {
    var name: GodotType
    var isRefcounted: Bool
    var isInstantiable: Bool
    var inherits: GodotType?
    var apiType: APIType
    var enums: [GodotEnum]
    var methods: [Method]
    var properties: [Property]
    var signals: [Signal]
    var constants: [Constant]
    
    enum CodingKeys: CodingKey {
        case name
        case isRefcounted
        case isInstantiable
        case inherits
        case apiType
        case enums
        case methods
        case properties
        case signals
        case constants
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(GodotType.self, forKey: .name)
        self.isRefcounted = try container.decode(Bool.self, forKey: .isRefcounted)
        self.isInstantiable = try container.decode(Bool.self, forKey: .isInstantiable)
        self.inherits = try container.decodeIfPresent(GodotType.self, forKey: .inherits)
        self.apiType = try container.decode(GodotClass.APIType.self, forKey: .apiType)
        self.enums = try container.decodeIfPresent([GodotEnum].self, forKey: .enums) ?? []
        self.methods = try container.decodeIfPresent([GodotClass.Method].self, forKey: .methods) ?? []
        self.properties = try container.decodeIfPresent([GodotClass.Property].self, forKey: .properties) ?? []
        self.signals = try container.decodeIfPresent([GodotClass.Signal].self, forKey: .signals) ?? []
        self.constants = try container.decodeIfPresent([GodotClass.Constant].self, forKey: .constants) ?? []
    }
    
    enum APIType: String, Decodable, Equatable {
        case core
        case servers
        case scene
        case editor
        case level
    }
    
    struct Method: Decodable, Hashable {
        var name: String
        var isConst: Bool
        var isVararg: Bool
        var isStatic: Bool
        var isVirtual: Bool
        var hash: Int?
        var returnValue: ReturnValue?
        var arguments: [GodotArgument]
        
        enum CodingKeys: CodingKey {
            case name
            case isConst
            case isVararg
            case isStatic
            case isVirtual
            case hash
            case returnValue
            case arguments
        }
        
        init(from decoder: any Decoder) throws {
            let container: KeyedDecodingContainer<GodotClass.Method.CodingKeys> = try decoder.container(keyedBy: GodotClass.Method.CodingKeys.self)
            self.name = try container.decode(String.self, forKey: GodotClass.Method.CodingKeys.name)
            self.isConst = try container.decode(Bool.self, forKey: GodotClass.Method.CodingKeys.isConst)
            self.isVararg = try container.decode(Bool.self, forKey: GodotClass.Method.CodingKeys.isVararg)
            self.isStatic = try container.decode(Bool.self, forKey: GodotClass.Method.CodingKeys.isStatic)
            self.isVirtual = try container.decode(Bool.self, forKey: GodotClass.Method.CodingKeys.isVirtual)
            self.hash = try container.decodeIfPresent(Int.self, forKey: GodotClass.Method.CodingKeys.hash)
            self.returnValue = try container.decodeIfPresent(GodotClass.Method.ReturnValue.self, forKey: GodotClass.Method.CodingKeys.returnValue)
            self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: GodotClass.Method.CodingKeys.arguments) ?? []
        }
        
        struct ReturnValue: Decodable, Hashable {
            var type: GodotType
            
            enum CodingKeys: CodingKey {
                case type
                case meta
            }
            
            init(type: GodotType, meta: GodotTypeMetadata? = nil) {
                if let meta {
                    self.type = type.withMetadata(meta)
                } else {
                    self.type = type
                }
            }
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                self.init(
                    type: try container.decode(GodotType.self, forKey: .type),
                    meta: try container.decodeIfPresent(GodotTypeMetadata.self, forKey: .meta)
                )
            }
        }
    }
    
    struct Property: Decodable {
        var type: GodotType
        var name: String
        var getter: String
        var setter: String?
        var index: Int?
    }
    
    struct Signal: Decodable {
        var name: String
        var arguments: [GodotArgument]
        
        enum CodingKeys: CodingKey {
            case name
            case arguments
        }
        
        init(from decoder: any Decoder) throws {
            let container: KeyedDecodingContainer<GodotClass.Signal.CodingKeys> = try decoder.container(keyedBy: GodotClass.Signal.CodingKeys.self)
            self.name = try container.decode(String.self, forKey: GodotClass.Signal.CodingKeys.name)
            self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: GodotClass.Signal.CodingKeys.arguments) ?? []
        }
    }
    
    struct Constant: Decodable {
        var name: String
        var value: Int
    }
}

// MARK: - Method

extension GodotClass.Method {
    var ptrIdentifier: String {
        "__method_binding_\(name)"
    }
    
    private func bindCall(
        `class`: GodotClass,
        selfExpression: String,
        argsExpression: String,
        returnExpression: String
    ) -> ExprSyntax {
        if isVararg {
            """
            GodotExtension.Interface.objectMethodBindCall(
                Self.\(raw: ptrIdentifier),
                \(raw: selfExpression),
                \(raw: argsExpression),
                \(raw: godotFunction(class: `class`, isGetterSetter: false).argumentsCountSyntax(type: Int64.self)),
                \(raw: returnExpression),
                nil
            )
            """
        } else {
            """
            GodotExtension.Interface.objectMethodBindPtrcall(
                Self.\(raw: ptrIdentifier),
                \(raw: selfExpression),
                \(raw: argsExpression),
                \(raw: returnExpression)
            )
            """
        }
    }
    
    func bindingDeclSyntax() -> DeclSyntax? {
        if isVirtual { return nil }
        
        return """
        internal static var \(raw: ptrIdentifier): GDExtensionMethodBindPtr = {
            _$exposedClassName.withUnsafeOpaquePointer { __ptr__class_name in
            GodotStringName(swiftStaticString: \(literal: name)).withUnsafeOpaquePointer { __ptr__method_name in
            return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, \(literal: hash!))!
            }
            }
        }()
        """
    }
    
    func godotFunction(
        `class`: GodotClass,
        isGetterSetter: Bool
    ) -> GodotFunction {
        let accessControl: AccessControl
        if isVirtual {
            accessControl = .open
        } else {
            if `class`.isRootClass {
                accessControl = .internal
            } else if `class`.isRefCountedRootClass {
                accessControl = .private
            } else {
                accessControl = .public
            }
        }
        
        return GodotFunction(
            name: isGetterSetter || accessControl < .public ? "__" + name : name,
            arguments: arguments,
            returnType: returnValue?.type,
            isVararg: isVararg,
            isStatic: isStatic,
            isMutating: false,
            usesVariantGeneric: !isVirtual,
            convertsAllParameterToVariant: isVararg,
            accessControl: isGetterSetter ? .private : accessControl
        ).translated(typeName: `class`.name.syntax())
    }
    
    func declSyntax(
        `class`: GodotClass,
        isGetterSetter: Bool
    ) throws -> FunctionDeclSyntax {
        let syntaxOptions = `class`.syntaxOptions
        let selfPtrName = "__ptr_self"
        
        let function = godotFunction(
            class: `class`,
            isGetterSetter: isGetterSetter
        )
        
        return try function.declSyntax(options: syntaxOptions) {
            if isVirtual {
                if let returnType = returnValue?.type {
                    if returnType.isGodotClass || returnType.isOptional {
                        "nil"
                    } else if returnType == .variant {
                        "Variant()"
                    } else if returnType.isEnum {
                        "\(raw: returnType.syntax(options: syntaxOptions))(rawValue: 0)!"
                    } else if returnType.isPointer {
                        "fatalError(\"No default value provided for pointers\")"
                    } else {
                        "\(raw: returnType.syntax(options: syntaxOptions))()"
                    }
                }
            } else {
                if let returnType = returnValue?.type {
                    try returnType.instantiationSyntax(options: syntaxOptions) { instancePtr in
                        try function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                            if isStatic {
                                bindCall(
                                    class: `class`,
                                    selfExpression: "nil",
                                    argsExpression: packName,
                                    returnExpression: instancePtr
                                )
                            } else {
                                """
                                self.withUnsafeMutableRawPointer { \(raw: selfPtrName) in
                                    \(bindCall(
                                        class: `class`,
                                        selfExpression: selfPtrName,
                                        argsExpression: packName,
                                        returnExpression: instancePtr
                                    ))
                                }
                                """
                            }
                        }
                    }
                } else {
                    try function.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if isStatic {
                            bindCall(
                                class: `class`,
                                selfExpression: "nil",
                                argsExpression: packName,
                                returnExpression: "nil"
                            )
                        } else {
                            """
                            self.withUnsafeMutableRawPointer { \(raw: selfPtrName) in
                                \(bindCall(
                                    class: `class`,
                                    selfExpression: selfPtrName,
                                    argsExpression: packName,
                                    returnExpression: "nil"
                                ))
                            }
                            """
                        }
                    }
                }
            }
        }
    }
}

// MARK: - Property

extension GodotClass.Property {
    func declSyntax(
        `class`: GodotClass,
        getter: GodotClass.Method,
        setter: GodotClass.Method?
    ) throws -> VariableDeclSyntax {
        var name: String
        let returnType = getter.returnValue!.type
        let getterParameters: [String]
        
        if let input = getter.arguments.first,
           let index {
            name = self.name.translated(from: .snake, to: .camel).backticksKeyword()
            
            if input.type.isEnum {
                getterParameters = [".init(rawValue: \(index))!"]
            } else {
                getterParameters = [String(index)]
            }
        } else {
            name = getter.godotFunction(class: `class`, isGetterSetter: false).name.backticksKeyword()
            getterParameters = []
        }
        
        if name == "description" {
            name = "godotDescription"
        }
        
        return try VariableDeclSyntax("public var \(raw: name): \(raw: returnType.syntax(options: `class`.syntaxOptions))") {
            AccessorDeclSyntax(accessorSpecifier: .keyword(.get)) {
                getter.godotFunction(class: `class`, isGetterSetter: true).callSyntax(
                    withParameters: getterParameters
                )
            }
            
            if let setter {
                AccessorDeclSyntax(accessorSpecifier: .keyword(.set)) {
                    setter.godotFunction(class: `class`, isGetterSetter: true).callSyntax(
                        withParameters: ["newValue"]
                    )
                }
            }
        }
    }
}

// MARK: - Signal

extension GodotClass.Signal {
    @MemberBlockItemListBuilder
    func declSyntax(
        `class`: GodotClass
    ) throws -> MemberBlockItemListSyntax {
        let signalInspector = SignalInspector(
            functionName: name.translated(from: .snake, to: .camel),
            signalCName: name,
            arguments: arguments.map { (
                $0.name.translated(from: .snake, to: .camel),
                $0.type.syntax(options: `class`.syntaxOptions)
            ) },
            isPublic: true
        )
        
        try signalInspector.signalInputDeclSyntax()
        try signalInspector.signalFunctionDeclSyntax()
        signalInspector.emitterDeclSyntax()
    }
}

// MARK: - Constant

extension GodotClass.Constant {
    func declSyntax() -> DeclSyntax {
        let propertyName = name.lowercased().translated(from: .snake, to: .camel)
        
        return if name.starts(with: "NOTIFICATION") {
            "public static let \(raw: propertyName): Notification = .init(rawValue: \(literal: value))"
        } else {
            "public static let \(raw: propertyName): Int = \(literal: value)"
        }
    }
}

// MARK: - FileSource

extension GodotClass: FileSource {
    /// A Boolean value indicating whether the class
    /// is the root of the hierarchy tree.
    var isRootClass: Bool {
        name == .object
    }
    
    /// A Boolean value indicating whether the class
    /// is the root of the ref counted classes.
    var isRefCountedRootClass: Bool {
        name == .refCounted
    }
    
    var identifier: String {
        name.syntax()
    }
    
    var syntaxOptions: GodotTypeSyntaxOptions {
        [
            .optionalClasses,
            .prefixByGodot,
            .floatAsDouble,
            .genericArrayOnVariant,
            .genericDictionaryOnVariant
        ]
    }
    
    @MemberBlockItemListBuilder
    func setVirtualFunctionBindingsSyntax() throws -> MemberBlockItemListSyntax {
        // The return type is a dictionary with the swift function name as key,
        // and the godot name and call as value
        let returnType = "[GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]"
        
        "private static var _virtualFunctions: \(raw: returnType)? = nil"
        
        try FunctionDeclSyntax("internal \(raw: isRootClass ? "" : "override ")class func virtualFunctions() -> \(raw: returnType)")
        {
            "if let _virtualFunctions { return _virtualFunctions }"
            
            var arrayElements = [String]()
            
            for method in methods.filter(\.isVirtual) {
                let virtualFuncVarName = "\(method.name)_call"
                
                """
                let \(raw: virtualFuncVarName): GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
                guard let instancePtr\(raw: method.arguments.isEmpty ? "" : ", let args") else { return }
                Unmanaged<\(raw: name.syntax())>.fromOpaque(instancePtr).takeUnretainedValue()
                """
                
                let parameters: [String] = method.arguments.enumerated().map { (index, argument) in
                    "\(argument.type.syntax(options: syntaxOptions)).transferFromGodot(unsafePointer: args[\(index)]!)"
                }
                
                let godotFunction = method.godotFunction(class: self, isGetterSetter: false)
                
                ".\(godotFunction.callSyntax(withParameters: parameters))"
                
                if method.returnValue != nil {
                    ".transferToGodot(unsafePointer: returnPtr!)"
                }
                
                "}"
                
                let _ = arrayElements.append("\"\(godotFunction.name)\" : (\"\(method.name)\", \(virtualFuncVarName))")
            }
            
            """
            _virtualFunctions = [
            \(raw: arrayElements.isEmpty ? ":" : arrayElements.joined(separator: ",\n"))
            ]
            """
            
            if !isRootClass {
                """
                for (key, value) in super.virtualFunctions() {
                    _virtualFunctions![key] = value
                }
                """
            }
            
            "return _virtualFunctions!"
        }
    }
    
    private func classHeader() -> String {
        var header = String()
        if isRootClass {
            header += "@GodotRootClass\n"
        } else if isRefCountedRootClass {
            header += "@GodotRefCountedRootClass\n"
        } else if isRefcounted {
            header += "@GodotRefCountedClass\n"
        } else {
            header += "@GodotClass\n"
        }
        
        header += "open class \(identifier)"
        if let superclass = inherits {
            header += ": \(superclass.syntax())"
        }
        return header
    }
    
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        var propertiesWithMethod = [(property: Property, getter: Method, setter: Method?)]()
        var getterSetterMethods = Set<Method>()
        
        for property in self.properties {
            var getter: Method?
            var setter: Method?
            
            for method in methods {
                if method.name == property.getter,
                   method.arguments.count <= 1,
                   method.returnValue != nil
                {
                    getter = method
                    getterSetterMethods.insert(method)
                    break
                }
            }
            
            guard let getter else {
                continue
            }
            
            if property.setter != nil {
                for method in methods {
                    if method.name == property.setter,
                       method.arguments.count == 1,
                       method.arguments[0].type == getter.returnValue?.type,
                       method.returnValue?.type == nil
                    {
                        setter = method
                        getterSetterMethods.insert(method)
                        break
                    }
                }
            }
            
            propertiesWithMethod.append((property, getter, setter))
        }
        
        return try CodeBlockItemListSyntax {
            "import GodotExtensionHeaders"
            
            try ClassDeclSyntax("\(raw: classHeader())") {
                for `enum` in enums {
                    try `enum`.declSyntax()
                }
                
                for signal in signals {
                    try signal.declSyntax(class: self)
                }
                
                for constant in constants {
                    constant.declSyntax()
                }
                
                for method in methods {
                    if let binding = method.bindingDeclSyntax() {
                        binding
                    }
                    
                    try method.declSyntax(
                        class: self,
                        isGetterSetter: getterSetterMethods.contains(method)
                    )
                }
                
                for propertyWithMethod in propertiesWithMethod {
                    try propertyWithMethod.property.declSyntax(
                        class: self,
                        getter: propertyWithMethod.getter,
                        setter: propertyWithMethod.setter
                    )
                }
                
                try setVirtualFunctionBindingsSyntax()
            }
        }
    }
}
