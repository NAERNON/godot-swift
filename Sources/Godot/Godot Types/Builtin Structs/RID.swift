import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct RID {}

extension RID {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_rid(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_rid(from: self)
    }
    
    // MARK: Methods & variables
    
    public var isValid: Bool {
        _isValid()
    }
    
    public var id: Int {
        _id()
    }
}

extension RID: Equatable {
    public static func == (lhs: RID, rhs: RID) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension RID: Comparable {
    public static func < (lhs: RID, rhs: RID) -> Bool {
        Self._operatorLess(lhs, rhs)
    }
    
    public static func <= (lhs: RID, rhs: RID) -> Bool {
        Self._operatorLessEqual(lhs, rhs)
    }
    
    public static func > (lhs: RID, rhs: RID) -> Bool {
        Self._operatorGreater(lhs, rhs)
    }
    
    public static func >= (lhs: RID, rhs: RID) -> Bool {
        Self._operatorGreaterEqual(lhs, rhs)
    }
}

extension RID: CustomStringConvertible {
    public var description: String {
        String(describing: id)
    }
}

extension RID: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RID(\(String(describing: id)))"
    }
}
