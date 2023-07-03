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
    var apiType: String
    var enums: [GodotEnum]?
    var methods: [Method]?
    
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
            var meta: String?
        }
        
        var ptrSyntax: String {
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
                
                Self._gd_lastDerivedClassName.withUnsafeExtensionPointer { namePtr in
                    extensionObjectPtr = GodotExtension.interface.classdb_construct_object(namePtr)!
                }
                
                self.extensionObjectPtr = extensionObjectPtr
                
                if Self._gd_isCustomClass {
                    Self._gd_className.withUnsafeExtensionPointer { classNamePtr in
                        GodotExtension.interface.object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passRetained(self).toOpaque())
                    }
                }
            }
            
            internal init(extensionObjectPtr: GDExtensionObjectPtr) {
                self.extensionObjectPtr = extensionObjectPtr
            }
            
            public required init(typedVariant: Variant) {
                extensionObjectPtr = typedVariant.uncheckedObjectValue(ofType: Self.self).extensionObjectPtr
            }
            """)
        } else if isRefCountedRootClass {
            DeclSyntax("""
            public required init() {
                super.init()
                _ = initRef()
            }
            
            deinit {
                if unreference() {
                    withUnsafeGodotMutableConstAccessPointer(to: `self`) { __ptr_self in
                        GodotExtension.interface.mem_free(__ptr_self)
                    }
                }
            }
            
            internal override init(extensionObjectPtr: GDExtensionObjectPtr) {
                super.init(extensionObjectPtr: extensionObjectPtr)
                _ = initRef()
            }
            
            public required init(typedVariant: Variant) {
                super.init(typedVariant: typedVariant)
                _ = initRef()
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
            
            public required init(typedVariant: Variant) {
                super.init(typedVariant: typedVariant)
            }
            """)
        }
        
        DeclSyntax("""
        private static let __gd_className: StringName = "\(raw: name.syntax())"
            
        open \(isRootClass ? "" : "override ")class var _gd_className: StringName { __gd_className }
        open \(isRootClass ? "" : "override ")class var _gd_isCustomClass: Bool { false }
        internal \(isRootClass ? "" : "override ")class var _gd_lastDerivedClassName: StringName { __gd_className }
        """).with(\.leadingTrivia, .newlines(2))
        
        DeclSyntax("""
        open \(isRootClass ? "" : "override ")class func _gd_exposeToGodot() {
            guard GodotExtension.classRegister.registerBaseGodotClass(ofType: self) else {
                return
            }
            
            setFunctionBindings()
        }
        """)
    }
    
    @MemberDeclListBuilder
    func instanceBindingsSyntax() throws -> MemberDeclListSyntax {
        DeclSyntax("""
        internal \(isRootClass ? "" : "override ")class func instanceBindingsCallbacks() -> GDExtensionInstanceBindingCallbacks {
            return GDExtensionInstanceBindingCallbacks { token, instance in
                return Unmanaged.passRetained(\(raw: identifier)(extensionObjectPtr: instance!)).toOpaque()
            } free_callback: { token, instance, bindings in
                Unmanaged<\(raw: identifier)>.fromOpaque(instance!).takeRetainedValue().withUnsafeExtensionPointer { __ptr_self in
                    GodotExtension.interface.mem_free(__ptr_self)
                }
            } reference_callback: { token, instance, reference in
                return 1
            }
        }
        """)
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
    
    private func methodSyntax(_ method: Method) throws -> FunctionDeclSyntax {
        if method.isVirtual {
            return try virtualMethodSyntax(method)
        } else {
            return try standardMethodSyntax(method)
        }
    }
    
    private func standardMethodSyntax(_ method: Method) throws -> FunctionDeclSyntax {
        try method.declSyntax(options: .floatAsDouble) {
            if let returnType = method.returnType {
                try returnType.instantiationSyntax(options: .floatAsDouble) { instanceName in
                    try method.argumentsPackPointerAccessSyntax { packName in
                        try returnType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
                            if method.isStatic {
                                DeclSyntax("GodotExtension.interface.object_method_bind_ptrcall(Self.\(raw: method.ptrSyntax), nil, \(raw: packName), \(raw: instancePtr))")
                            } else {
                                try name.pointerAccessSyntax(instanceName: "self", mutability: .constMutablePointer) { selfPtr in
                                    DeclSyntax("GodotExtension.interface.object_method_bind_ptrcall(Self.\(raw: method.ptrSyntax), \(raw: selfPtr), \(raw: packName), \(raw: instancePtr))")
                                }
                            }
                        }
                    }
                }
            } else {
                try method.argumentsPackPointerAccessSyntax { packName in
                    if method.isStatic {
                        DeclSyntax("GodotExtension.interface.object_method_bind_ptrcall(Self.\(raw: method.ptrSyntax), nil, \(raw: packName), nil)")
                    } else {
                        try name.pointerAccessSyntax(instanceName: "self", mutability: .constMutablePointer) { selfPtr in
                            DeclSyntax("GodotExtension.interface.object_method_bind_ptrcall(Self.\(raw: method.ptrSyntax), \(raw: selfPtr), \(raw: packName), nil)")
                        }
                    }
                }
            }
        }
        .addModifier(.init(name: .keyword(isRefCountedRootClass ? .private : method.isStatic ? .public : .open)))
    }
    
    private func virtualMethodSyntax(_ method: Method) throws -> FunctionDeclSyntax {
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
    
    @MemberDeclListBuilder
    func propertiesBindingsSyntax() -> MemberDeclListSyntax {
        if let methods {
            for method in methods where !method.isVirtual {
                DeclSyntax("private static var \(raw: method.ptrSyntax): GDExtensionMethodBindPtr!")
            }
        }
    }
    
    func setFunctionBindingsSyntax() throws -> FunctionDeclSyntax {
        try FunctionDeclSyntax("private static func setFunctionBindings()") {
            if let methods {
                let methodsToSetBindings = methods.filter { !$0.isVirtual }
                if !methodsToSetBindings.isEmpty {
                    DeclSyntax("var _method_name: StringName!")
                    DeclSyntax("withUnsafeGodotAccessPointer(to: _gd_className) { __ptr__class_name in")
                    for method in methodsToSetBindings {
                        ExprSyntax("""
                        _method_name = \(literal: method.name)
                        withUnsafeGodotMutableAccessPointer(to: &_method_name) { __ptr__method_name in
                            \(raw: method.ptrSyntax) = GodotExtension.interface.classdb_get_method_bind(__ptr__class_name, __ptr__method_name, \(literal: method.hash!))
                        }
                        """)
                    }
                    DeclSyntax("}")
                }
            }
        }
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
