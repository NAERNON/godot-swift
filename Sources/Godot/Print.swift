import Foundation

// MARK: Warning and errors

public func printGodotError(_ message: Swift.String,
                            function: Swift.String = #function,
                            file: Swift.String = #file,
                            line: Int = #line) {
    GodotExtension.shared.interface.print_error(message, function, file, Int32(line))
}

public func printGodotWarning(_ message: Swift.String,
                              function: Swift.String = #function,
                              file: Swift.String = #file,
                              line: Int = #line) {
    GodotExtension.shared.interface.print_warning(message, function, file, Int32(line))
}

// MARK: Print

/// Writes the textual representations of the given items into the Godot
/// output.
///
/// You can pass zero or more items to the `gdPrint(_:separator:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(describing: item)`. The following example prints a string,
/// a closed range of integers, and a group of floating-point values to
/// standard output:
///
///     gdPrint("One two three four five")
///     // Prints "One two three four five"
///
///     gdPrint(1...5)
///     // Prints "1...5"
///
///     gdPrint(1.0, 2.0, 3.0, 4.0, 5.0)
///     // Prints "1.0 2.0 3.0 4.0 5.0"
///
/// To print the items separated by something other than a space, pass a string
/// as `separator`.
///
///     gdPrint(1.0, 2.0, 3.0, 4.0, 5.0, separator: " ... ")
///     // Prints "1.0 ... 2.0 ... 3.0 ... 4.0 ... 5.0"
///
/// - Parameters:
///   - items: Zero or more items to print.
///   - separator: A string to print between each item. The default is a single
///     space (`" "`).
public func gdPrint(_ items: Any..., separator: Swift.String = " ") {
    var string: Swift.String = ""
    for (index, item) in items.enumerated() {
        string += Swift.String(describing: item)
        if index < items.count-1 {
            string += separator
        }
    }
    
    printVariant(arg1: Variant(string))
}
