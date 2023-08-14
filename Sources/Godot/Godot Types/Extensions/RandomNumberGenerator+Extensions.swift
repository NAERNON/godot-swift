
extension RandomNumberGenerator: Swift.RandomNumberGenerator {
    public func next() -> UInt64 {
        let p1 = randi()
        let p2 = randi()
        
        // We assert the correct type to prevent any change from the Godot APIs.
        assert(p1 is UInt32, "The randomly generated integer should be of type UInt32.")
        assert(p2 is UInt32, "The randomly generated integer should be of type UInt32.")
        
        // Because Godot generates UInt32, we generate two different ones and combine them.
        return UInt64(p1) << 32 + UInt64(p2)
    }
}
