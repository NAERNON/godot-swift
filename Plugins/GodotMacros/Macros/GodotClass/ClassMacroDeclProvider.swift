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
    let isClassVisible: Bool
    let exposedClassName: String
    
    private init(
        classDecl: ClassDeclSyntax,
        classType: ClassType,
        superclassName: String?,
        isFinal: Bool,
        exposeToGodotCustomDecl: (() -> CodeBlockItemListSyntax)?,
        context: Context,
        isClassVisible: Bool,
        exposedClassName: String
    ) {
        self.classDecl = classDecl
        self.classType = classType
        self.superclassName = superclassName
        self.isFinal = isFinal
        self.exposeToGodotCustomDecl = exposeToGodotCustomDecl
        self.context = context
        self.isClassVisible = isClassVisible
        self.exposedClassName = exposedClassName
    }
    
    static func baseClass(
        classDecl: ClassDeclSyntax,
        classType: ClassType,
        in context: Context
    ) -> ClassMacroDeclProvider<Context> {
        .init(
            classDecl: classDecl,
            classType: classType,
            superclassName: nil,
            isFinal: false,
            exposeToGodotCustomDecl: nil,
            context: context,
            isClassVisible: true,
            exposedClassName: removeBackticks(classDecl.name.trimmedDescription)
        )
    }
    
    static func customClass(
        customClassDecl: ClassDeclSyntax,
        superclassName: String,
        isFinal: Bool,
        in context: Context,
        isClassVisible: Bool,
        exposedClassName: String,
        @CodeBlockItemListBuilder exposeToGodotCustomDecl: @escaping () -> CodeBlockItemListSyntax
    ) -> ClassMacroDeclProvider<Context> {
        .init(
            classDecl: customClassDecl,
            classType: .custom,
            superclassName: superclassName,
            isFinal: isFinal,
            exposeToGodotCustomDecl: exposeToGodotCustomDecl,
            context: context,
            isClassVisible: isClassVisible,
            exposedClassName: exposedClassName
        )
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
        switch classType {
        case .root, .refCounted, .standard, .refCountedRoot:
            return """
            private static let _$exposedClassName: GodotStringName = \(literal: exposedClassName)
            private static var _$isClassRegistered: Bool = false
            
            open \(raw: overrideKeyword) class var _exposedClassType: Object.Type { Object.self }
            open \(raw: overrideKeyword) class var _exposedClassName: GodotStringName { _$exposedClassName }
            open \(raw: overrideKeyword) class var _isClassRegistered: Bool { _$isClassRegistered }
            
            internal \(raw: overrideKeyword) class var lastDerivedExposedClassName: GodotStringName { _$exposedClassName }
            """
        case .custom:
            return """
            private static let _$exposedClassName: Godot.GodotStringName = \(literal: exposedClassName)
            private static var _$isClassRegistered: Bool = false
            
            \(raw: openKeyword) \(raw: overrideKeyword) class var _exposedClassType: Godot.Object.Type { \(className).self }
            \(raw: openKeyword) \(raw: overrideKeyword) class var _exposedClassName: Godot.GodotStringName { _$exposedClassName }
            \(raw: openKeyword) \(raw: overrideKeyword) class var _isClassRegistered: Bool { _$isClassRegistered }
            """
        }
    }
    
    private func initAndDeinit() -> DeclSyntax? {
        switch classType {
        case .root:
            """
            public required init() {
                extensionObjectPtr = Self.makeNewExtensionObjectPtr()
                
                assert(
                    Self.self._exposedClassType == Self.self,
                    "Trying to instantiate class \\(Self.self) but the class is not marked '@Exposable'."
                )
                assert(
                    Self.self._isClassRegistered,
                    "Trying to instantiate class \\(Self.self) but the class is not registered."
                )
                
                if self is ExposableObject {
                    Self._exposedClassName.withGodotUnsafeRawPointer { classNamePtr in
                        GodotExtension.Interface.objectSetInstance(extensionObjectPtr, classNamePtr, Unmanaged.passUnretained(self).toOpaque())
                    }
                }
            
                if self is RefCounted {
                    withUnsafePointer(to: Self._instanceBindingCallbacks()) { callbacksPtr in
                        GodotExtension.Interface.objectSetInstanceBinding(extensionObjectPtr, GodotExtension.token, Unmanaged.passUnretained(self).toOpaque(), callbacksPtr)
                    }
                } else {
                    withUnsafePointer(to: Self._instanceBindingCallbacks()) { callbacksPtr in
                        GodotExtension.Interface.objectSetInstanceBinding(extensionObjectPtr, GodotExtension.token, Unmanaged.passRetained(self).toOpaque(), callbacksPtr)
                    }
                }
            }
            
            internal init(objectPointer: UnsafeMutableRawPointer) {
                self.extensionObjectPtr = objectPointer
            }
            
            private class func makeNewExtensionObjectPtr() -> UnsafeMutableRawPointer {
                Self.lastDerivedExposedClassName.withGodotUnsafeRawPointer { namePtr in
                    GodotExtension.Interface.classdbConstructObject(namePtr)!
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
            
                if !(self is ExposableObject) {
                    _ = __reference()
                }
            }
            
            internal override init(objectPointer: UnsafeMutableRawPointer) {
                super.init(objectPointer: objectPointer)
            
                _ = __reference()
            }
            
            deinit {
                if self is ExposableObject {
                    if !isPointerFreed {
                        GodotExtension.Interface.memFree(extensionObjectPtr)
                    }
                } else if __unreference() {
                    GodotExtension.Interface.memFree(extensionObjectPtr)
                }
            }
            
            public override consuming func copyToGodot(
                unsafePointer destinationUnsafePointer: UnsafeMutableRawPointer
            ) {
                GodotExtension.Interface.refSetObject(destinationUnsafePointer, extensionObjectPtr)
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
        let signature = "\(openKeyword) \(overrideKeyword) class func _instanceBindingCallbacks() -> Godot.GodotInstanceBindingCallbacks"
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
        let signature = "\(openKeyword) \(overrideKeyword) class func _retrieveObjectInstance(fromUnsafePointer pointer: UnsafeMutableRawPointer) -> Godot.Object"
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
        let signature = "\(openKeyword) \(overrideKeyword) class func _registerClassToGodot()"
        let functionDecl = try FunctionDeclSyntax("\(raw: signature)") {
            "if _$isClassRegistered { return }"
            
            "_$isClassRegistered = true"
            if classType != .root {
                "super._registerClassToGodot()"
            }
            
            switch classType {
            case .root, .refCountedRoot, .refCounted, .standard:
                """
                GodotExtension.classRegistrar.registerBaseGodotClass(ofType: \(className).self)
                """
            case .custom:
                """
                let classBinding = Godot.GodotExtension.classRegistrar.registerCustomClass(
                    ofType: \(className).self,
                    superclassType: \(raw: superclassName ?? "").self,
                    isVisible: \(literal: isClassVisible)
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
