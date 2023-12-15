
public struct RangeHintOptions: OptionSet {
    public let rawValue: UInt8
    
    public init(rawValue: UInt8) {
        self.rawValue = rawValue
    }
    
    /// Allows manual input going below the min value.
    public static let orLesser   = RangeHintOptions(rawValue: 1 << 0)
    
    /// Allows manual input going above the max value.
    public static let orGreater  = RangeHintOptions(rawValue: 1 << 1)
}

extension Hint where Value : FixedWidthInteger {
    /// Hints that an integer property
    /// should be within a given range.
    public static func range(
        _ range: ClosedRange<Value>,
        step: Value? = nil,
        options: RangeHintOptions = []
    ) -> Hint {
        self.init(
            propertyHint: .range,
            string: rangeHintString(range.lowerBound, range.upperBound, step: step, options: options)
        )
    }
}

extension Hint where Value : FloatingPoint {
    /// Hints that a floating point property
    /// should be within a given range.
    public static func range(
        _ range: ClosedRange<Value>,
        step: Value? = nil,
        options: RangeHintOptions = []
    ) -> Hint {
        self.init(
            propertyHint: .range,
            string: rangeHintString(range.lowerBound, range.upperBound, step: step, options: options)
        )
    }
}

private func rangeHintString<T>(
    _ min: T,
    _ max: T,
    step: T?,
    options: RangeHintOptions
) -> GodotString {
    var string: String = "\(min),\(max)"
    if let step {
        string += ",\(step)"
    }
    if options.contains(.orGreater) {
        string += ",or_greater"
    }
    if options.contains(.orLesser) {
        string += ",or_lesser"
    }
    
    return GodotString(swiftString: string)
}
