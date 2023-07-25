import SwiftSyntax
import SwiftSyntaxBuilder

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
    
    @MemberDeclListBuilder
    func initializerSyntax() throws -> MemberDeclListSyntax {
        if isRootClass {
            DeclSyntax("""
            internal let extensionObjectPtr: GDExtensionObjectPtr
            
            public required init() {
                var extensionObjectPtr: GDExtensionObjectPtr!
                
                Self._gd_lastDerivedClassName.withUnsafeRawPointer { namePtr in
                    extensionObjectPtr = gdextension_interface_classdb_construct_object(namePtr)!
                }
                
                self.extensionObjectPtr = extensionObjectPtr
                
                if self is RefCounted {
                    withUnsafePointer(to: Self.instanceBindingsCallbacks()) { selfPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), selfPtr)
                    }
                }
                
                if Self._gd_isCustomClass {
                    Self._gd_className.withUnsafeRawPointer { classNamePtr in
                        gdextension_interface_object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            }
            
            internal init(extensionObjectPtr: GDExtensionObjectPtr) {
                self.extensionObjectPtr = extensionObjectPtr
            }
            
            public func withUnsafeRawPointer<Result>(
                _ body: (UnsafeMutableRawPointer) throws -> Result
            ) rethrows -> Result {
                try body(extensionObjectPtr)
            }
            """)
        } else {
            DeclSyntax("""
            public required init() {
                super.init()
            }
            
            internal override init(extensionObjectPtr: GDExtensionObjectPtr) {
                super.init(extensionObjectPtr: extensionObjectPtr)
            }
            """)
            
            if isRefCountedRootClass {
                DeclSyntax("""
                deinit {
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                }
                """)
            }
        }
        
        DeclSyntax("""
        private static let __gd_className: StringName = "\(raw: name.syntax())"
            
        open \(isRootClass ? "" : "override ")class var _gd_className: StringName { __gd_className }
        open \(isRootClass ? "" : "override ")class var _gd_isCustomClass: Bool { false }
        internal \(isRootClass ? "" : "override ")class var _gd_lastDerivedClassName: StringName { __gd_className }
        """).with(\.leadingTrivia, .newlines(2))
        
        DeclSyntax("""
        open \(isRootClass ? "" : "override ")class func _gd_exposeToGodot() {
            GodotExtension.classRegister.registerBaseGodotClass(ofType: self)
        }
        """)
    }
    
    @MemberDeclListBuilder
    func instanceBindingsSyntax() throws -> MemberDeclListSyntax {
        if isRootClass {
            DeclSyntax("internal var preventNextReference = false")
        }
        
        DeclSyntax("""
        internal \(isRootClass ? "" : "override ")class func instanceBindingsCallbacks() -> GDExtensionInstanceBindingCallbacks {
            return GDExtensionInstanceBindingCallbacks { token, instance in
                return Unmanaged.passRetained(\(raw: identifier)(extensionObjectPtr: instance!)).toOpaque()
            } free_callback: { token, instance, bindings in
                Unmanaged<\(raw: identifier)>.fromOpaque(instance!).takeRetainedValue().withUnsafeRawPointer { __ptr_self in
                    gdextension_interface_mem_free(__ptr_self)
                }
            } reference_callback: { token, instance, reference in
                if reference != 0 {
                    let objectInstance = Unmanaged<\(raw: identifier)>.fromOpaque(instance!).takeUnretainedValue()
                    if objectInstance.preventNextReference {
                        objectInstance.preventNextReference = false
                    } else {
                        _ = Unmanaged<\(raw: identifier)>.fromOpaque(instance!).retain()
                    }
                } else {
                    Unmanaged<\(raw: identifier)>.fromOpaque(instance!).release()
                }
                return 1
            }
        }
        """)
    }
    
    @MemberDeclListBuilder
    func godotExpositionSyntax() -> MemberDeclListSyntax {
        if isRootClass {
            DeclSyntax("""
            public class func _instanceDescriptionForGodot(
                _ instancePtr: GDExtensionClassInstancePtr?,
                _ isValid: UnsafeMutablePointer<GDExtensionBool>?,
                _ out: GDExtensionStringPtr?
            ) {
                guard let instancePtr else { return }
                
                let instance = Unmanaged<Self>.fromOpaque(instancePtr).takeUnretainedValue()
                let description = "<" + Swift.String(godotStringName: Self._gd_className) + "#" + Swift.String(instance.getInstanceId()) + ">"
                let godotStringDescription = Godot.String(swiftString: description)
                
                isValid?.pointee = 1
                godotStringDescription.consumeByGodot(ontoUnsafePointer: out!)
            }
            
            public class func _makeNewInstanceManagedByGodot() -> UnsafeMutableRawPointer {
                let instance = Self ()
                _ = Unmanaged.passRetained(instance)
                
                if let instance = instance as? RefCounted {
                    _ = instance.initRef()
                    instance.preventNextReference = true
                }
                
                return instance.extensionObjectPtr
            }
            
            public class func _freeInstanceManagedByGodot(_ instancePtr: UnsafeMutableRawPointer) {
                Unmanaged<Self>.fromOpaque(instancePtr).release()
            }
            """)
        }
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
    
    @MemberDeclListBuilder
    private func standardMethodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        DeclSyntax("""
        private static var \(raw: method.ptrIdentifier): GDExtensionMethodBindPtr = {
            _gd_className.withUnsafeRawPointer { __ptr__class_name in
            StringName(swiftString: \(literal: method.name)).withUnsafeRawPointer { __ptr__method_name in
            return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, \(literal: method.hash!))!
            }
            }
        }()
        """)
        
        try method.declSyntax(options: .floatAsDouble) {
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(options: .floatAsDouble) { instanceType, instanceName in
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
        .addModifier(.init(name: .keyword(isRefCountedRootClass ? .internal : method.isStatic ? .public : .open)))
    }
    
    @MemberDeclListBuilder
    private func virtualMethodSyntax(_ method: Method) throws -> MemberDeclListSyntax {
        try method.declSyntax(options: .floatAsDouble) {
            if let returnType = method.returnType {
                if returnType.isGodotClass
                    || returnType == .variant
                    || returnType.isOptional {
                    DeclSyntax("nil")
                } else if returnType.isEnum {
                    DeclSyntax("\(raw: returnType.syntax(options: .floatAsDouble))(rawValue: 0)!")
                } else if returnType.isPointer {
                    DeclSyntax("fatalError(\"No default value provided for pointers.\")")
                } else {
                    DeclSyntax("\(raw: returnType.syntax(options: .floatAsDouble))()")
                }
            }
        }
        .addModifier(.init(name: .keyword(.open)))
    }
        
    func setVirtualFunctionBindingsSyntax() throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("internal \(isRootClass ? "" : "override ")class func setVirtualFunctionCalls(_ body: (StringName, GDExtensionClassCallVirtual) -> Void)") {
            if !isRootClass {
                DeclSyntax("super.setVirtualFunctionCalls(body)")
            }
            
            if let methods {
                let virtualMethods = methods.filter(\.isVirtual)
                if !virtualMethods.isEmpty {
                    ExprSyntax("var _method_name: StringName!")
                    
                    for method in virtualMethods {
                        ExprSyntax("_method_name = \(literal: method.name)")
                        DeclSyntax("""
                        body(_method_name, { instancePtr, args, returnPtr in
                        guard let instancePtr, let args else { return }
                        let instance = Unmanaged<\(raw: name.syntax())>.fromOpaque(instancePtr).takeUnretainedValue()
                        let \(raw: method.returnValue == nil ? "_" : "returnValue") = instance
                        """)
                        
                        let parameters: [String] = method.arguments?.enumerated().map { (index, argument) in
                            if argument.type.isGodotClass {
                                return "functionObjectArgument(fromPointer: args[\(index)])"
                            } else {
                                return "functionArgument(fromPointer: args[\(index)])"
                            }
                        } ?? []
                        
                        DeclSyntax(".\(raw: method.callSyntax(withParameters: parameters))")
                        
                        if method.returnValue != nil {
                            DeclSyntax("setReturnValue(returnValue, toPointer: returnPtr)")
                        }
                        
                        DeclSyntax("})")
                    }
                }
            }
        }
    }
}
