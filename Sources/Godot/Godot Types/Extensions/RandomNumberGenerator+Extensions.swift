
extension RandomNumberGenerator: Swift.RandomNumberGenerator {
    public func next() -> UInt64 {
        // We explicitely specify the type to catch any change from the Godot APIs.
        let p1: UInt32 = randi()
        let p2: UInt32 = randi()
        
        // Because Godot generates UInt32, we generate two different ones and combine them.
        return UInt64(p1) << 32 + UInt64(p2)
    }
}
