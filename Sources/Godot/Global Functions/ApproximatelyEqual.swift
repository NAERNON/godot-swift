
extension BinaryFloatingPoint {
    /// This epsilon should match the one used by Godot for consistency.
    static var cmpEpsilon: Self {
        0.00001
    }
}

extension BinaryFloatingPoint {
    /// Returns `true` if two values are approximately equal to each other.
    ///
    /// Here, "approximately equal" means that the two values are within a
    /// small internal epsilon of each other,
    /// which scales with the magnitude of the numbers.
    ///
    /// Infinity values of the same sign are considered equal.
    public func isApproximatelyEqual(to other: Self) -> Bool {
        // Check for exact equality first, required to handle "infinity" values.
        if self == other {
            return true
        }
        // Then check for approximate equality.
        var tolerance = Self.cmpEpsilon * abs(self)
        if tolerance < Self.cmpEpsilon {
            tolerance = Self.cmpEpsilon
        }
        return abs(self - other) < tolerance
    }
    
    /// Returns `true` if two values are approximately equal to each other.
    ///
    /// Here, "approximately equal" means that the two values are within a
    /// given tolerance.
    ///
    /// Infinity values of the same sign are considered equal.
    public func isApproximatelyEqual(to other: Self, tolerance: Self) -> Bool {
        // Check for exact equality first, required to handle "infinity" values.
        if self == other {
            return true
        }
        // Then check for approximate equality.
        return abs(self - other) < tolerance
    }
    
    /// A Boolean value indicating whether the value is zero or almost zero.
    ///
    /// The comparison is done using a tolerance calculation with a small internal epsilon.
    ///
    /// This property runs faster than ``isApproximatelyEqual(to:)`` with a zero value.
    public var isApproximatelyZero: Bool {
        abs(self) < Self.cmpEpsilon
    }
}
