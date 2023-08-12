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
public func gdDebugPrintError(
    _ message: String,
    notifyEditor: Bool = false,
    function: String = #function,
    file: String = #file,
    line: Int32 = #line
) {
    gdextension_interface_print_error(message, function, file, line, notifyEditor ? 1 : 0)
}

/// Logs a warning to Godot's built-in debugger and to the OS terminal.
///
/// - Parameters:
///   - message: The code trigging the warning.
///   - notifyEditor: Whether or not to notify the editor.
///   - function: The function name where the warning occurred.
///   - file: The file where the warning occurred.
///   - line: The line where the warning occurred.
public func gdDebugPrintWarning(
    _ message: String,
    notifyEditor: Bool = false,
    function: String = #function,
    file: String = #file,
    line: Int32 = #line
) {
    gdextension_interface_print_warning(message, function, file, line, notifyEditor ? 1 : 0)
}

// MARK: Print

private func printDescription(_ items: [Any], separator: String) -> String {
    var string: String = ""
    for (index, item) in items.enumerated() {
        string += String(describing: item)
        if index < items.count-1 {
            string += separator
        }
    }
    return string
}

/// Writes the textual representations of the given items into the Godot
/// output.
///
/// You can pass zero or more items to the `gdPrint(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(describing: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// Godot output:
///
/// ```swift
/// gdPrint("One two three four five")
/// // Prints "One two three four five"
///
/// gdPrint(1...5)
/// // Prints "1...5"
///
/// gdPrint(1.0, 2.0, 3.0, 4.0, 5.0)
/// // Prints "1.0 2.0 3.0 4.0 5.0"
/// ```
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
/// ```swift
/// gdPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
/// // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
/// ```
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func gdPrint(_ items: Any..., separator: String = " ") {
    printVariant(arg1: Variant(printDescription(items, separator: separator)))
}

/// Writes the textual representations of the given items into the Godot
/// output as error.
///
/// You can pass zero or more items to the `gdPrintError(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(describing: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// Godot output:
///
/// ```swift
/// gdPrintError("One two three four five")
/// // Prints "One two three four five"
///
/// gdPrintError(1...5)
/// // Prints "1...5"
///
/// gdPrintError(1.0, 2.0, 3.0, 4.0, 5.0)
/// // Prints "1.0 2.0 3.0 4.0 5.0"
/// ```
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
/// ```swift
/// gdPrintError(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
/// // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
/// ```
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func gdPrintError(_ items: Any..., separator: String = " ") {
    printerr(arg1: Variant(printDescription(items, separator: separator)))
}
