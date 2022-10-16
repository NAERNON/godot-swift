import Foundation

func printGodotError(_ message: String,
                     function: String = #function,
                     file: String = #file,
                     line: Int = #line) {
    GodotLibrary.main.print(message: message,
                                  function: function,
                                  file: file,
                                  line: line,
                                  isError: true)
}

func printGodotWarning(_ message: String,
                       function: String = #function,
                       file: String = #file,
                       line: Int = #line) {
    GodotLibrary.main.print(message: message,
                                  function: function,
                                  file: file,
                                  line: line,
                                  isError: false)
}
