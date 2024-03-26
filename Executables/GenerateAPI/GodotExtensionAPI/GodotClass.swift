import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

private enum Accessibility {
    case `public`
    case `internal`
    case `private`
    
    var keyword: Keyword {
        switch self {
        case .public:
            .public
        case .internal:
            .internal
        case .private:
            .private
        }
    }
}

/// A representation of a Godot class.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotClass: Decodable {
    var name: GodotType
    var isRefcounted: Bool
    var isInstantiable: Bool
    var inherits: GodotType?
    var apiType: APIType
    var enums: [GodotEnum]?
    var methods: [Method]?
    var properties: [Property]?
    var signals: [Signal]?
    var constants: [Constant]?
    
    // MARK: APIType
    
    enum APIType: String, Decodable, Equatable {
        case core
        case servers
        case scene
        case editor
        case level
    }
    
    // MARK: Method
    
    struct Method: Decodable, GodotFunction {
        var name: String
        var isConst: Bool
        var isVararg: Bool
        var isStatic: Bool
        var isVirtual: Bool
        var hash: Int?
        var returnValue: ReturnValue?
        var arguments: [GodotArgument]?
        
        var returnType: GodotType? { returnValue?.type }
        
        private var prefersStandardCall: Bool?
        private var usesStandardCall: Bool { isVararg == true || prefersStandardCall == true }
        
        var usesVariantGeneric: Bool { !isVirtual }
        var convertsAllParameterToVariant: Bool { usesStandardCall }
        
        func nonVararg() -> Method {
            guard isVararg else {
                return self
            }
            
            var new = self
            new.prefersStandardCall = true
            new.isVararg = false
            return new
        }
        
        // MARK: Return value
        
        struct ReturnValue: Decodable {
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
        
        var ptrIdentifier: String {
            "__method_binding_\(name)"
        }
        
        func bindCall(selfExpression: String, argsExpression: String, returnExpression: String) -> ExprSyntax {
            if usesStandardCall {
                """
                    GodotExtension.Interface.objectMethodBindCall(
                    Self.\(raw: ptrIdentifier),
                    \(raw: selfExpression),
                    \(raw: argsExpression),
                    \(raw: argumentsCountSyntax(type: Int64.self)),
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
    }
    
    // MARK: Property
    
    struct Property: Decodable {
        var type: GodotType
        var name: String
        var getter: String
        var setter: String?
        var index: Int?
        
        func getterMethod(in methods: [Method]?) -> Method? {
            methods?.first(where: methodIsAssociatedGetter)
        }
        
        func methodIsAssociatedGetter(_ method: Method) -> Bool {
            method.name == getter && method.returnType != nil
        }
        
        func setterMethod(in methods: [Method]?, forGetter getter: Method) -> Method? {
            methods?.first(where: { methodIsAssociatedSetter($0, forGetter: getter) })
        }
        
        func methodIsAssociatedSetter(_ method: Method, forGetter getter: Method) -> Bool {
            method.name == setter
            && method.arguments?.count == 1
            && method.arguments?.first?.type == getter.returnType
            && method.returnType == nil
        }
    }
    
    // MARK: Signal
    
    struct Signal: Decodable {
        let name: String
        let arguments: [GodotArgument]?
    }
    
    // MARK: Constant
    
    struct Constant: Decodable {
        let name: String
        let value: Int
        
        var isNotification: Bool {
            name.starts(with: "NOTIFICATION")
        }
    }
    
    // MARK: - Syntax
    
    /// A Boolean value indicating whether the class
    /// is the root of the hierarchy tree.
    var isRootClass: Bool {
        name == "Object"
    }
    
    /// A Boolean value indicating whether the class
    /// is the root of the ref counted classes.
    var isRefCountedRootClass: Bool {
        name == "RefCounted"
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
    
    var methodPrefixIfPrivate: String {
        "__" // Not "_" because might clash with virtual funcs
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
    func signalsSyntax() throws -> MemberBlockItemListSyntax {
        if let signals {
            for signal in signals {
                try signalSyntax(signal)
            }
        }
    }
    
    @MemberBlockItemListBuilder
    func signalSyntax(_ signal: Signal) throws -> MemberBlockItemListSyntax {
        let signalInspector = SignalInspector(
            functionName: signal.name.translated(from: .snake, to: .camel),
            signalCName: signal.name,
            arguments: (signal.arguments ?? []).map { (
                $0.name.translated(from: .snake, to: .camel),
                $0.type.syntax(options: syntaxOptions)
            ) },
            isPublic: true
        )
        
        try signalInspector.signalInputDeclSyntax()
        try signalInspector.signalFunctionDeclSyntax()
        signalInspector.emitterDeclSyntax()
    }
    
    @MemberBlockItemListBuilder
    func constantsSyntax() -> MemberBlockItemListSyntax {
        if let constants {
            for constant in constants {
                let propertyName = constant.name.lowercased().translated(from: .snake, to: .camel)
                
                if constant.isNotification {
                    "public static let \(raw: propertyName): Notification = .init(rawValue: \(literal: constant.value))"
                } else {
                    "public static let \(raw: propertyName): Int = \(literal: constant.value)"
                }
            }
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
        if method.isVirtual {
            try virtualMethodSyntax(method)
        } else {
            try standardMethodSyntax(method)
            
            // TODO: Remove this non vararg version. There is a bug in the Swift beta with parameter packs.
            if method.isVararg {
                try standardMethodSyntax(method.nonVararg(), generateBinding: false)
            }
        }
    }
    
    private func methodAccessibility(_ method: Method) -> Accessibility {
        if isRootClass {
            return .internal
        } else if isRefCountedRootClass {
            return .private
        } else if method.isStatic {
            return .public
        } else {
            for property in properties ?? [] {
                if let getter = property.getterMethod(in: methods) {
                    if getter.name == method.name {
                        return .private
                    }
                    
                    if let setter = property.setterMethod(in: methods, forGetter: getter) {
                        if setter.name == method.name {
                            return .private
                        }
                    }
                }
            }
            
            return .public
        }
    }
    
    private func methodPrefix(_ method: Method) -> String {
        switch methodAccessibility(method) {
        case .public:
            ""
        case .internal, .private:
            methodPrefixIfPrivate
        }
    }
    
    @MemberBlockItemListBuilder
    private func standardMethodSyntax(
        _ method: Method,
        generateBinding: Bool = true
    ) throws -> MemberBlockItemListSyntax {
        if generateBinding {
            """
            internal static var \(raw: method.ptrIdentifier): GDExtensionMethodBindPtr = {
                _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
                GodotStringName(swiftStaticString: \(literal: method.name)).withGodotUnsafeRawPointer { __ptr__method_name in
                return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, \(literal: method.hash!))!
                }
                }
            }()
            """
        }
        
        try method
            .withNamePrefixed(by: methodPrefix(method))
            .translated(typeName: name.syntax())
            .declSyntax(
            options: syntaxOptions,
            keywords: methodAccessibility(method).keyword
        ) {
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(options: syntaxOptions) { instancePtr in
                    try method.translated.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                        if method.isStatic {
                            method.bindCall(
                                selfExpression: "nil",
                                argsExpression: packName,
                                returnExpression: instancePtr
                            )
                        } else {
                            try name.pointerAccessSyntax(
                                instanceName: "self",
                                options: syntaxOptions,
                                mutability: .mutable
                            ) { selfPtr in
                                method.bindCall(
                                    selfExpression: selfPtr,
                                    argsExpression: packName,
                                    returnExpression: instancePtr
                                )
                            }
                        }
                    }
                }
            } else {
                try method.translated.argumentsPackPointerAccessSyntax(options: syntaxOptions) { packName in
                    if method.isStatic {
                        method.bindCall(
                            selfExpression: "nil",
                            argsExpression: packName,
                            returnExpression: "nil"
                        )
                    } else {
                        try name.pointerAccessSyntax(
                            instanceName: "self",
                            options: syntaxOptions,
                            mutability: .mutable
                        ) { selfPtr in
                            method.bindCall(
                                selfExpression: selfPtr,
                                argsExpression: packName,
                                returnExpression: "nil"
                            )
                        }
                    }
                }
            }
        }
    }
    
    @MemberBlockItemListBuilder
    private func virtualMethodSyntax(_ method: Method) throws -> MemberBlockItemListSyntax {
        try method.translated.declSyntax(options: syntaxOptions, keywords: .open) {
            if let returnType = method.returnType {
                if returnType.isGodotClass || returnType.isOptional {
                    "nil"
                } else if returnType == .variant {
                    "Variant()"
                } else if returnType.isEnum {
                    "\(raw: returnType.syntax(options: syntaxOptions))(rawValue: 0)!"
                } else if returnType.isPointer {
                    "fatalError(\"No default value provided for pointers.\")"
                } else {
                    "\(raw: returnType.syntax(options: syntaxOptions))()"
                }
            }
        }
    }
    
    private func propertiesGetterCount(for properties: [Property]) -> [String : Int] {
        // Counts the number of properties that have the same getter
        var propertiesGetter = [String : Int]()
        
        for property in properties {
            if let count = propertiesGetter[property.getter] {
                propertiesGetter[property.getter] = count + 1
            } else {
                propertiesGetter[property.getter] = 1
            }
        }
        
        return propertiesGetter
    }
    
    @MemberBlockItemListBuilder
    func propertiesSyntax() throws -> MemberBlockItemListSyntax {
        if let properties {
            let propertiesGetter = propertiesGetterCount(for: properties)
            
            for property in properties {
                if let syntax = try propertySyntax(
                    property,
                    hasSameGetterAsOtherProperty: propertiesGetter[property.getter]! > 1
                ) {
                    syntax
                }
            }
        }
    }
    
    private func propertySyntax(
        _ property: Property,
        hasSameGetterAsOtherProperty: Bool
    ) throws -> VariableDeclSyntax? {
        guard let getter = property.getterMethod(in: methods),
              let type = getter.returnType else {
            return nil
        }
        
        let typeSyntax = type.syntax(options: syntaxOptions)
        let setter = property.setterMethod(in: methods, forGetter: getter)
        
        var propertyName: String
        if hasSameGetterAsOtherProperty {
            propertyName = property.name
        } else if property.getter.starts(with: "get_") {
            propertyName = String(property.getter.dropFirst(4))
        } else {
            propertyName = property.getter
        }
        
        propertyName = backticksKeyword(propertyName.translated(from: .snake, to: .camel))
        if propertyName == "description" {
            propertyName = "godotDescription"
        }
        
        let getterParameter: String?
        if let index = property.index,
           let getterInput = getter.arguments?.first {
            if getterInput.type.isEnum {
                getterParameter = ".init(rawValue: \(index))!"
            } else {
                getterParameter = String(index)
            }
        } else {
            getterParameter = nil
        }
        
        return try VariableDeclSyntax("public var \(raw: propertyName): \(raw: typeSyntax)") {
            let getterSyntax = getter.withNamePrefixed(by: methodPrefixIfPrivate)
                .translated.callSyntax(withParameters: [getterParameter].compactMap { $0 })
            
            """
            get {
                \(getterSyntax)
            }
            """
            
            if let setter {
                let setterSyntax = setter.withNamePrefixed(by: methodPrefixIfPrivate)
                    .translated.callSyntax(withParameters: ["newValue"])
                
                """
                set {
                    \(setterSyntax)
                }
                """
            }
        }
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
            
            if let methods {
                let methodsToRegister = methods.filter(\.isVirtual)
                
                for method in methodsToRegister {
                    let arguments = method.arguments ?? []
                    
                    let virtualFuncVarName = "\(method.name)_call"
                    
                    """
                    let \(raw: virtualFuncVarName): GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
                    guard let instancePtr\(raw: arguments.isEmpty ? "" : ", let args") else { return }
                    Unmanaged<\(raw: name.syntax())>.fromOpaque(instancePtr).takeUnretainedValue()
                    """
                    
                    let parameters: [String] = arguments.enumerated().map { (index, argument) in
                        "\(argument.type.syntax(options: syntaxOptions)).fromGodotUnsafePointer(args[\(index)]!)"
                    }
                    
                    ".\(method.translated.callSyntax(withParameters: parameters))"
                    
                    if method.returnValue != nil {
                        ".copyToGodot(unsafePointer: returnPtr!)"
                    }
                    
                    "}"
                    
                    let _ = arrayElements.append("\"\(method.translated.name)\" : (\"\(method.name)\", \(virtualFuncVarName))")
                }
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
}

extension GodotClass: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> CodeBlockItemListSyntax {
        "import GodotExtensionHeaders"
        
        try ClassDeclSyntax("\(raw: classHeader())") {
            try enumSyntax()
            try signalsSyntax()
            constantsSyntax()
            try methodsSyntax()
            try propertiesSyntax()
            try setVirtualFunctionBindingsSyntax()
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
}
