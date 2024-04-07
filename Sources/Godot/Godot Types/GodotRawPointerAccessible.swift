
protocol GodotRawPointerAccessible {
    /// Invokes the given closure with a raw pointer usable by Godot.
    func withGodotUnsafeRawPointer<Result>(
        _ body: (UnsafeRawPointer?) throws -> Result
    ) rethrows -> Result
    
    /// Invokes the given closure with a mutable raw pointer usable by Godot.
    mutating func withGodotUnsafeMutableRawPointer<Result>(
        _ body: (UnsafeMutableRawPointer?) throws -> Result
    ) rethrows -> Result
    
    /// Creates a new instance by invoking the given closure.
    static func fromInitializingMutatingGodotUnsafePointer(
        _ body: (UnsafeMutableRawPointer) -> Void
    ) -> Self
}
