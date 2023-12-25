
// MARK: - Struct

public struct SignalReceiver<each Input : ExposableValue> {
    public weak private(set) var object: Object?
    public let receiverName: GodotStringName
    
    public init(
        _ object: Object?,
        _ receiverName: GodotStringName
    ) {
        self.object = object
        self.receiverName = receiverName
    }
}

// MARK: - Macro

/// Converts a Swift function into a Godot signal receiver.
@attached(peer, names: arbitrary)
public macro Receiver() = #externalMacro(module: "GodotMacros", type: "ReceiverMacro")
