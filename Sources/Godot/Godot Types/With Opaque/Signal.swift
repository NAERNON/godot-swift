import Foundation
import GodotExtensionHeaders

extension Signal {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Signal) {
        self = value
    }
    
    public init(object: Object, signal: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, signal: signal)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_signal(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        Self._constructor_signal(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Signal, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Signal) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension Signal: Equatable {
    public static func == (lhs: Signal, rhs: Signal) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}
