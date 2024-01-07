import GodotExtensionHeaders

// MARK: Warning and errors

/// Logs an error to Godot's built-in debugger and to the OS terminal.
///
/// - Parameters:
///   - message: The code trigging the error.
///   - notifyEditor: Whether or not to notify the editor.
///   - function: The function name where the error occurred.
///   - file: The file where the error occurred.
///   - line: The line where the error occurred.
public func godotLogError(
    _ message: String,
    notifyEditor: Bool = false,
    function: String = #function,
    file: String = #file,
    line: Int32 = #line
) {
    GodotExtension.Interface.printError(message, function, file, line, notifyEditor ? 1 : 0)
}

/// Logs a warning to Godot's built-in debugger and to the OS terminal.
///
/// - Parameters:
///   - message: The code trigging the warning.
///   - notifyEditor: Whether or not to notify the editor.
///   - function: The function name where the warning occurred.
///   - file: The file where the warning occurred.
///   - line: The line where the warning occurred.
public func godotLogWarning(
    _ message: String,
    notifyEditor: Bool = false,
    function: String = #function,
    file: String = #file,
    line: Int32 = #line
) {
    GodotExtension.Interface.printWarning(message, function, file, line, notifyEditor ? 1 : 0)
}

// MARK: Print

private func makePrintDescription(_ items: [Any], separator: String) -> String {
    var string: String = ""
    for (index, item) in items.enumerated() {
        string += String(describing: item)
        if index < items.count-1 {
            string += separator
        }
    }
    return string
}

private func makeDebugPrintDescription(_ items: [Any], separator: String) -> String {
    var string: String = ""
    for (index, item) in items.enumerated() {
        string += String(reflecting: item)
        if index < items.count-1 {
            string += separator
        }
    }
    return string
}

/// Writes the textual representations of the given items into the Godot
/// output and into the OS terminal.
///
/// You can pass zero or more items to the `godotPrint(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(describing: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// Godot output:
///
/// ```swift
/// godotPrint("One two three four five")
/// // Prints "One two three four five"
///
/// godotPrint(1...5)
/// // Prints "1...5"
///
/// godotPrint(1.0, 2.0, 3.0, 4.0, 5.0)
/// // Prints "1.0 2.0 3.0 4.0 5.0"
/// ```
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
/// ```swift
/// godotPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
/// // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
/// ```
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func godotPrint(_ items: Any..., separator: String = " ") {
    _print(arg1: makePrintDescription(items, separator: separator))
}

/// Writes the textual representations of the given items most suitable for
/// debugging into the Godot output and into the OS terminal.
///
/// You can pass zero or more items to the `godotPrint(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(reflecting: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// Godot output:
///
/// ```swift
/// godotDebugPrint("One two three four five")
/// // Prints "One two three four five"
///
/// godotDebugPrint(1...5)
/// // Prints "1...5"
///
/// godotDebugPrint(1.0, 2.0, 3.0, 4.0, 5.0)
/// // Prints "1.0 2.0 3.0 4.0 5.0"
/// ```
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
/// ```swift
/// godotDebugPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
/// // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
/// ```
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func godotDebugPrint(_ items: Any..., separator: String = " ") {
    _print(arg1: makeDebugPrintDescription(items, separator: separator))
}

/// Writes the textual representations of the given items into the Godot
/// output as error and into the OS terminal.
///
/// You can pass zero or more items to the `godotPrintError(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(describing: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// Godot output:
///
/// ```swift
/// godotPrintError("One two three four five")
/// // Prints "One two three four five"
///
/// godotPrintError(1...5)
/// // Prints "1...5"
///
/// godotPrintError(1.0, 2.0, 3.0, 4.0, 5.0)
/// // Prints "1.0 2.0 3.0 4.0 5.0"
/// ```
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
/// ```swift
/// godotPrintError(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
/// // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
/// ```
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func godotPrintError(_ items: Any..., separator: String = " ") {
    _printerr(arg1: makePrintDescription(items, separator: separator))
}
