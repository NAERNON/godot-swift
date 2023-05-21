import Foundation
import ArgumentParser
import CodeGenerator
import SourceKittenFramework

@main
struct BridgeGeneration: ParsableCommand {
    @Argument(help: "The module's name.")
    var moduleName: String
    
    @Option(help: "Directory containing the swift files.")
    var input: String
    
    @Option(help: "The path where the generated files will be created.")
    var output: String
    
    @Flag(name: .shortAndLong, help: "The generated files are not written to disk.")
    private var noWrite: Bool = false
    
    @Flag(name: .shortAndLong, help: "The generated files will be printed.")
    private var printOutput: Bool = false
    
    func run() throws {
        let inputURL = URL(filePath: input, directoryHint: .isDirectory)
        let outputURL = URL(filePath: output, directoryHint: .isDirectory)
        let filePaths = try swiftFilePaths(inside: inputURL)
        
        setenv("IN_PROCESS_SOURCEKIT", "YES", 1)
        
        let codeFormatter = CodeFormatter()
        let moduleEntryCFunction = moduleName.lowercased() + "_library_init"
        
        let fileURLs = try swiftFilePaths(inside: inputURL)
        let files = fileURLs.compactMap { SourceKittenFramework.File(path: $0.path()) }
        let structures = try files.map { try Structure(file: $0) }
        
        let classDefinitions = structures.flatMap { structure in
            ClassDefinition.definitions(insideStructure: structure)
        }
        
        let godotBridgeFile = GodotBridgeFile(
            moduleEntryCFunction: moduleEntryCFunction,
            classDefinitions: classDefinitions)
        
        let godotFiles: [any CodeGenerator.File] = [godotBridgeFile]
        
        for file in godotFiles {
            try process(file: file,
                        codeFormatter: codeFormatter,
                        atURL: outputURL)
        }
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
    
    // MARK: Process file
    
    private func process(file: some CodeGenerator.File,
                         codeFormatter: CodeFormatter,
                         atURL url: URL) throws {
        let finalFile = file
            .prefixPath(withURL: url)
            .markGenerated()
        
        let fileURL = finalFile.url
        
        if printOutput {
            print("Printing file \(finalFile.path)")
            print(codeFormatter.string(from: finalFile.code))
        }
        
        guard !noWrite else {
            _ = try finalFile.data(using: codeFormatter)
            return
        }
        
        try finalFile.write(using: codeFormatter)
    }
}
