import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Callable {}

extension Callable {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(object: Object, method: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, method: method)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_callable(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_callable(from: self)
    }
    
    // MARK: Methods & variables
    
    public func callv<Value>(arguments: GodotArray<Value>) -> Variant
    where Value : VariantEncodable & VariantDecodable {
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
        _objectId()
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
    
    mutating public func bindv<Value>(arguments: GodotArray<Value>) -> Callable
    where Value : VariantEncodable & VariantDecodable {
        _bindv(arguments: arguments)
    }
    
    public func unbind(argcount: Int) -> Callable {
        _unbind(argcount: argcount)
    }
    
    public func call<each VariantRest : VariantEncodable>(
        _ rest: repeat each VariantRest
    ) -> Variant {
        Variant(storage: _call(repeat each rest))
    }
    
    public func callDeferred<each VariantRest : VariantEncodable>(
        _ rest: repeat each VariantRest
    ) {
        _callDeferred(repeat each rest)
    }
    
    public func rpc<each VariantRest : VariantEncodable>(
        _ rest: repeat each VariantRest
    ) {
        _rpc(repeat each rest)
    }
    
    public func rpcId<each VariantRest : VariantEncodable>(
        peerId: Int,
        _ rest: repeat each VariantRest
    ) {
        _rpcId(peerId: peerId, repeat each rest)
    }
    
    public func bind<each VariantRest : VariantEncodable>(
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
