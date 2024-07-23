import GodotExtensionHeaders

public final class NodePath {
    private let storage: Opaque.Storage

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

extension NodePath {
    // MARK: Constructors
    
    public convenience init() {
        self.init(storage: Self.make())
    }
    
    public convenience init(string: GodotString) {
        self.init(storage: Self.make(from: string))
    }
    
    // MARK: Methods & variables
    
    public var isAbsolute: Bool {
        _isAbsolute()
    }
    
    public var nameCount: Int {
        _nameCount()
    }
    
    public func name(at index: Int) -> GodotStringName {
        _name(idx: index)
    }
    
    public var subnameCount: Int {
        _subnameCount()
    }
    
    public func subname(at index: Int) -> GodotStringName {
        _subname(idx: index)
    }
    
    public func concatenatedNames() -> GodotStringName {
        _concatenatedNames()
    }
    
    public func concatenatedSubnames() -> GodotStringName {
        _concatenatedSubnames()
    }
    
    public func propertyPath() -> NodePath {
        _asPropertyPath()
    }
    
    public var isEmpty: Bool {
        _isEmpty()
    }
}

extension NodePath: Equatable {
    public static func == (lhs: NodePath, rhs: NodePath) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension NodePath: Hashable {
    public var hashValue: Int { _hash() }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }
}

extension NodePath: ExpressibleByStringLiteral {
    public convenience init(stringLiteral value: String) {
        self.init(string: GodotString(swiftString: value))
    }
}

extension NodePath: CustomStringConvertible {
    public var description: String {
        String(describing: concatenatedNames())
    }
}

extension NodePath: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NodePath(\"\(String(describing: concatenatedNames()))\")"
    }
}
