
// MARK: - Struct

public struct SignalConnector<each Input : ExposableValue> {
    public weak private(set) var object: Object?
    public let signalName: GodotStringName
    
    public init(
        _ object: Object?,
        _ signalName: GodotStringName
    ) {
        self.object = object
        self.signalName = signalName
    }
}

public extension SignalConnector {
    /// Connects the given receiver to the signal.
    @discardableResult
    func connect(
        to receiver: SignalReceiver<repeat each Input>,
        flags: Object.ConnectFlags? = nil
    ) -> ErrorType {
        guard let emitterObject = self.object,
              let receiverObject = receiver.object else {
            return ErrorType.failed
        }
        
        if let flags {
            return emitterObject.connect(
                signal: self.signalName,
                callable: Callable(object: receiverObject, method: receiver.receiverName),
                flags: flags.rawValue
            )
        } else {
            return emitterObject.connect(
                signal: self.signalName,
                callable: Callable(object: receiverObject, method: receiver.receiverName)
            )
        }
    }
    
    /// Disconnects the given receiver from the signal.
    func disconnect(from receiver: SignalReceiver<repeat each Input>) {
        guard let receiverObject = receiver.object else {
            return
        }
        
        self.object?.disconnect(
            signal: self.signalName,
            callable: Callable(object: receiverObject, method: receiver.receiverName)
        )
    }
    
    /// Returns a Boolean value indicating whether the receiver
    /// is connected to the receiver.
    func isConnected(to receiver: SignalReceiver<repeat each Input>) -> Bool {
        guard let receiverObject = receiver.object else {
            return false
        }
        
        return self.object?.isConnected(
            signal: self.signalName,
            callable: Callable(object: receiverObject, method: receiver.receiverName)
        ) == true
    }
    
    @discardableResult
    func emit(_ values: repeat each Input) -> ErrorType {
        guard let object else {
            return .failed
        }
        
        return object.emitSignal(signalName, repeat each values)
    }
}

// MARK: - Macro

@freestanding(declaration, names: arbitrary)
public macro signal<each Parameter : ExposableValue>(
    _ name: StaticString,
    arguments: repeat (StaticString, (each Parameter).Type)
) = #externalMacro(module: "GodotMacros", type: "SignalMacro")
