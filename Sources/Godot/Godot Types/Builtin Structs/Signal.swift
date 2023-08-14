import GodotExtensionHeaders

@GodotOpaqueBuiltinClass
public struct Signal {
    public init() {
        self = Self._constructor()
    }
    
    public init(_ value: Signal) {
        self = value
    }
    
    public init(object: Object, signal: GodotStringName) {
        self = Self._constructor_object_godotstringname(object: object, signal: signal)
    }
    
    public init(godotExtensionPointer: GDExtensionConstTypePtr) {
        self = Self._ptr_constructor_signal(from: godotExtensionPointer)
    }
    
    // MARK: Copy
    
    internal mutating func withCopiedOpaque() -> Self {
        Self._constructor_signal(from: self)
    }
    
    // MARK: Operators
    
    public static func == (lhs: Signal, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Signal) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    // MARK: Methods & variables
    
    public var isNull: Bool {
        _isNull()
    }
    
    public var object: Object? {
        _getObject()
    }
    
    public var objectID: Int {
        _getObjectId()
    }
    
    public var name: GodotStringName {
        _getName()
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
    
    public func connections() -> GodotArray {
        _getConnections()
    }
    
    public func emit(_ variants: Variant...) {
        _emit(rest: variants)
    }
}

// MARK: - Extensions

extension Signal: Equatable {
    public static func == (lhs: Signal, rhs: Signal) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
}
