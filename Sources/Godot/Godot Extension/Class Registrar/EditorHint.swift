
/// A type used to provide additional information
/// for an exposed property in the Godot editor.
///
/// Use the ``Hint(_:)`` macro to define a hint for a value.
public struct EditorHint {
    public var hint: PropertyHint
    public var string: GodotString
    
    private init(hint: PropertyHint, string: GodotString) {
        self.hint = hint
        self.string = string
    }
    
    public enum HintError: Error, CustomStringConvertible {
        case commaInEnumCase
        case commaInFileFilter
        
        public var description: String {
            switch self {
            case .commaInEnumCase:
                "Enum case name cannot contain a comma"
            case .commaInFileFilter:
                "File filter cannot contain a comma"
            }
        }
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
    public static func range<Value>(
        _ min: Value,
        _ max: Value,
        step: Value? = nil,
        options: RangeOptions = []
    ) -> EditorHint where Value : FixedWidthInteger {
        self.init(
            hint: .range,
            string: rangeHintString(min, max, step: step, options: options)
        )
    }
    
    /// Hints that an integer or floating point property
    /// should be within a given range.
    public static func range<Value>(
        _ min: Value,
        _ max: Value,
        step: Value? = nil,
        options: RangeOptions = []
    ) -> EditorHint where Value : FloatingPoint {
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
    /// @Hint(.enum("Hello", "Something", "Else"))
    /// ```
    ///
    /// For integer and floating point properties,
    /// the first name in the list has value 0, the next 1, and so on.
    /// Explicit values can also be specified
    /// by appending `:integer` to the name:
    /// ```swift
    /// @Hint(.enum("Zero", "One", "Three:3", "Four", "Six:6"))
    /// ```
    public static func `enum`(
        _ values: String...,
        function: String = #function,
        file: String = #file,
        line: Int32 = #line
    ) -> EditorHint {
        let swiftString = values
            .filter { enumCase in
                do {
                    try checkEnumCaseValidity(enumCase)
                    return true
                } catch {
                    gdDebugPrintWarning(
                        "Enum case hint \"\(enumCase)\" is ignored. (\(error))",
                        function: function,
                        file: file,
                        line: line
                    )
                    return false
                }
            }
            .joined(separator: ",")
        
        return self.init(
            hint: .enum,
            string: GodotString(swiftString: swiftString)
        )
    }
    
    private static func checkEnumCaseValidity(_ enumCase: String) throws {
        if enumCase.contains(where: { $0 == "," }) {
            throw HintError.commaInEnumCase
        }
    }
    
    /// Hints that an integer or floating point property is
    /// an enumerated value to pick in a list
    /// provided by a Godot enum.
    public static func `enum`<Enum>(
        _ enumType: Enum.Type
    ) -> EditorHint where Enum : GodotEnum {
        let string = enumType.hintValues()
            .sorted { $0.value < $1.value }
            .map { (name, value) in "\(name):\(value)" }
            .joined(separator: ",")
        
        return .init(
            hint: .enum,
            string: GodotString(swiftString: string)
        )
    }
    
    // MARK: Exp easing
    
    /// Hints that a floating point property should
    /// be edited via an exponential easing function.
    public static let expEasing: EditorHint =
        expEasing(attenuation: false, `inout`: false)
    
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
    
    /// Hints that an integer property is a bitmask,
    /// where the list is provided by a Godot option set.
    public static func optionSet<OptionSet>(
        _ optionSetType: OptionSet.Type
    ) -> EditorHint where OptionSet : GodotOptionSet {
        var valueToName = [OptionSet.RawValue : String]()
        for (name, value) in optionSetType.hintValues() {
            if valueToName[value] == nil {
                valueToName[value] = name
            }
        }
        
        guard let (max, _) = valueToName.max(by: { lhs, rhs in lhs.key < rhs.key }) else {
            return .none
        }
        
        var string = String()
        var powerOfTwo: OptionSet.RawValue = 1
        while powerOfTwo <= max {
            string.append((valueToName[powerOfTwo] ?? "") + ",")
            
            powerOfTwo *= 2
        }
        
        return self.init(
            hint: .flags,
            string: GodotString(swiftString: string)
        )
    }
    
    // MARK: Layers
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 2D render layers.
    public static let layers2DRender: EditorHint =
        .init(hint: .layers2DRender, string: GodotString())
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 2D physics layers.
    public static let layers2DPhysics: EditorHint =
        .init(hint: .layers2DPhysics, string: GodotString())
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 3D render layers.
    public static let layers3DRender: EditorHint =
        .init(hint: .layers3DRender, string: GodotString())
    
    /// Hints that an integer property is a bitmask
    /// using the optionally named 3D physics layers.
    public static let layers3DPhysics: EditorHint =
        .init(hint: .layers3DPhysics, string: GodotString())
    
    // MARK: File
    
    /// Hints that a string property is a path to a file.
    /// Editing it will show a file dialog for picking the path.
    ///
    /// Define every filter like so:
    /// ```swift
    /// @Hint(.file("*.jpg", "*.png"))
    /// ```
    public static func file(
        _ filters: String...,
        function: String = #function,
        file: String = #file,
        line: Int32 = #line
    ) -> EditorHint {
        let swiftString = filters
            .filter { filter in
                do {
                    try checkFileFilterValidity(filter)
                    return true
                } catch {
                    gdDebugPrintWarning(
                        "File filter hint \"\(filter)\" is ignored. (\(error))",
                        function: function,
                        file: file,
                        line: line
                    )
                    return false
                }
            }
            .joined(separator: ",")
        
        return self.init(
            hint: .file,
            string: GodotString(swiftString: swiftString)
        )
    }
    
    /// Hints that a string property is an absolute path
    /// to a file outside the project folder.
    /// Editing it will show a file dialog for picking the path.
    ///
    /// Define every filter like so:
    /// ```swift
    /// @Hint(.globalFile("*.jpg", "*.png"))
    /// ```
    public static func globalFile(
        _ filters: String...,
        function: String = #function,
        file: String = #file,
        line: Int32 = #line
    ) -> EditorHint {
        let swiftString = filters
            .filter { filter in
                do {
                    try checkFileFilterValidity(filter)
                    return true
                } catch {
                    gdDebugPrintWarning(
                        "File filter hint \"\(filter)\" is ignored. (\(error))",
                        function: function,
                        file: file,
                        line: line
                    )
                    return false
                }
            }
            .joined(separator: ",")
        
        return self.init(
            hint: .globalFile,
            string: GodotString(swiftString: swiftString)
        )
    }
    
    private static func checkFileFilterValidity(_ enumCase: String) throws {
        if enumCase.contains(where: { $0 == "," }) {
            throw HintError.commaInFileFilter
        }
    }
    
    // MARK: Dir
    
    /// Hints that a string property is a path to a directory.
    /// Editing it will show a file dialog for picking the path.
    public static let dir: EditorHint =
        .init(hint: .dir, string: GodotString())
    
    /// Hints that a string property is an absolute path
    /// to a directory outside the project folder.
    /// Editing it will show a file dialog for picking the path.
    public static let globalDir: EditorHint =
        .init(hint: .globalDir, string: GodotString())
    
    // MARK: Resource
    
    /// Hints that a property is an instance of a `Resource` type.
    /// Editing it will show a popup menu of valid resource types to instantiate.
    public static let resource: EditorHint =
        .init(hint: .resourceType, string: GodotString())
    
    /// Hints that a property is an instance of a `Resource` type.
    /// Editing it will show a popup menu of valid resource types to instantiate.
    ///
    /// - Parameter type: The type of resource to request.
    public static func resource(_ type: Resource.Type) -> EditorHint {
        .init(
            hint: .resourceType,
            string: GodotString(stringName: type._$className)
        )
    }
    
    // MARK: Text
    
    /// Hints that a string property is text with line breaks.
    /// Editing it will show a text input field where line breaks can be typed.
    public static let multiline: EditorHint =
        .init(hint: .multilineText, string: GodotString())
    
    /// Hints that a string property should have a placeholder
    /// text visible on its input field, whenever the property is empty.
    public static func placeholder(_ text: String) -> EditorHint {
        .init(
            hint: .placeholderText,
            string: GodotString(swiftString: text)
        )
    }
    
    // MARK: Color
    
    /// Hints that a color property should be edited
    /// without changing its alpha component,
    /// i.e. only R, G and B channels are edited.
    public static let noAlpha: EditorHint =
        .init(hint: .colorNoAlpha, string: GodotString())
}

// MARK: - Macro

/// Provides a hint for the Godot editor.
@attached(peer)
public macro Hint(_ hint: EditorHint) = #externalMacro(module: "GodotMacros", type: "HintMacro")
