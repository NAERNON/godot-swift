
/// A type that can connect to a receiver for handling signals.
///
/// Do not conform to this protocol yourself.
/// Instead, use the ``Emitter(signal:args:)`` macro.
public protocol EmitterProtocol {
    /// The type of data the signal transmits.
    associatedtype SignalInput
    
    /// The object sending the signal.
    var object: Object? { get }
    
    /// The signal name.
    static var signalName: GodotStringName { get }
}

public extension EmitterProtocol {
    /// Connects the given receiver to the receiver.
    @discardableResult
    func connect<Input>(_ receiver: Input, flags: Object.ConnectFlags? = nil) -> ErrorType
    where Input : ReceiverProtocol, Input.SignalInput == SignalInput
    {
        guard let emitterObject = self.object,
              let receiverObject = receiver.object else {
            return ErrorType.failed
        }
        
        if let flags {
            return emitterObject.connect(
                signal: Self.signalName,
                callable: Callable(object: receiverObject, method: Input.receiverName),
                flags: flags.rawValue
            )
        } else {
            return emitterObject.connect(
                signal: Self.signalName,
                callable: Callable(object: receiverObject, method: Input.receiverName)
            )
        }
    }
    
    /// Disconnects the given receiver to the receiver.
    func disconnect<Input>(_ receiver: Input)
    where Input : ReceiverProtocol, Input.SignalInput == SignalInput
    {
        guard let receiverObject = receiver.object else {
            return
        }
        
        self.object?.disconnect(
            signal: Self.signalName,
            callable: Callable(object: receiverObject, method: Input.receiverName)
        )
    }
    
    /// Returns a Boolean value indicating whether the reveicer
    /// is connected to the receiver.
    func isConnected<Input>(to receiver: Input) -> Bool
    where Input : ReceiverProtocol, Input.SignalInput == SignalInput
    {
        guard let receiverObject = receiver.object else {
            return false
        }
        
        return self.object?.isConnected(
            signal: Self.signalName,
            callable: Callable(object: receiverObject, method: Input.receiverName)
        ) == true
    }
}
