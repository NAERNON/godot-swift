
public struct SignalConnection {
    private(set) weak var sourceObject: Object?
    private(set) weak var destinationObject: Object?
    public let signalName: GodotStringName
    public let errorType: ErrorType
    
    let callable: Callable
    
    init(
        sourceObject: Object,
        destinationObject: Object?,
        signalName: GodotStringName,
        errorType: ErrorType,
        callable: Callable
    ) {
        self.sourceObject = sourceObject
        self.destinationObject = destinationObject
        self.signalName = signalName
        self.errorType = errorType
        self.callable = callable
    }
    
    public func disconnect() {
        sourceObject?.disconnect(signal: signalName, callable: callable)
    }
    
    public var isConnected: Bool {
        sourceObject?.isConnected(signal: signalName, callable: callable) == true
    }
}

extension SignalConnection: CustomStringConvertible {
    public var description: String {
        "SignalConnection(source: \(sourceObject.signalDescription), destination: \(destinationObject.signalDescription) signal: \(signalName))"
    }
}

extension SignalConnection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SignalConnection(source: \(sourceObject.signalDescription), destination: \(destinationObject.signalDescription) signal: \(signalName))"
    }
}

private extension Optional where Wrapped == Object {
    var signalDescription: String {
        switch self {
        case .none:
            "nil"
        case .some(let wrapped):
            String(describing: wrapped)
        }
    }
}
