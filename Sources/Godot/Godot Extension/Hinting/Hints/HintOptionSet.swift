
extension Hint where Value : FixedWidthInteger {
    /// Hints that an integer property is a bitmask,
    /// where the list is provided by a Godot option set.
    public static func optionSet<OptionSetType>(
        _ optionSetType: OptionSetType.Type
    ) -> Hint where OptionSetType : GodotOptionSet {
        .init(Hint<OptionSetType>.optionSet)
    }
}

extension Hint where Value : GodotOptionSet {
    /// Hints that the value is a Godot option set.
    public static var optionSet: Hint {
        var valueToName = [Value.RawValue : String]()
        for (name, value) in Value.hintValues() {
            if valueToName[value] == nil {
                valueToName[value] = name
            }
        }
        
        guard let (max, _) = valueToName.max(by: { lhs, rhs in lhs.key < rhs.key }) else {
            return .none
        }
        
        var string = String()
        var powerOfTwo: Value.RawValue = 1
        while powerOfTwo <= max {
            string.append((valueToName[powerOfTwo] ?? "") + ",")
            
            powerOfTwo *= 2
        }
        
        return .init(
            propertyHint: .flags,
            string: GodotString(swiftString: string)
        )
    }
}
