import GodotExtensionHeaders

public final class Signal {
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

extension Signal {
    // MARK: Constructors
    
    internal convenience init() {
        self.init(storage: Self.make())
    }
    
    internal convenience init(object: Object, signal: GodotStringName) {
        self.init(storage: Self.make(object: object, signal: signal))
    }
    
    // MARK: Methods & variables
    
    public var isNull: Bool {
        _isNull()
    }
    
    public var object: Object? {
        _object()
    }
    
    public var objectID: Int { // TODO: Use ObjectID ?
        _objectID()
    }
    
    public var name: GodotStringName {
        _name()
    }
    
    @discardableResult
    internal func connect(
        _ callable: Callable,
        flags: Int = 0
    ) -> Int {
        _connect(callable: callable, flags: flags)
    }
    
    internal func disconnect(_ callable: Callable) {
        _disconnect(callable: callable)
    }
    
    internal func isConnected(to callable: Callable) -> Bool {
        _isConnected(callable: callable)
    }
    
    internal func connections() -> GodotArray<Variant> {
        _connections()
    }
    
    internal func emit<each VariantRest : Variant.Storable>(
        _ rest: repeat each VariantRest
    ) {
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
