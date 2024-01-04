import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Signal {}

extension Signal {
    // MARK: Constructors
    
    internal init() {
        self = Self._constructor()
    }
    
    internal init(object: Object, signal: GodotStringName) {
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
        _objectID()
    }
    
    public var name: GodotStringName {
        _name()
    }
    
    @discardableResult
    internal mutating func connect(_ callable: Callable, flags: Int = 0) -> Int {
        _connect(callable: callable, flags: flags)
    }
    
    internal mutating func disconnect(_ callable: Callable) {
        _disconnect(callable: callable)
    }
    
    internal func isConnected(to callable: Callable) -> Bool {
        _isConnected(callable: callable)
    }
    
    internal func connections() -> GodotArray<Variant> {
        _connections()
    }
    
    internal func emit<each VariantRest : VariantStorableIn>(_ rest: repeat each VariantRest) {
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
