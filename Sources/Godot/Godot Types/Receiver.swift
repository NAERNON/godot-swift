
// MARK: - Protocol

/// A type that serve as tool for receiving signals.
///
/// Do not conform to this protocol yourself.
/// Instead, use the ``Receiver()`` macro.
public protocol Receiver {
    /// The type of data the signal transmits.
    associatedtype SignalInput
    
    /// The object receiving the signal.
    var object: Object? { get }
    
    /// The function name receiving the signal.
    static var receiverName: GodotStringName { get }
}

// MARK: - Macro

/// Converts a Swift function into a Godot signal receiver.
@attached(peer, names: suffixed(Receiver), prefixed(Receiver_))
public macro Receiver() = #externalMacro(module: "GodotMacros", type: "ReceiverMacro")
