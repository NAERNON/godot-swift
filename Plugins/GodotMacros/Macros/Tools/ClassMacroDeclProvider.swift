import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

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
            private static let _$staticClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var _$className: GodotStringName { _$staticClassName }
            internal \(raw: overrideKeyword) class var _$lastDerivedClassName: GodotStringName { _$staticClassName }
            open \(raw: overrideKeyword) class var _$isCustomGodotClass: Bool { false }
            """
        case .refCountedRoot:
            return """
            private static let _$staticClassName: GodotStringName = \(literal: className)
            open \(raw: overrideKeyword) class var _$className: GodotStringName { _$staticClassName }
            internal \(raw: overrideKeyword) class var _$lastDerivedClassName: GodotStringName { _$staticClassName }
            open \(raw: overrideKeyword) class var _$isCustomGodotClass: Bool { false }
            """
        case .custom:
            return """
            private static let _$staticClassName: Godot.GodotStringName = \(literal: className)
            \(raw: openKeyword) \(raw: overrideKeyword) class var _$className: Godot.GodotStringName { _$staticClassName }
            \(raw: openKeyword) \(raw: overrideKeyword) class var _$isCustomGodotClass: Bool { true }
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
                
                postInit()
            }
            
            public required init(objectPointer: GodotObjectPointer) {
                self.extensionObjectPtr = objectPointer
            }
            
            private class func makeNewExtensionObjectPtr() -> GodotObjectPointer {
                Self._$lastDerivedClassName.withUnsafeRawPointer { namePtr in
                    gdextension_interface_classdb_construct_object(namePtr)!
                }
            }
            
            private func postInit() {
                if Self._$isCustomGodotClass {
                    Self._$className.withUnsafeRawPointer { classNamePtr in
                        gdextension_interface_object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            
                if self is RefCounted {
                    withUnsafePointer(to: Self._$instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), callbacksPtr)
                    }
                } else {
                    withUnsafePointer(to: Self._$instanceBindingCallbacks()) { callbacksPtr in
                        gdextension_interface_object_set_instance_binding(extensionObjectPtr, GodotExtension.token, Unmanaged.passRetained(self).toOpaque(), callbacksPtr)
                    }
                }
            }
            
            public func withUnsafeRawPointer<Result>(
                _ body: (GDExtensionObjectPtr) throws -> Result
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
            
            public required init(objectPointer: GodotObjectPointer) {
                super.init(objectPointer: objectPointer)
            }
            
            deinit {
                guard !isGodotMemoryFreed else { return }
                
                if Self._$isCustomGodotClass && isRefInitialized {
                    isGodotMemoryFreed = true
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                } else if __unreference() {
                    isGodotMemoryFreed = true
                    self.withUnsafeRawPointer { __ptr_self in
                        gdextension_interface_mem_free(__ptr_self)
                    }
                }
            }
            
            private var isRefInitialized = false
            private var isGodotMemoryFreed = false
            
            func initGodotRef() {
                guard !isRefInitialized else {
                    return
                }
                
                isRefInitialized = true
                _ = __initRef()
            }
            """
        default: nil
        }
    }
    
    private func instanceBindingCallbacks() throws -> DeclSyntax {
        let signature = "\(openKeyword) \(overrideKeyword) class func _$instanceBindingCallbacks() -> Godot.GodotInstanceBindingCallbacks"
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
                    \(className).__referenceCallback(instancePtr, reference)
                }
                """
            }
        }
        
        return DeclSyntax(functionDecl)
    }
    
    private func exposeToGodot() throws -> DeclSyntax {
        let signature = "\(openKeyword) \(overrideKeyword) class func _$exposeToGodot()"
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
                    \(classDecl.name)._$instanceGodotDescription(instancePtr, isValid, out)
                }
                createInstanceFunction: { _ in
                    \(classDecl.name)._$makeNewInstanceManagedByGodot()
                }
                freeInstanceFunction: { _, instancePtr in
                    \(classDecl.name)._$freeInstanceManagedByGodot(instancePtr)
                }
                
                guard classBinding != nil else { return }
                """
                
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
            public class func _$instanceGodotDescription(
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
            
            public class func _$makeNewInstanceManagedByGodot() -> UnsafeMutableRawPointer {
                let extensionObjectPtr = Self.makeNewExtensionObjectPtr()
                
                let instance = Self.init(objectPointer: extensionObjectPtr)
                instance.postInit()
                
                if let instance = instance as? RefCounted {
                    _ = Unmanaged.passRetained(instance)
                }
                
                return instance.withUnsafeRawPointer { $0 }
            }
            
            public class func _$freeInstanceManagedByGodot(_ instancePtr: UnsafeMutableRawPointer?) {
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
            public override class func _$freeInstanceManagedByGodot(_ instancePtr: UnsafeMutableRawPointer?) {
                guard let instancePtr else { return }
                
                let instance = Unmanaged<Self>.fromOpaque(instancePtr).takeRetainedValue()
                instance.isGodotMemoryFreed = true
            }
            
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
