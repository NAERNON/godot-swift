
protocol FileSource {
    /// A Boolean value indicating whether the file should be generated.
    var isFileContentAvailable: Bool { get }
    
    /// Returns the code content of the file.
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax
}

extension FileSource {
    var isFileContentAvailable: Bool { true }
}
