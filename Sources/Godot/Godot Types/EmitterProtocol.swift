
/// A type that can connect to a receiver for handling signals.
///
/// Do not conform to this protocol yourself.
/// Instead, use the ``Emitter`` macro.
public protocol EmitterProtocol {
    associatedtype SignalInput
    
    var object: Object? { get }
    
    static var signalName: GodotStringName { get }
}

public extension EmitterProtocol {
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
