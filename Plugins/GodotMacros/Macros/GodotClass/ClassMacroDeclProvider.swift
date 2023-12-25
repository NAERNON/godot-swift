import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation
import Utils

/// A type used to retrieve class decls.
struct ClassMacroDeclProvider<Context> where Context : MacroExpansionContext {
    enum ClassType {
        case root
        case refCountedRoot
        case refCounted
        case standard
        case custom
    }
    
    let classDecl: ClassDeclSyntax
    let classType: ClassType
    let superclassName: String?
    let isFinal: Bool
    let exposeToGodotCustomDecl: (() throws -> CodeBlockItemListSyntax)?
    let context: Context
    
    init(
        classDecl: ClassDeclSyntax,
        classType: ClassType,
        in context: Context
    ) {
        self.classDecl = classDecl
        self.classType = classType
        self.superclassName = nil
        self.isFinal = false
        self.exposeToGodotCustomDecl = nil
        self.context = context
    }
    
    init(
        customClassDecl: ClassDeclSyntax,
        superclassName: String,
        isFinal: Bool,
        in context: Context,
        @CodeBlockItemListBuilder exposeToGodotCustomDecl: @escaping () -> CodeBlockItemListSyntax
    ) {
        self.classDecl = customClassDecl
        self.classType = .custom
        self.superclassName = superclassName
        self.isFinal = isFinal
        self.exposeToGodotCustomDecl = exposeToGodotCustomDecl
        self.context = context
    }
    
    var className: TokenSyntax {
        classDecl.name
    }
    
    private var overrideKeyword: String {
        classType == .root ? "" : "override"
    }
    
    private var openKeyword: String {
        isFinal ? "public" : "open"
    }
    
    func decls() throws -> [DeclSyntax] {
        let decls: [DeclSyntax?] = try [
            properties(),
            staticProperties(),
            initAndDeinit(),
            instanceBindingCallbacks(),
            retrieveObjectInstance(),
            exposeToGodot()
        ]
        
        return decls.compactMap { $0 }
    }
    
    // MARK: Decls
    
    private func properties() -> DeclSyntax? {
        guard classType == .root else {
            return nil
        }
        
        return """
        internal let extensionObjectPtr: UnsafeMutableRawPointer
        """
    }
    
    private func staticProperties() -> DeclSyntax {
        let className = removeBackticks(className.trimmedDescription)
        
        switch classType {
        case .root, .refCounted, .standard:
            return """
            private static let _$exposedClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var exposedClassName: GodotStringName { _$exposedClassName }
            internal \(raw: overrideKeyword) class var lastDerivedExposedClassName: GodotStringName { _$exposedClassName }
            """
        case .refCountedRoot:
            return """
            private static let _$exposedClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var exposedClassName: GodotStringName { _$exposedClassName }
            internal \(raw: overrideKeyword) class var lastDerivedExposedClassName: GodotStringName { _$exposedClassName }
            """
        case .custom:
            return """
            private static let _$exposedClassName: Godot.GodotStringName = \(literal: className)
            \(raw: openKeyword) \(raw: overrideKeyword) class var exposedClassName: Godot.GodotStringName { _$exposedClassName }
            """
        }
    }
    
    private func initAndDeinit() -> DeclSyntax? {
        switch classType {
        case .root:
            """
            public required init() {
                extensionObjectPtr = Self.makeNewExtensionObjectPtr()
                
                assert(GodotExtension.classRegistrar.classNameIsEquivalentToType(classType: Self.self),
                    "Trying to instantiate a class not marked '@Exposable'")
                
                if self is Exposable {
                    Self.exposedClassName.withGodotUnsafeRawPointer { classNamePtr in
                        gdextension_interface_object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            
                if self is RefCounted {
                    withUnsafePointer(to: Self.instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), callbacksPtr)
                    }
                } else {
                    withUnsafePointer(to: Self.instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passRetained(self).toOpaque(), callbacksPtr)
                    }
                }
            }
            
            internal init(objectPointer: UnsafeMutableRawPointer) {
                self.extensionObjectPtr = objectPointer
            }
            
            private class func makeNewExtensionObjectPtr() -> UnsafeMutableRawPointer {
                Self.lastDerivedExposedClassName.withGodotUnsafeRawPointer { namePtr in
                    gdextension_interface_classdb_construct_object(namePtr)!
                }
            }
            
            public consuming func copyToGodot(
                unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
            ) {
                destinationUnsafePointer.storeBytes(of: extensionObjectPtr, as: UnsafeMutableRawPointer.self)
            }
            """
        case .refCountedRoot:
            """
            internal var isPointerFreed = false
            
            public required init() {
                super.init()
            
                if !(self is Exposable) {
                    _ = __reference()
                }
            }
            
            internal override init(objectPointer: UnsafeMutableRawPointer) {
                super.init(objectPointer: objectPointer)
            
                _ = __reference()
            }
            
            deinit {
                if self is Exposable {
                    if !isPointerFreed {
                        gdextension_interface_mem_free(extensionObjectPtr)
                    }
                } else if __unreference() {
                    gdextension_interface_mem_free(extensionObjectPtr)
                }
            }
            
            public override consuming func copyToGodot(
                unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
            ) {
                gdextension_interface_ref_set_object(destinationUnsafePointer, extensionObjectPtr)
            }
            """
        case .refCounted, .standard:
            """
            public required init() {
                super.init()
            }
            
            internal override init(objectPointer: UnsafeMutableRawPointer) {
                super.init(objectPointer: objectPointer)
            }
            """
        default: nil
        }
    }
    
    private func instanceBindingCallbacks() throws -> DeclSyntax {
        let signature = "\(openKeyword) \(overrideKeyword) class func instanceBindingCallbacks() -> Godot.GodotInstanceBindingCallbacks"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                """
                return GodotInstanceBindingCallbacks { token, instancePtr in
                    instancePtr
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    return 0
                }
                """
            case .custom:
                """
                return Godot.GodotInstanceBindingCallbacks { token, instancePtr in
                    return nil
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    Godot.GodotExtension.referenceCallback(
                        of: \(className).self,
                        instancePtr: instancePtr,
                        reference: reference
                    )
                }
                """
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func retrieveObjectInstance() throws -> DeclSyntax {
        let signature = "\(openKeyword) \(overrideKeyword) class func retrieveObjectInstance(fromUnsafePointer pointer: UnsafeMutableRawPointer) -> Godot.Object"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                """
                \(classDecl.name)(objectPointer: pointer)
                """
            case .custom:
                """
                Unmanaged<\(classDecl.name)>.fromOpaque(pointer).takeUnretainedValue()
                """
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func exposeToGodot() throws -> DeclSyntax {
        let signature = "\(openKeyword) \(overrideKeyword) class func registerClassToGodot()"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                """
                GodotExtension.classRegistrar.registerBaseGodotClass(ofType: self)
                """
            case .custom:
                """
                let classBinding = Godot.GodotExtension.classRegistrar.registerCustomClass(
                    ofType: self,
                    superclassType: \(raw: superclassName ?? "").self
                ) { instancePtr, isValid, out in
                    Godot.GodotExtension.description(
                        of: \(className).self,
                        instancePtr: instancePtr,
                        isValid: isValid,
                        out: out
                    )
                }
                createInstanceFunction: { _ in
                    Godot.GodotExtension.makeNewInstanceManagedByGodot(
                        of: \(className).self
                    )
                }
                freeInstanceFunction: { _, instancePtr in
                    Godot.GodotExtension.freeInstanceManagedByGodot(
                        of: \(className).self,
                        instancePtr: instancePtr
                    )
                }
                
                guard classBinding != nil else {
                    return
                }
                """
                
                if let exposeToGodotCustomDecl {
                    try exposeToGodotCustomDecl()
                }
            }
        }
        
        return DeclSyntax(functionDecl)
    }
}
