import GodotExtensionHeaders

extension NodePath {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: NodePath) {
        self = value
    }
    
    public init(string: GodotString) {
        self = Self._constructor_godotstring(from: string)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_nodepath(from: godotExtensionPointer)
    }
        
    // MARK: Copy
    
    internal mutating func _copiedOpaque() -> Self {
        Self._constructor_nodepath(from: self)
    }
        
    // MARK: Operators
    
    public static func == (lhs: NodePath, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: NodePath) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    // MARK: Methods & variables
    
    public var isAbsolute: Bool {
        _isAbsolute()
    }
    
    public var nameCount: Int {
        _getNameCount()
    }
    
    public func name(at index: Int) -> GodotStringName {
        _getName(idx: index)
    }
    
    public var subnameCount: Int {
        _getSubnameCount()
    }
    
    public func subname(at index: Int) -> GodotStringName {
        _getSubname(idx: index)
    }
    
    public func concatenatedNames() -> GodotStringName {
        _getConcatenatedNames()
    }
    
    public func concatenatedSubnames() -> GodotStringName {
        _getConcatenatedSubnames()
    }
    
    public func propertyPath() -> NodePath {
        _getAsPropertyPath()
    }
    
    public var isEmpty: Bool {
        _isEmpty()
    }
}

// MARK: - Extensions

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
