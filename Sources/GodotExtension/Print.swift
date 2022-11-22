import Foundation

public func printGodotError(_ message: String,
                            function: String = #function,
                            file: String = #file,
                            line: Int = #line) {
    GodotLibrary.main.print(message: message,
                            function: function,
                            file: file,
                            line: line,
                            isError: true)
}

public func printGodotWarning(_ message: String,
                              function: String = #function,
                              file: String = #file,
                              line: Int = #line) {
    GodotLibrary.main.print(message: message,
                                  function: function,
                                  file: file,
                                  line: line,
                                  isError: false)
}
