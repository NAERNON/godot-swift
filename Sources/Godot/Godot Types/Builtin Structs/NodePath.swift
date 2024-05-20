import GodotExtensionHeaders

@BuiltinOpaque
public struct NodePath {
    internal mutating func makeUniqueIfSharedOpaque() {
        guard !isKnownUniquelyReferenced(&opaque) else {
            return
        }
        
        self = Self.make(from: self)
    }
}

extension NodePath {
    // MARK: Constructors
    
    public init() {
        self = Self.make()
    }
    
    public init(string: GodotString) {
        self = Self.make(from: string)
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
    public init(stringLiteral value: String) {
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
