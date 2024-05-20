import GodotExtensionHeaders

@BuiltinOpaque
public struct RID {
    internal mutating func makeUniqueIfSharedOpaque() {
        guard !isKnownUniquelyReferenced(&opaque) else {
            return
        }
        
        self = Self.make(from: self)
    }
}

extension RID {
    // MARK: Constructors
    
    public init() {
        self = Self.make()
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
