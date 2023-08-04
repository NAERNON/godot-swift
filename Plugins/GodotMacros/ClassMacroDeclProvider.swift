import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

/// A type used to retreive class decls.
struct ClassMacroDeclProvider {
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
    
    init(
        classDecl: ClassDeclSyntax,
        classType: ClassType
    ) {
        self.classDecl = classDecl
        self.classType = classType
        self.superclassName = nil
        self.exposeToGodotCustomDecl = nil
    }
    
    init(
        customClassDecl: ClassDeclSyntax,
        superclassName: String,
        @CodeBlockItemListBuilder exposeToGodotCustomDecl: @escaping () -> CodeBlockItemListSyntax
    ) {
        self.classDecl = customClassDecl
        self.classType = .custom
        self.superclassName = superclassName
        self.exposeToGodotCustomDecl = exposeToGodotCustomDecl
    }
    
    var classIdentifier: TokenSyntax {
        classDecl.identifier
    }
    
    private var overrideKeyword: String {
        classType == .root ? "" : "override"
    }
    
    func decls() throws -> [DeclSyntax] {
        let decls: [DeclSyntax?] = try [
            properties(),
            staticProperties(),
            initializers(),
            deinitializer(),
            instanceBindingCallbacks(),
            exposeToGodot(),
            helpers()
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
        internal var isInstantiatedByGodot = false
        """
    }
    
    private func staticProperties() -> DeclSyntax {
        let className = classIdentifier.description.trimmingCharacters(in: .whitespacesAndNewlines)
        
        switch classType {
        case .root, .refCountedRoot, .refCounted, .standard:
            return """
            private static let _gd_staticClassName: StringName = \(literal: className)
            open \(raw: overrideKeyword) class var _gd_className: StringName { _gd_staticClassName }
            internal \(raw: overrideKeyword) class var _gd_lastDerivedClassName: StringName { _gd_staticClassName }
            open \(raw: overrideKeyword) class var _gd_isCustomClass: Bool { false }
            """
        case .custom:
            return """
            private static let _gd_staticClassName: StringName = \(literal: className)
            open \(raw: overrideKeyword) class var _gd_className: StringName { _gd_staticClassName }
            open \(raw: overrideKeyword) class var _gd_isCustomClass: Bool { true }
            """
        }
    }
    
    private func initializers() -> DeclSyntax? {
        switch classType {
        case .root:
            """
            public required init() {
                var extensionObjectPtr: GDExtensionObjectPtr!
            
                Self._gd_lastDerivedClassName.withUnsafeRawPointer { namePtr in
                    extensionObjectPtr = gdextension_interface_classdb_construct_object(namePtr)!
                }
                
                self.extensionObjectPtr = extensionObjectPtr
                
                if Self._gd_isCustomClass {
                    Self._gd_className.withUnsafeRawPointer { classNamePtr in
                        gdextension_interface_object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            
                if let refCounted = self as? RefCounted {
                    withUnsafePointer(to: Self.instanceBindingsCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), callbacksPtr)
                    }
            
                    if !Self._gd_isCustomClass {
                        refCounted.initRef()
                    }
                } else {
                    withUnsafePointer(to: Self.instanceBindingsCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passRetained(self).toOpaque(), callbacksPtr)
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
            """
        case .refCountedRoot:
            """
            public required init() {
                super.init()
            }
            
            internal override init(extensionObjectPtr: GDExtensionObjectPtr) {
                super.init(extensionObjectPtr: extensionObjectPtr)
                
                initRef()
            }
            """
        case .standard, .refCounted:
            """
            public required init() {
                super.init()
            }
            
            internal override init(extensionObjectPtr: GDExtensionObjectPtr) {
                super.init(extensionObjectPtr: extensionObjectPtr)
            }
            """
        case .custom: nil
        }
    }
    
    func deinitializer() -> DeclSyntax? {
        guard classType == .refCountedRoot else {
            return nil
        }
        
        return """
        deinit {
            if Self._gd_isCustomClass && isInstantiatedByGodot {
                self.withUnsafeRawPointer { __ptr_self in
                    gdextension_interface_mem_free(__ptr_self)
                }
            } else {
                if unreference() {
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                }
            }
        }
        """
    }
    
    private func instanceBindingCallbacks() throws -> DeclSyntax {
        let signature = "open \(overrideKeyword) class func instanceBindingsCallbacks() -> ClassRegister.InstanceBindingCallbacks"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                ExprSyntax(
                """
                return ClassRegister.InstanceBindingCallbacks { token, instancePtr in
                    let instance = \(classIdentifier)(extensionObjectPtr: instancePtr!)
                    instance.isInstantiatedByGodot = true
                    return Unmanaged.passRetained(instance).toOpaque()
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    return 0
                }
                """
                )
            case .custom:
                ExprSyntax(
                """
                return ClassRegister.InstanceBindingCallbacks { token, instancePtr in
                    return nil
                } free_callback: { token, instancePtr, bindingsPtr in
                    
                } reference_callback: { token, instancePtr, reference in
                    \(classIdentifier)._referenceCallback(instancePtr, reference)
                }
                """
                )
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func exposeToGodot() throws -> DeclSyntax {
        let signature = "open \(overrideKeyword) class func _gd_exposeToGodot()"
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
                    \(classDecl.identifier)._instanceDescriptionForGodot(instancePtr, isValid, out)
                }
                createInstanceFunction: { _ in
                    \(classDecl.identifier)._makeNewInstanceManagedByGodot()
                }
                freeInstanceFunction: { _, instancePtr in
                    \(classDecl.identifier)._freeInstanceManagedByGodot(instancePtr)
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
    
    private func helpers() -> DeclSyntax? {
        switch classType {
        case .root:
            return """
            public class func _instanceDescriptionForGodot(
                _ instancePtr: GDExtensionClassInstancePtr?,
                _ isValid: UnsafeMutablePointer<GDExtensionBool>?,
                _ out: GDExtensionStringPtr?
            ) {
                guard let instancePtr else { return }
                
                let instance = Unmanaged<Self>.fromOpaque(instancePtr).takeUnretainedValue()
                var godotStringDescription = Godot.String(describing: instance)
                
                isValid?.pointee = 1
                godotStringDescription.consumeByGodot(ontoUnsafePointer: out!)
            }
            
            public class func _makeNewInstanceManagedByGodot() -> UnsafeMutableRawPointer {
                let instance = Self()
                instance.isInstantiatedByGodot = true
                _ = Unmanaged.passRetained(instance)
                
                return instance.extensionObjectPtr
            }
            
            public class func _freeInstanceManagedByGodot(_ instancePtr: UnsafeMutableRawPointer?) {
                guard let instancePtr else { return }
            
                Unmanaged<Self>.fromOpaque(instancePtr).release()
            }
            
            public class func _referenceCallback(
                _ instancePtr: UnsafeMutableRawPointer?,
                _ reference: UInt8
            ) -> UInt8 {
                return 0
            }
            """
        case .refCountedRoot:
            return """
            public override class func _referenceCallback(
                _ instancePtr: UnsafeMutableRawPointer?,
                _ reference: UInt8
            ) -> UInt8 {
                guard let instancePtr else { return 0 }
                
                let unmanaged = Unmanaged<Self>.fromOpaque(instancePtr)
                let instance = unmanaged.takeUnretainedValue()
                
                if !instance.isInstantiatedByGodot && instance.getReferenceCount() == 0 { return 0 }
            
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
