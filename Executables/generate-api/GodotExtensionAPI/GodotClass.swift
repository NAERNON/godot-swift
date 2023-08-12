import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

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
    
    // MARK: - Syntax
    
    /// A Boolean value indicating whether the class
    /// is the root of the hierachy tree.
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
        .floatAsDouble
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
    func methodsSyntax() throws -> MemberDeclListSyntax {
        if let methods {
            for method in methods {
                try methodSyntax(method)
                    .with(\.trailingTrivia, .newlines(2))
            }
        }
    }
    
    private func methodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        if method.isVirtual {
            return try virtualMethodSyntax(method)
        } else {
            return try standardMethodSyntax(method)
        }
    }
    
    private func methodControlAccessKeyword(_ method: Method) -> Keyword {
        if isRefCountedRootClass {
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
            
            return .open
        }
    }
    
    @MemberDeclListBuilder
    private func standardMethodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        DeclSyntax("""
        private static var \(raw: method.ptrIdentifier): GDExtensionMethodBindPtr = {
            __staticClassName.withUnsafeRawPointer { __ptr__class_name in
            GodotStringName(swiftString: \(literal: method.name)).withUnsafeRawPointer { __ptr__method_name in
            return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, \(literal: method.hash!))!
            }
            }
        }()
        """)
        
        try method.declSyntax(options: syntaxOptions) {
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(options: syntaxOptions) { instanceType, instanceName in
                    try method.argumentsPackPointerAccessSyntax { packName in
                        try instanceType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                            if method.isStatic {
                                DeclSyntax("gdextension_interface_object_method_bind_ptrcall(Self.\(raw: method.ptrIdentifier), nil, \(raw: packName), \(raw: instancePtr))")
                            } else {
                                try name.pointerAccessSyntax(instanceName: "self", mutability: .constMutablePointer) { selfPtr in
                                    DeclSyntax("gdextension_interface_object_method_bind_ptrcall(Self.\(raw: method.ptrIdentifier), \(raw: selfPtr), \(raw: packName), \(raw: instancePtr))")
                                }
                            }
                        }
                    }
                }
            } else {
                try method.argumentsPackPointerAccessSyntax { packName in
                    if method.isStatic {
                        DeclSyntax("gdextension_interface_object_method_bind_ptrcall(Self.\(raw: method.ptrIdentifier), nil, \(raw: packName), nil)")
                    } else {
                        try name.pointerAccessSyntax(instanceName: "self", mutability: .constMutablePointer) { selfPtr in
                            DeclSyntax("gdextension_interface_object_method_bind_ptrcall(Self.\(raw: method.ptrIdentifier), \(raw: selfPtr), \(raw: packName), nil)")
                        }
                    }
                }
            }
        }
        .addModifier(.init(name: .keyword(methodControlAccessKeyword(method))))
    }
    
    @MemberDeclListBuilder
    private func virtualMethodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        try method.declSyntax(options: syntaxOptions) {
            if let returnType = method.returnType {
                if returnType.isGodotClass
                    || returnType == .variant
                    || returnType.isOptional {
                    DeclSyntax("nil")
                } else if returnType.isEnum {
                    DeclSyntax("\(raw: returnType.syntax(options: syntaxOptions))(rawValue: 0)!")
                } else if returnType.isPointer {
                    DeclSyntax("fatalError(\"No default value provided for pointers.\")")
                } else {
                    DeclSyntax("\(raw: returnType.syntax(options: syntaxOptions))()")
                }
            }
        }
        .addModifier(.init(name: .keyword(.open)))
    }
    
    @MemberDeclListBuilder
    func propertiesSyntax() throws -> MemberDeclListSyntax {
        if let properties {
            for property in properties {
                if let syntax = try propertySyntax(property) {
                    syntax.with(\.trailingTrivia, .newlines(2))
                }
            }
        }
    }
    
    private func propertySyntax(_ property: Property) throws -> VariableDeclSyntax? {
        let propertyName = CodeLanguage.swift.protectNameIfKeyword(
            for: NamingConvention.snake.convert(property.name, to: .camel)
        )
        
        guard let getter = property.getterMethod(in: methods),
              let type = getter.returnType else {
            return nil
        }
        
        let typeSyntax = type.optional(type.isGodotClass).syntax(options: syntaxOptions)
        let setter = property.setterMethod(in: methods, forGetter: getter)
        
        let getterParameter: String?
        if let index = property.index,
           let getterInput = getter.arguments?.first {
            if getterInput.type.isEnum {
                getterParameter = ".init(rawValue: \(index))!"
            } else {
                getterParameter = String(describing: index)
            }
        } else {
            getterParameter = nil
        }
        
        return try VariableDeclSyntax("open var \(raw: propertyName): \(raw: typeSyntax)") {
            DeclSyntax(
            """
            get {
                \(raw: getter.callSyntax(withParameters: [getterParameter].compactMap { $0 }))
            }
            """
            )
            
            if let setter {
                DeclSyntax(
                """
                set {
                    \(raw: setter.callSyntax(withParameters: ["newValue"]))
                }
                """
                )
            }
        }
    }
        
    func setVirtualFunctionBindingsSyntax() throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("internal \(isRootClass ? "" : "override ")class func setVirtualFunctionCalls(_ body: (GodotStringName, GDExtensionClassCallVirtual) -> Void)") {
            if !isRootClass {
                DeclSyntax("super.setVirtualFunctionCalls(body)")
            }
            
            if let methods {
                let virtualMethods = methods.filter(\.isVirtual)
                if !virtualMethods.isEmpty {
                    ExprSyntax("var _method_name: GodotStringName!") // TODO: Don't declare the method name here but directly in the body
                    
                    for method in virtualMethods {
                        let arguments = method.arguments ?? []
                        
                        ExprSyntax("_method_name = \(literal: method.name)")
                        DeclSyntax("""
                        body(_method_name, { instancePtr, args, returnPtr in
                        guard let instancePtr\(raw: arguments.isEmpty ? "" : ", let args") else { return }
                        let instance = Unmanaged<\(raw: name.syntax())>.fromOpaque(instancePtr).takeUnretainedValue()
                        var \(raw: method.returnValue == nil ? "_" : "returnValue") = instance
                        """)
                        
                        let parameters: [String] = arguments.enumerated().map { (index, argument) in
                            argument.type.instantiationFromPointerSyntax(pointerName: "args[\(index)]!", options: syntaxOptions)
                        }
                        
                        DeclSyntax(".\(raw: method.callSyntax(withParameters: parameters))")
                        
                        if let returnType = method.returnValue?.type {
                            DeclSyntax("\(raw: returnType.sendToPointerSyntax(instanceName: "returnValue", pointerName: "returnPtr!", options: syntaxOptions))")
                        }
                        
                        DeclSyntax("})")
                    }
                }
            }
        }
    }
}
