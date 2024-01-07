
extension Hint where Value : Collection<Character> {
    // MARK: File
    
    /// Hints that a string property is a path to a file.
    /// Editing it will show a file dialog for picking the path.
    ///
    /// Define every filter like so:
    /// ```swift
    /// @Export(hint: .file("*.jpg", "*.png"))
    /// ```
    public static func file(
        _ filters: String...
    ) -> Hint {
        let swiftString = filters
            .filter { filter in
                guard isFileFilterValid(filter) else {
                    godotPrintError("File filter hint is ignored (filter \"\(filter)\" is not a valid filter).")
                    return false
                }
                
                return true
            }
            .joined(separator: ",")
        
        return self.init(
            propertyHint: .file,
            string: GodotString(swiftString: swiftString)
        )
    }
    
    /// Hints that a string property is an absolute path
    /// to a file outside the project folder.
    /// Editing it will show a file dialog for picking the path.
    ///
    /// Define every filter like so:
    /// ```swift
    /// @Export(hint: .globalFile("*.jpg", "*.png"))
    /// ```
    public static func globalFile(
        _ filters: String...
    ) -> Hint {
        let swiftString = filters
            .filter { filter in
                guard isFileFilterValid(filter) else {
                    godotPrintError("File filter hint is ignored (filter \"\(filter)\" is not a valid filter).")
                    return false
                }
                
                return true
            }
            .joined(separator: ",")
        
        return self.init(
            propertyHint: .globalFile,
            string: GodotString(swiftString: swiftString)
        )
    }
    
    // MARK: Dir
    
    /// Hints that a string property is a path to a directory.
    /// Editing it will show a file dialog for picking the path.
    public static var directory: Hint {
        .init(propertyHint: .dir, string: GodotString())
    }
    
    /// Hints that a string property is an absolute path
    /// to a directory outside the project folder.
    /// Editing it will show a file dialog for picking the path.
    public static var globalDirectory: Hint {
        .init(propertyHint: .globalDir, string: GodotString())
    }
}

private func isFileFilterValid(_ filter: String) -> Bool {
    !filter.contains(where: { $0 == "," })
}
