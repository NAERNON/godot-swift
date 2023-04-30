import Foundation
import ArgumentParser
import CodeGenerator

@main
struct BridgeGeneration: ParsableCommand {
    @Argument(help: "The module's name.")
    var moduleName: String
    
    @Option(help: "Directory containing the swift files.")
    var input: String
    
    @Option(help: "The path where the generated files will be created.")
    var output: String
    
    func run() throws {
        let inputURL = URL(filePath: input, directoryHint: .isDirectory)
        let outputURL = URL(filePath: output, directoryHint: .isDirectory)
        let filePaths = try swiftFilePaths(inside: inputURL)
        
        setenv("IN_PROCESS_SOURCEKIT", "YES", 1)
        
        let codeFormatter = CodeFormatter()
        let moduleEntryCFunction = moduleName.lowercased() + "_library_init"
        
        let fileURLs = try swiftFilePaths(inside: inputURL)
        
        let initializationFile = InitializationFile(
            moduleEntryCFunction: moduleEntryCFunction,
            classDefinitions: try fileURLs.flatMap { try ClassDefinition.definitionsForFile(at: $0) })
        
        try save(file: initializationFile,
                 codeFormatter: codeFormatter,
                 atURL: outputURL)
    }
    
    private func swiftFilePaths(inside directory: URL) throws -> [URL] {
        guard let enumerator = FileManager.default
            .enumerator(at: directory,
                        includingPropertiesForKeys: [.isRegularFileKey],
                        options: .skipsHiddenFiles) else {
            return []
        }
        
        return try enumerator
            .compactMap { $0 as? URL }
            .filter { try $0.resourceValues(forKeys: [.isRegularFileKey]).isRegularFile! }
            .filter { $0.pathExtension == "swift" }
    }
    
    // MARK: Save file
    
    @CodeBuilder
    private func prefixedCode(_ code: some Code) -> some Code {
        "THIS FILE IS GENERATED. EDITS WILL BE LOST.".comment().padding(.bottom)
        code
    }
    
    private func save(file: some File,
                      codeFormatter: CodeFormatter,
                      atURL url: URL) throws {
        let inURLFile = file
            .prefixPath(with: "_GodotBridge")
            .prefixPath(withURL: url)
            .markGenerated()
        
        let fileURL = inURLFile.url
        
        try inURLFile.write(using: codeFormatter)
    }
}
