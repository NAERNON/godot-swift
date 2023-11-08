
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
    
    /// An set of options for range hinting.
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
    
    /// Hints that an integer or floating point property should be within a given range.
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
    
    /// Hints that an integer or floating point property should be within a given range.
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
}

// MARK: - Macro

/// Provides a hint for the Godot editor.
@attached(peer)
public macro Hint(_ hint: EditorHint) = #externalMacro(module: "GodotMacros", type: "HintMacro")
