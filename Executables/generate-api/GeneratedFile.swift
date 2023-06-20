import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder

/// A `GeneratedFile` represents a Swift file.
///
/// Use the ``code()`` function to retreive the code of the file.
struct GeneratedFile {
    /// The path of the file.
    let path: String
    
    /// The code statements in the file.
    let statements: CodeBlockItemListSyntax
    
    init(
        path: String,
        @CodeBlockItemListBuilder statementsBuilder: () throws -> CodeBlockItemListSyntax
    ) throws {
        self.path = path
        statements = try statementsBuilder()
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
    var syntax: SourceFileSyntax {
        SourceFileSyntax {
            statements
        }
    }
    
    /// The formatted code of the file.
    ///
    /// A header is generated to warn the user that this file is generated.
    func code() -> String {
        """
        //
        // THIS FILE IS GENERATED. EDITS WILL BE LOST.
        //
        
        """ +
        syntax.formatted().description
    }
}
