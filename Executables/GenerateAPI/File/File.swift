import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder

/// A `File` represents a Swift file.
///
/// Use the ``codeString()`` function to retrieve the code of the file.
struct File {
    /// The file URL.
    let url: URL
    
    /// The code statements in the file.
    let code: () throws -> CodeBlockItemListSyntax
    
    init(
        url: URL,
        @CodeBlockItemListBuilder code: @escaping () throws -> CodeBlockItemListSyntax
    ) {
        self.url = url
        self.code = code
    }
    
    init(
        url: URL,
        extensionAPI: GodotExtensionAPI,
        buildConfiguration: BuildConfiguration,
        source: some FileSource
    ) {
        self.url = url
        self.code = {
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
    
    /// The source file syntax.
    func syntax() throws -> SourceFileSyntax {
        try SourceFileSyntax {
            try code()
        }
    }
    
    /// The final formatted code.
    func codeString() throws -> String {
        let syntax = try File.SyntaxRewriter().rewrite(syntax())
        
        return """
        //
        // THIS FILE IS GENERATED. EDITS WILL BE LOST.
        //
        
        
        """ +
        syntax.formatted().description
    }
    
    /// Writes the code data to the file URL.
    func writeCodeToFileURL() throws {
        guard let data = try? codeString().data(using: .utf8) else {
            throw ProcessError.cannotGenerateDataFromCode
        }
        
        try data.write(to: url)
    }
}
