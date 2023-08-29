
/// A type that serve as tool for receiving signals.
///
/// Do not conform to this protocol yourself.
/// Instead, use the ``Receiver`` macro.
public protocol ReceiverProtocol {
    associatedtype SignalInput
    
    var object: Object? { get }
    
    static var receiverName: GodotStringName { get }
}
