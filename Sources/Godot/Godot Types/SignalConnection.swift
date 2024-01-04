
// TODO: Add connection flags
public struct SignalConnection {
    private(set) weak var sourceObject: Object?
    public let signalName: GodotStringName
    public let errorType: ErrorType
    
    let callable: Callable
    
    init(
        sourceObject: Object?,
        signalName: GodotStringName,
        errorType: ErrorType,
        callable: Callable
    ) {
        self.sourceObject = sourceObject
        self.signalName = signalName
        self.errorType = errorType
        self.callable = callable
    }
    
    static func fromEmitter<Input>(
        emitter: SignalEmitter<Input>,
        infoDictionary: AnyGodotDictionary
    ) -> SignalConnection {
        SignalConnection(
            sourceObject: emitter.sourceObject,
            signalName: emitter.signalName,
            errorType: .ok,
            callable: infoDictionary["callable"]!.unwrap(assuming: Callable.self)
        )
    }
    
    static func fromInfoDictionary(
        _ infoDictionary: AnyGodotDictionary
    ) -> SignalConnection {
        let signal = infoDictionary["signal"]!.unwrap(assuming: Signal.self)
        
        return SignalConnection(
            sourceObject: signal.object,
            signalName: signal.name,
            errorType: .ok,
            callable: infoDictionary["callable"]!.unwrap(assuming: Callable.self)
        )
    }
    
    public func disconnect() {
        sourceObject?.__disconnect(signal: signalName, callable: callable)
    }
    
    public var isConnected: Bool {
        sourceObject?.__isConnected(signal: signalName, callable: callable) == true
    }
}

extension SignalConnection: CustomStringConvertible {
    public var description: String {
        "SignalConnection(source: \(sourceObject.signalDescription), signal: \"\(signalName)\")"
    }
}

extension SignalConnection: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SignalConnection(source: \(sourceObject.signalDescription), signal: \"\(signalName)\")"
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
