import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Callable {
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
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_callable(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Callable, rhs: some ConvertibleToVariant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    // MARK: Methods & variables
    
    public func callv(arguments: GodotArray) -> Variant {
        Variant(_callv(arguments: arguments))
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
    
    public func boundArguments() -> GodotArray {
        _boundArguments()
    }
    
    mutating public func bindv(arguments: GodotArray) -> Callable {
        _bindv(arguments: arguments)
    }
    
    public func unbind(argcount: Int) -> Callable {
        _unbind(argcount: argcount)
    }
    
    public func call<each VariantRest : ConvertibleToVariant>(
        _ rest: repeat each VariantRest
    ) -> Variant {
        Variant(_call(repeat each rest))
    }
    
    public func callDeferred<each VariantRest : ConvertibleToVariant>(
        _ rest: repeat each VariantRest
    ) {
        _callDeferred(repeat each rest)
    }
    
    public func rpc<each VariantRest : ConvertibleToVariant>(
        _ rest: repeat each VariantRest
    ) {
        _rpc(repeat each rest)
    }
    
    public func rpcId<each VariantRest : ConvertibleToVariant>(
        peerId: Int,
        _ rest: repeat each VariantRest
    ) {
        _rpcId(peerId: peerId, repeat each rest)
    }
    
    public func bind<each VariantRest : ConvertibleToVariant>(
        _ rest: repeat each VariantRest
    ) -> Callable {
        _bind(repeat each rest)
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
