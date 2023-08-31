
/// A type that serve as tool for receiving signals.
///
/// Do not conform to this protocol yourself.
/// Instead, use the ``Receiver()`` macro.
public protocol ReceiverProtocol {
    /// The type of data the signal transmits.
    associatedtype SignalInput
    
    /// The object receiving the signal.
    var object: Object? { get }
    
    /// The function name receiving the signal.
    static var receiverName: GodotStringName { get }
}
