import Foundation

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
