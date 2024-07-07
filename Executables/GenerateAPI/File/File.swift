import Foundation

/// A `File` represents a generated Swift file.
struct File {
    /// The file URL.
    let url: URL
    
    /// The code statements in the file.
    let content: () throws -> Syntax
    
    init(
        url: URL,
        @SyntaxGroupBuilder content: @escaping () throws -> SyntaxGroup
    ) {
        self.url = url
        self.content = { try content().syntax() }
    }
    
    init(
        url: URL,
        extensionAPI: GodotExtensionAPI,
        buildConfiguration: BuildConfiguration,
        source: some FileSource
    ) {
        self.url = url
        self.content = {
            try source.fileCodeContent(for: extensionAPI, with: buildConfiguration)
        }
    }
}

private enum ProcessError: Error {
    case cannotGenerateDataFromCode
}

extension File {
    /// The file name.
    var name: String {
        url.lastPathComponent
    }
    
    /// The final formatted code.
    func codeString() throws -> String {
        let syntax = try content().formatted()
        
        return """
        //
        // THIS FILE IS GENERATED. EDITS WILL BE LOST.
        //
        
        
        """ + syntax
    }
    
    /// Writes the code data to the file URL.
    func writeCodeToFileURL() throws {
        guard let data = try? codeString().data(using: .utf8) else {
            throw ProcessError.cannotGenerateDataFromCode
        }
        
        try data.write(to: url)
    }
}
