import Foundation

// MARK: Warning and errors

public func printGodotError(_ message: Swift.String,
                            function: Swift.String = #function,
                            file: Swift.String = #file,
                            line: Int = #line) {
    GodotInterface.native.print_error(message, function, file, Int32(line))
}

public func printGodotWarning(_ message: Swift.String,
                              function: Swift.String = #function,
                              file: Swift.String = #file,
                              line: Int = #line) {
    GodotInterface.native.print_warning(message, function, file, Int32(line))
}

// MARK: Print output

/// The `GodotOutput` can print a given `String` to the Godot output debugging area.
///
/// Use the standard Swift `print(_:to:_)` function to print to Godot.
/// ```
/// print("Salut", 13.12, to: &godotOutput)
/// // prints "Salut 13.12" to Godot
/// ```
public struct GodotOutput: TextOutputStream {
    /// This value holds the `String` to print.
    private(set) var stringToPrint = Swift.String()
    
    /// Each `write(_:)` call increments the `stringToPrint` value.
    /// Only when the `write(_:)` function receives a string
    /// ending by the `"\n"` character will it print the hole string.
    ///
    /// You can force the Godot printing by calling `print()`.
    public mutating func write(_ string: Swift.String) {
        if string.last?.isNewline == true {
            stringToPrint += string.dropLast(1)
            print()
        } else {
            stringToPrint += string
        }
    }
    
    /// Prints the current string to print to Godot and erases it.
    public mutating func print() {
        printVariant(arg1: Variant(from: String(swiftString: stringToPrint)))
        stringToPrint.removeAll()
    }
    
    fileprivate init() {}
}

/// The main Godot output.
///
/// Use the standard Swift `print(_:to:_)` function to print to Godot.
/// ```
/// print("Salut", 13.12, to: &godotOutput)
/// // prints "Salut 13.12" to Godot
/// ```
public var godotOutput = GodotOutput()
