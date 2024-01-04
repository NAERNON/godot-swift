import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Callable {}

extension Callable {
    // MARK: Constructors
    
    internal init() {
        self = Self._constructor()
    }
    
    internal init(object: Object, method: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, method: method)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_callable(from: self)
    }
    
    // MARK: Methods & variables
    
    internal func callv<Value>(arguments: GodotArray<Value>) -> Variant
    where Value : VariantStorable {
        Variant(storage: _callv(arguments: arguments))
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
        _object()
    }
    
    public var objectID: Int {
        _objectID()
    }
    
    public var method: GodotStringName {
        _method()
    }
    
    public var boundArgumentsCount: Int {
        _boundArgumentsCount()
    }
    
    public func boundArguments() -> GodotArray<Variant> {
        _boundArguments()
    }
    
    internal mutating func bindv<Value>(arguments: GodotArray<Value>) -> Callable
    where Value : VariantStorable {
        _bindv(arguments: arguments)
    }
    
    internal func unbind(argcount: Int) -> Callable {
        _unbind(argcount: argcount)
    }
    
    internal func call<each VariantRest : VariantStorableIn>(
        _ rest: repeat each VariantRest
    ) -> Variant {
        Variant(storage: _call(repeat each rest))
    }
    
    internal func callDeferred<each VariantRest : VariantStorableIn>(
        _ rest: repeat each VariantRest
    ) {
        _callDeferred(repeat each rest)
    }
    
    public func rpc<each VariantRest : VariantStorableIn>(
        _ rest: repeat each VariantRest
    ) {
        _rpc(repeat each rest)
    }
    
    public func rpcID<each VariantRest : VariantStorableIn>(
        peerID: Int,
        _ rest: repeat each VariantRest
    ) {
        _rpcID(peerID: peerID, repeat each rest)
    }
    
    internal func bind<each VariantRest : VariantStorableIn>(
        _ rest: repeat each VariantRest
    ) -> Callable {
        _bind(repeat each rest)
    }
}

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

extension Callable: CustomStringConvertible {
    public var description: String {
        if let object {
            "(\(object), \(method))"
        } else {
            "(nil, \(method))"
        }
    }
}

extension Callable: CustomDebugStringConvertible {
    public var debugDescription: String {
        if let object {
            "Callable(object: \(String(reflecting: object)), \(method))"
        } else {
            "Callable(object: nil, \(method))"
        }
    }
}
