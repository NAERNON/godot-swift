import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

/// A type used to retreive class decls.
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
        self.exposeToGodotCustomDecl = nil
        self.context = context
    }
    
    init(
        customClassDecl: ClassDeclSyntax,
        superclassName: String,
        in context: Context,
        @CodeBlockItemListBuilder exposeToGodotCustomDecl: @escaping () -> CodeBlockItemListSyntax
    ) {
        self.classDecl = customClassDecl
        self.classType = .custom
        self.superclassName = superclassName
        self.exposeToGodotCustomDecl = exposeToGodotCustomDecl
        self.context = context
    }
    
    var className: TokenSyntax {
        classDecl.name
    }
    
    private var overrideKeyword: String {
        classType == .root ? "" : "override"
    }
    
    func decls() throws -> [DeclSyntax] {
        let decls: [DeclSyntax?] = try [
            properties(),
            staticProperties(),
            initAndDeinit(),
            instanceBindingCallbacks(),
            classFuncs(),
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
        private let extensionObjectPtr: GDExtensionObjectPtr
        """
    }
    
    private func staticProperties() -> DeclSyntax {
        let className = className.trimmedDescription
        
        switch classType {
        case .root, .refCounted, .standard:
            return """
            private static let __staticClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var __className: GodotStringName { __staticClassName }
            internal \(raw: overrideKeyword) class var __lastDerivedClassName: GodotStringName { __staticClassName }
            open \(raw: overrideKeyword) class var __isCustomGodotClass: Bool { false }
            """
        case .refCountedRoot:
            return """
            private static let __staticClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var __className: GodotStringName { __staticClassName }
            internal \(raw: overrideKeyword) class var __lastDerivedClassName: GodotStringName { __staticClassName }
            open \(raw: overrideKeyword) class var __isCustomGodotClass: Bool { false }
            """
        case .custom:
            return """
            private static let __staticClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var __className: GodotStringName { __staticClassName }
            open \(raw: overrideKeyword) class var __isCustomGodotClass: Bool { true }
            """
        }
    }
    
    private func initAndDeinit() -> DeclSyntax? {
        switch classType {
        case .root:
            """
            public required init() {
                extensionObjectPtr = Self.makeNewExtensionObjectPtr()
                
                postInit()
            }
            
            public required init(extensionObjectPtr: GodotObjectPointer) {
                self.extensionObjectPtr = extensionObjectPtr
            }
            
            private class func makeNewExtensionObjectPtr() -> GodotObjectPointer {
                Self.__lastDerivedClassName.withUnsafeRawPointer { namePtr in
                    gdextension_interface_classdb_construct_object(namePtr)!
                }
            }
            
            private func postInit() {
                if Self.__isCustomGodotClass {
                    Self.__className.withUnsafeRawPointer { classNamePtr in
                        gdextension_interface_object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            
                if self is RefCounted {
                    withUnsafePointer(to: Self.__instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), callbacksPtr)
                    }
                } else {
                    withUnsafePointer(to: Self.__instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passRetained(self).toOpaque(), callbacksPtr)
                    }
                }
            }
            
            public func withUnsafeRawPointer<Result>(
                _ body: (UnsafeMutableRawPointer) throws -> Result
            ) rethrows -> Result {
                try body(extensionObjectPtr)
            }
            """
        case .refCountedRoot:
            """
            public required init() {
                super.init()
            
                initGodotRef()
            }
            
            public required init(extensionObjectPtr: GodotObjectPointer) {
                super.init(extensionObjectPtr: extensionObjectPtr)
            }
            
            deinit {
                if Self.__isCustomGodotClass && isRefInitialized {
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                } else if unreference() {
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                }
            }
            
            private var isRefInitialized = false
            
            func initGodotRef() {
                guard !isRefInitialized else {
                    return
                }
                
                isRefInitialized = true
                initRef()
            }
            """
        default: nil
        }
    }
    
    private func instanceBindingCallbacks() throws -> DeclSyntax {
        let signature = "open \(overrideKeyword) class func __instanceBindingCallbacks() -> GodotInstanceBindingCallbacks"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                ExprSyntax(
                """
                return GodotInstanceBindingCallbacks { token, instancePtr in
                    instancePtr
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    return 0
                }
                """
                )
            case .custom:
                ExprSyntax(
                """
                return GodotInstanceBindingCallbacks { token, instancePtr in
                    return nil
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    \(className).__referenceCallback(instancePtr, reference)
                }
                """
                )
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func exposeToGodot() throws -> DeclSyntax {
        let signature = "open \(overrideKeyword) class func __exposeToGodot()"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                ExprSyntax(
                """
                GodotExtension.classRegister.registerBaseGodotClass(ofType: self)
                """
                )
            case .custom:
                ExprSyntax(
                """
                let isClassRegistered = GodotExtension.classRegister.registerCustomClass(
                    ofType: self,
                    superclassType: \(raw: superclassName ?? "").self
                ) { instancePtr, isValid, out in
                    \(classDecl.name).__instanceGodotDescription(instancePtr, isValid, out)
                }
                createInstanceFunction: { _ in
                    \(classDecl.name).__makeNewInstanceManagedByGodot()
                }
                freeInstanceFunction: { _, instancePtr in
                    \(classDecl.name).__freeInstanceManagedByGodot(instancePtr)
                }
                
                guard isClassRegistered else { return }
                """
                )
                
                if let exposeToGodotCustomDecl {
                    try exposeToGodotCustomDecl()
                }
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func classFuncs() -> DeclSyntax? {
        switch classType {
        case .root:
            return """
            public class func __instanceGodotDescription(
                _ instancePtr: GDExtensionClassInstancePtr?,
                _ isValid: UnsafeMutablePointer<GDExtensionBool>?,
                _ out: GDExtensionStringPtr?
            ) {
                guard let instancePtr else { return }
                
                let instance = Unmanaged<Self>.fromOpaque(instancePtr).takeUnretainedValue()
                var godotStringDescription = GodotString(describing: instance)
                
                isValid?.pointee = 1
                godotStringDescription.consumeByGodot(ontoUnsafePointer: out!)
            }
            
            public class func __makeNewInstanceManagedByGodot() -> UnsafeMutableRawPointer {
                let extensionObjectPtr = Self.makeNewExtensionObjectPtr()
                
                let instance = Self.init(extensionObjectPtr: extensionObjectPtr)
                instance.postInit()
                
                if let instance = instance as? RefCounted {
                    _ = Unmanaged.passRetained(instance)
                }
                
                return instance.withUnsafeRawPointer { $0 }
            }
            
            public class func __freeInstanceManagedByGodot(_ instancePtr: UnsafeMutableRawPointer?) {
                guard let instancePtr else { return }
                
                Unmanaged<Self>.fromOpaque(instancePtr).release()
            }
            
            public class func __referenceCallback(
                _ instancePtr: UnsafeMutableRawPointer?,
                _ reference: UInt8
            ) -> UInt8 {
                return 1
            }
            """
        case .refCountedRoot:
            return """
            public override class func __referenceCallback(
                _ instancePtr: UnsafeMutableRawPointer?,
                _ reference: UInt8
            ) -> UInt8 {
                guard let instancePtr else { return 0 }
                
                let unmanaged = Unmanaged<Self>.fromOpaque(instancePtr)
                
                if reference == 0 {
                    unmanaged.release()
                } else {
                    _ = unmanaged.retain()
                }
                
                return 0
            }
            """
        default: return nil
        }
    }
}
