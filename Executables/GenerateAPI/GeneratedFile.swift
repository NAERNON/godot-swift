import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder

/// A `GeneratedFile` represents a Swift file.
///
/// Use the ``code()`` function to retrieve the code of the file.
struct GeneratedFile {
    /// The path of the file.
    let path: String
    
    /// The code statements in the file.
    let statementsBuilder: () throws -> CodeBlockItemListSyntax
    
    init(
        path: String,
        @CodeBlockItemListBuilder statementsBuilder: @escaping () throws -> CodeBlockItemListSyntax
    ) {
        self.path = path
        self.statementsBuilder = statementsBuilder
    }
    
    /// The file URL.
    var url: URL {
        .init(filePath: path)
    }
    
    /// The name of the file.
    var name: String {
        url.lastPathComponent
    }
    
    /// The source file syntax.
    func syntax() throws -> SourceFileSyntax {
        try SourceFileSyntax {
            try statementsBuilder()
        }
    }
    
    /// The formatted code of the file.
    ///
    /// A header is generated to warn the user that this file is generated.
    func code() throws -> String {
        try """
        //
        // THIS FILE IS GENERATED. EDITS WILL BE LOST.
        //
        
        
        """ +
        syntax().formatted().description
    }
}
