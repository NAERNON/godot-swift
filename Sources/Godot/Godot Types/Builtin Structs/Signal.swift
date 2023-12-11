import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Signal {}

extension Signal {
    // MARK: Constructors
    
    public init() {
        self = Self._constructor()
    }
    
    public init(object: Object, signal: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, signal: signal)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_signal(from: self)
    }
    
    // MARK: Methods & variables
    
    public var isNull: Bool {
        _isNull()
    }
    
    public var object: Object? {
        _object()
    }
    
    public var objectID: Int {
        _objectId()
    }
    
    public var name: GodotStringName {
        _name()
    }
    
    @discardableResult
    mutating public func connect(_ callable: Callable, flags: Int = 0) -> Int {
        _connect(callable: callable, flags: flags)
    }
    
    mutating public func disconnect(_ callable: Callable) {
        _disconnect(callable: callable)
    }
    
    public func isConnected(to callable: Callable) -> Bool {
        _isConnected(callable: callable)
    }
    
    public func connections() -> GodotArray<Variant> {
        _connections()
    }
    
    public func emit<each VariantRest : VariantStorableIn>(_ rest: repeat each VariantRest) {
        _emit(repeat each rest)
    }
}

extension Signal: Equatable {
    public static func == (lhs: Signal, rhs: Signal) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}

extension Signal: CustomStringConvertible {
    public var description: String {
        if let object {
            "(\(object), \(name))"
        } else {
            "(nil, \(name))"
        }
    }
}

extension Signal: CustomDebugStringConvertible {
    public var debugDescription: String {
        if let object {
            "Signal(object: \(String(reflecting: object)), \(name))"
        } else {
            "Signal(object: nil, \(name))"
        }
    }
}
