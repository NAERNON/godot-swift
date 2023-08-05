import Foundation
import GodotExtensionHeaders

extension StringName {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: Swift.String) {
        self = Self._constructor_string(from: String(swiftString: swiftString))
    }
    
    public init(_ value: StringName) {
        self = value
    }
    
    public init<Subject>(describing instance: Subject) {
        self.init(swiftString: .init(describing: instance))
    }
    
    public init(string: String) {
        self = Self._constructor_string(from: string)
    }
    
    public init(godotExtensionPointer: GDExtensionConstStringNamePtr) {
        self = Self._ptr_constructor_stringname(from: godotExtensionPointer)
    }
    
    public static func className(forObjectPointer instancePtr: GDExtensionObjectPtr) -> StringName? {
        let className = Self._constructor()
        let classNameRetreived = className.withUnsafeRawPointer { ptr in
            gdextension_interface_object_get_class_name(instancePtr, GodotExtension.libraryPtr, ptr) != 0
        }
        
        guard classNameRetreived else {
            return nil
        }
        
        return className
    }
    
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        Self._constructor_stringname(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: StringName, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: StringName) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func == (lhs: StringName, rhs: String) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

// MARK: - Extensions

extension StringName: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: Swift.String) {
        self.init(swiftString: value)
    }
}

extension StringName: Equatable {
    public static func == (lhs: StringName, rhs: StringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension StringName: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension StringName: Codable {
    public func encode(to encoder: Encoder) throws {
        try Swift.String(godotStringName: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try Swift.String(from: decoder))
    }
}
