import GodotExtensionHeaders

extension Callable {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Callable) {
        self = value
    }
    
    public init(object: Object, method: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, method: method)
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
    
    // MARK: Methods & variables
    
    public func callv(arguments: GodotArray) -> Variant {
        _callv(arguments: arguments)
    }
    
    public var isNull: Bool {
        _isNull()
    }
    
    public var isCustom: Bool {
        _isCustom()
    }
    
    public var isStandard: Bool {
        _isStandard()
    }
    
    public var isValid: Bool {
        _isValid()
    }
    
    public var object: Object? {
        _getObject()
    }
    
    public var objectID: Int {
        _getObjectId()
    }
    
    public var method: GodotStringName {
        _getMethod()
    }
    
    public var boundArgumentsCount: Int {
        _getBoundArgumentsCount()
    }
    
    public func boundArguments() -> GodotArray {
        _getBoundArguments()
    }
    
    mutating public func bindv(arguments: GodotArray) -> Callable {
        _bindv(arguments: arguments)
    }
    
    public func unbind(argcount: Int) -> Callable {
        _unbind(argcount: argcount)
    }
    
    public func call(_ variants: Variant...) -> Variant {
        _call(rest: variants)
    }
    
    public func callDeferred(_ variants: Variant...) {
        _callDeferred(rest: variants)
    }
    
    public func rpc(_ variants: Variant...) {
        _rpc(rest: variants)
    }
    
    public func rpcId(peerId: Int, _ variants: Variant...) {
        _rpcId(peerId: peerId, rest: variants)
    }
    
    public func bind(_ variants: Variant...) -> Callable {
        _bind(rest: variants)
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
