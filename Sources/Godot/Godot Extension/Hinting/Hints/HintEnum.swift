import RegexBuilder

public enum EnumCaseHintFixedWidthInteger<Value>:
    ExpressibleByStringLiteral,
    ExpressibleByIntegerLiteral
where Value : FixedWidthInteger,
      Value : _ExpressibleByBuiltinIntegerLiteral
{
    case caseString(String)
    case caseValue(Value)
    
    public init(stringLiteral value: String) {
        self = .caseString(value)
    }
    
    public init(integerLiteral value: Value) {
        self = .caseValue(value)
    }
}

public enum EnumCaseHintFloatingPoint<Value>:
    ExpressibleByStringLiteral,
    ExpressibleByFloatLiteral,
    ExpressibleByIntegerLiteral
where Value : FloatingPoint,
      Value : _ExpressibleByBuiltinFloatLiteral {
    case caseString(String)
    case caseValue(Value)
    
    public init(stringLiteral value: String) {
        self = .caseString(value)
    }
    
    public init(floatLiteral value: Value) {
        self = .caseValue(value)
    }
    
    public init(integerLiteral value: Int) {
        self = .caseValue(Value(value))
    }
}

extension Hint
where Value : FixedWidthInteger,
      Value : _ExpressibleByBuiltinIntegerLiteral
{
    /// Hints that an integer property is
    /// an enumerated value to pick in a list.
    ///
    /// Define every value like so:
    /// ```swift
    /// @Export(hint: .enum("Hello", "Something", "Else"))
    /// ```
    ///
    /// The first case in the list has value 0, the next 1, and so on.
    /// Explicit values can also be specified
    /// by adding the value next to the case name:
    /// ```swift
    /// @Export(hint: .enum("Zero", "One", "Three", 3, "Four", "Six", 6))
    /// ```
    public static func `enum`(
        _ cases: EnumCaseHintFixedWidthInteger<Value>...
    ) -> Hint {
        var hintString = String()
        var previousCaseIsValue = true
        
        for `case` in cases {
            switch `case` {
            case .caseString(let string):
                previousCaseIsValue = false
                
                hintString.append(",\(string)")
            case .caseValue(let value):
                // We cannot have two successive values
                guard !previousCaseIsValue else {
                    gdPrintError("Enum hint is ignored (unexpected case value found).")
                    return .none
                }
                previousCaseIsValue = true
                
                hintString.append(":\(value)")
            }
        }
        
        return .init(
            propertyHint: .enum,
            string: GodotString(swiftString: hintString)
        )
    }
    
    /// Hints that an integer property is
    /// an enumerated value to pick in a list
    /// provided by a Godot enum.
    public static func `enum`<EnumType>(
        _ enumType: EnumType.Type
    ) -> Hint where EnumType : GodotEnum {
        .init(Hint<EnumType>.enum)
    }
}

extension Hint
where Value : FloatingPoint,
      Value : _ExpressibleByBuiltinFloatLiteral
{
    /// Hints that a floating point property is
    /// an enumerated value to pick in a list.
    ///
    /// Define every value like so:
    /// ```swift
    /// @Export(hint: .enum("Hello", "Something", "Else"))
    /// ```
    ///
    /// The first case in the list has value 0, the next 1, and so on.
    /// Explicit values can also be specified
    /// by adding the value next to the case name:
    /// ```swift
    /// @Export(hint: .enum("Zero", "One", "Three", 3, "Four", "Six", 6))
    /// ```
    public static func `enum`(
        _ cases: EnumCaseHintFloatingPoint<Value>...
    ) -> Hint {
        var hintString = String()
        var previousCaseIsValue = true
        
        for `case` in cases {
            switch `case` {
            case .caseString(let string):
                previousCaseIsValue = false
                
                hintString.append(",\(string)")
            case .caseValue(let value):
                // We cannot have two successive values
                guard !previousCaseIsValue else {
                    gdPrintError("Enum hint is ignored (unexpected case value found).")
                    return .none
                }
                previousCaseIsValue = true
                
                hintString.append(":\(value)")
            }
        }
        
        return .init(
            propertyHint: .enum,
            string: GodotString(swiftString: hintString)
        )
    }
    
    /// Hints that a floating point property is
    /// an enumerated value to pick in a list
    /// provided by a Godot enum.
    public static func `enum`<EnumType>(
        _ enumType: EnumType.Type
    ) -> Hint where EnumType : GodotEnum {
        .init(Hint<EnumType>.enum)
    }
}

extension Hint where Value : GodotEnum {
    /// Hints that the value is a Godot enum.
    public static var `enum`: Hint {
        let string = Value.hintValues()
            .sorted { $0.value < $1.value }
            .map { (name, value) in "\(name):\(value)" }
            .joined(separator: ",")
        
        return .init(
            propertyHint: .enum,
            string: GodotString(swiftString: string)
        )
    }
}
