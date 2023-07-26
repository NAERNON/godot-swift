import Foundation
import GodotExtensionHeaders

extension Callable {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Callable) {
        self = value
    }
    
    public init(object: Object, method: StringName) {
        self = Self._constructor_object_stringname(object: object, method: method)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_callable(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        Self._constructor_callable(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Callable, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Callable) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
}

// MARK: - Extensions

extension Callable: Equatable {
    public static func == (lhs: Callable, rhs: Callable) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Callable: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}
