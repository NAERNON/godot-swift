import Foundation
import GodotExtensionHeaders

extension GodotStringName {
    public init() {
        self = Self._constructor()
    }
    
    public init(swiftString: String) {
        self = Self._constructor_godotstring(from: GodotString(swiftString: swiftString))
    }
    
    public init(_ value: GodotStringName) {
        self = value
    }
    
    public init<Subject>(describing instance: Subject) {
        self.init(swiftString: .init(describing: instance))
    }
    
    public init(string: GodotString) {
        self = Self._constructor_godotstring(from: string)
    }
    
    public init(godotExtensionPointer: GDExtensionConstStringNamePtr) {
        self = Self._ptr_constructor_godotstringname(from: godotExtensionPointer)
    }
    
    public static func className(forObjectPointer instancePtr: GDExtensionObjectPtr) -> GodotStringName? {
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
        Self._constructor_godotstringname(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: GodotStringName, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: GodotStringName) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func == (lhs: GodotStringName, rhs: GodotString) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

// MARK: - Extensions

extension GodotStringName: ExpressibleByStringLiteral, ExpressibleByStringInterpolation {
    public init(stringLiteral value: String) {
        self.init(swiftString: value)
    }
}

extension GodotStringName: Equatable {
    public static func == (lhs: GodotStringName, rhs: GodotStringName) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension GodotStringName: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension GodotStringName: Codable {
    public func encode(to encoder: Encoder) throws {
        try String(godotStringName: self).encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        self.init(swiftString: try String(from: decoder))
    }
}
