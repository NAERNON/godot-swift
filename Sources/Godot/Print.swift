import Foundation

private func printGodot(message: Swift.String,
                        function: Swift.String,
                        file: Swift.String,
                        line: Int,
                        isError: Bool) {
    if isError {
        GodotInterface.native.print_error(message, function, file, Int32(line))
    } else {
        GodotInterface.native.print_warning(message, function, file, Int32(line))
    }
}

public func printGodotError(_ message: Swift.String,
                            function: Swift.String = #function,
                            file: Swift.String = #file,
                            line: Int = #line) {
    printGodot(message: message,
          function: function,
          file: file,
          line: line,
          isError: true)
}

public func printGodotWarning(_ message: Swift.String,
                              function: Swift.String = #function,
                              file: Swift.String = #file,
                              line: Int = #line) {
    printGodot(message: message,
          function: function,
          file: file,
          line: line,
          isError: false)
}
