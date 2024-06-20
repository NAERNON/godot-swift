import GodotExtensionHeaders

public final class RID {
    private var storage: Opaque.Storage

    internal init(storage: consuming Opaque.Storage) {
        self.storage = storage
    }

    func withUnsafeOpaqueBufferPointer<Result>(
        _ body: (UnsafeRawBufferPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeRawBufferPointer(body)
    }

    func withUnsafeMutableOpaqueBufferPointer<Result>(
        _ body: (UnsafeMutableRawBufferPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeMutableRawBufferPointer(body)
    }

    func withUnsafeOpaquePointer<Result>(
        _ body: (UnsafeRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeRawPointer(body)
    }

    func withUnsafeMutableOpaquePointer<Result>(
        _ body: (UnsafeMutableRawPointer) throws -> Result
    ) rethrows -> Result {
        try storage.withUnsafeMutableRawPointer(body)
    }
}

extension RID {
    // MARK: Constructors
    
    public convenience init() {
        self.init(storage: Self.make())
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
