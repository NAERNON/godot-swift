
/// Returns a shift value from a power of 2.
private func shiftFromPowerOfTwo(_ bits: Int) -> Int {
    for i in 0..<32 {
        if bits == 1 << i {
            return i
        }
    }

    return -1
}

extension FixedWidthInteger {
    /// Returns the smallest integer power of 2
    /// that is greater than or equal to this value.
    ///
    /// >note: Due to its implementation, this method returns `0`
    /// rather than `1` for values less than or equal to `0`.
    /// Values at boundaries (`Self.max` and `Self.min`) return `Self.min`.
    public func nearestPowerOfTwo() -> Self {
        var x = self &- 1

        // The number of operations on x is the base two logarithm
        // of the number of bits in the type. Add three to account
        // for sizeof(T) being in bytes.
        let num = shiftFromPowerOfTwo(MemoryLayout<Self>.size) + 3

        // If the compiler is smart, it unrolls this loop.
        // If it's dumb, this is a bit slow.
        for i in 0..<num {
            x |= x >> (1 << i)
        }
        
        x &+= 1
        return x
    }
}
