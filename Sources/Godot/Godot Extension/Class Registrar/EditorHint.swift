
/// A type used to provide additional information
/// for an exposed property in the Godot editor.
public struct EditorHint {
    public var hint: PropertyHint
    public var string: GodotString
    
    private init(hint: PropertyHint, string: GodotString) {
        self.hint = hint
        self.string = string
    }
    
    public static let none: EditorHint = .init(hint: .none, string: .init())
    
    // MARK: Range
    
    /// A set of options for range hinting.
    public struct RangeOptions: OptionSet {
        public let rawValue: UInt8
        
        public init(rawValue: UInt8) {
            self.rawValue = rawValue
        }
        
        /// Allows manual input going below the min value.
        public static let orLesser   = RangeOptions(rawValue: 1 << 0)
        
        /// Allows manual input going above the max value.
        public static let orGreater  = RangeOptions(rawValue: 1 << 1)
    }
    
    /// Hints that an integer or floating point property
    /// should be within a given range.
    public static func range(
        _ min: Int,
        _ max: Int,
        step: Int? = nil,
        options: RangeOptions = []
    ) -> EditorHint {
        self.init(
            hint: .range,
            string: rangeHintString(min, max, step: step, options: options)
        )
    }
    
    /// Hints that an integer or floating point property
    /// should be within a given range.
    public static func range(
        _ min: Double,
        _ max: Double,
        step: Double? = nil,
        options: RangeOptions = []
    ) -> EditorHint {
        self.init(
            hint: .range,
            string: rangeHintString(min, max, step: step, options: options)
        )
    }
    
    private static func rangeHintString<T>(
        _ min: T,
        _ max: T,
        step: T?,
        options: RangeOptions
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
    
    // MARK: Enum
    
    /// Hints that an integer, float or string property is
    /// an enumerated value to pick in a list.
    ///
    /// Define every value like so:
    /// ```swift
    /// EditorHint.enum("Hello", "Something", "Else")
    /// ```
    ///
    /// For integer and floating point properties,
    /// the first name in the list has value 0, the next 1, and so on.
    /// Explicit values can also be specified
    /// by appending `:integer` to the name:
    /// ```swift
    /// EditorHint.enum("Zero", "One", "Three:3", "Four", "Six:6")
    /// ```
    public static func `enum`(
        _ values: String...
    ) -> EditorHint {
        if values.allSatisfy({ isEnumCaseValid($0) }) {
            self.init(
                hint: .enum,
                string: GodotString(swiftString: values.joined(separator: ","))
            )
        } else {
            .none
        }
    }
    
    private static func isEnumCaseValid(_ enumCase: String) -> Bool {
        !enumCase.contains { $0 == "," }
    }
    
    /// Hints that an integer or floating point property is
    /// an enumerated value to pick in a list
    /// provided by a Godot enum.
    public static func `enum`<Enum>(
        _ enumType: Enum.Type
    ) -> EditorHint where Enum : GodotEnum {
        let string = enumType.hintValues()
            .map { (name, value) in
                "\(name):\(value)"
            }
            .joined(separator: ",")
        
        return .init(
            hint: .enum,
            string: GodotString(swiftString: string)
        )
    }
    
    // MARK: Exp easing
    
    /// Hints that a floating point property should
    /// be edited via an exponential easing function.
    public static var expEasing: EditorHint {
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
    ) -> EditorHint {
        let string: GodotString = switch (attenuation, `inout`)  {
        case (true, true): "attenuation,inout"
        case (true, false): "attenuation"
        case (false, true): "inout"
        case (false, false): GodotString()
        }
        
        return self.init(
            hint: .expEasing,
            string: string
        )
    }
}

// MARK: - Macro

/// Provides a hint for the Godot editor.
@attached(peer)
public macro Hint(_ hint: EditorHint) = #externalMacro(module: "GodotMacros", type: "HintMacro")
