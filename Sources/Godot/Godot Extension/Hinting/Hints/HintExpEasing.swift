
extension Hint where Value : FloatingPoint {
    /// Hints that a floating point property should
    /// be edited via an exponential easing function.
    public static var expEasing: Hint {
        expEasing(attenuation: false, `inout`: false)
    }
    
    /// Hints that a floating point property should
    /// be edited via an exponential easing function.
    ///
    /// - Parameters:
    ///   - attenuation: A Boolean value indicating whether
    ///   the curve is flipped horizontally.
    ///   - inout: A Boolean value indicating whether
    ///   it includes in/out easing.
    public static func expEasing(
        attenuation: Bool = false,
        `inout`: Bool = false
    ) -> Hint {
        let string: GodotString = switch (attenuation, `inout`)  {
        case (true, true): "attenuation,inout"
        case (true, false): "attenuation"
        case (false, true): "inout"
        case (false, false): GodotString()
        }
        
        return self.init(
            propertyHint: .expEasing,
            string: string
        )
    }
}
