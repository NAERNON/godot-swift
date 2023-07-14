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
                
                Self._gd_lastDerivedClassName.withUnsafeRawPointer { namePtr in
                    extensionObjectPtr = GodotExtension.interface.classdb_construct_object(namePtr)!
                }
                
                self.extensionObjectPtr = extensionObjectPtr
                
                if self is RefCounted {
                    withUnsafePointer(to: Self.instanceBindingsCallbacks()) { selfPtr in
                        GodotExtension.interface.object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), selfPtr)
                    }
                }
                
                if Self._gd_isCustomClass {
                    Self._gd_className.withUnsafeRawPointer { classNamePtr in
                        GodotExtension.interface.object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            }
            
            internal init(extensionObjectPtr: GDExtensionObjectPtr) {
                self.extensionObjectPtr = extensionObjectPtr
            }
            
            public class func fromMatchingTypeVariant(_ variant: Variant) -> Self {
                var newValue: Self!
                let instanceOwner = UnsafeMutablePointer<UnsafeMutableRawPointer>.allocate(capacity: 1)
                
                variant.withUnsafeRawPointer { extensionTypePtr in
                Variant.toTypeConstructor_object(UnsafeMutableRawPointer(mutating: instanceOwner), extensionTypePtr)
                
                let finalPtr = withUnsafePointer(to: Self.instanceBindingsCallbacks()) { bindingsPtr in
                    GodotExtension.interface.object_get_instance_binding(
                        instanceOwner.pointee, GodotExtension.token, bindingsPtr
                    )
                }
                
                newValue = Unmanaged<Self>.fromOpaque(finalPtr!).takeUnretainedValue()
                }
                
                instanceOwner.deinitialize(count: 1)
                instanceOwner.deallocate()
                
                return newValue
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
                        GodotExtension.interface.mem_free(__ptr_self)
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
            guard GodotExtension.classRegister.registerBaseGodotClass(ofType: self) else {
                return
            }
            
            setFunctionBindings()
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
                    GodotExtension.interface.mem_free(__ptr_self)
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
    func makeInstanceSyntax() -> MemberDeclListSyntax {
        if isRootClass {
            DeclSyntax("""
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
                try returnType.instantiationSyntax(options: .floatAsDouble) { instanceType, instanceName in
                    try method.argumentsPackPointerAccessSyntax { packName in
                        try instanceType.pointerAccessSyntax(instanceName: instanceName, mutability: .mutable) { instancePtr in
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
        .addModifier(.init(name: .keyword(isRefCountedRootClass ? .internal : method.isStatic ? .public : .open)))
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
                    DeclSyntax("_gd_className.withUnsafeRawPointer { __ptr__class_name in")
                    for method in methodsToSetBindings {
                        ExprSyntax("""
                        _method_name = \(literal: method.name)
                        _method_name.withUnsafeRawPointer { __ptr__method_name in
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
