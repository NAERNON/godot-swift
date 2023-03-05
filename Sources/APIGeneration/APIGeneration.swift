import Foundation
import ArgumentParser
import CodeGenerator

@main
struct APIGeneration: ParsableCommand {
    @Argument(help: "The configuration of Godot.\n[float-32, float-64, double-32, double-64]")
    private var buildConfiguration: BuildConfiguration
    
    @Flag(name: .shortAndLong, help: "The generated files are not written on disk.")
    private var noWrite: Bool = false
    
    func run() throws {
        let jsonDecoder = JSONDecoder()
        let fileManager = FileManager.default
        
        let currentURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
        let apiJsonFileURL = currentURL
            .appendingPathComponent("Sources")
            .appendingPathComponent("GodotExtensionHeaders")
            .appendingPathComponent("include")
            .appendingPathComponent("extension_api.json")
        let generatedFolderURL = currentURL
            .appendingPathComponent("Sources")
            .appendingPathComponent("Godot")
            .appendingPathComponent("_Generated")
        
        let data = try Data(contentsOf: apiJsonFileURL)
        
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        let extensionApi = try jsonDecoder.decode(ExtensionApi.self, from: data)
        
        // MARK: Generate files
        
        let codeFormatter = CodeFormatter()
        
        // Delete _Generated directories if needed before making new ones.
        if !noWrite, fileManager.fileExists(atPath: generatedFolderURL.path) {
            try fileManager.removeItem(atPath: generatedFolderURL.path)
        }
        
        let godotFiles = gododFiles(fromApi: extensionApi, buildConfiguration: buildConfiguration)
        
        print("Generating files...")
        let generationStart = Date()
        
        for (index, file) in godotFiles.enumerated() {
            let printedText = "[\(index+1)/\(godotFiles.count)] Generating \(file.name())"
            print("\u{1B}[K" + printedText, terminator: "\r")
            if index < godotFiles.count-1 {
                fflush(stdout)
            } else {
                print("")
            }
            
            try save(file: file,
                     codeFormatter: codeFormatter,
                     fileManager: fileManager,
                     atURL: generatedFolderURL)
        }
        
        let generationDuration = Date.now.timeIntervalSince(generationStart)
        
        print("Files generated! (\(String(format: "%.2f", generationDuration))s)")
    }
    
    // MARK: Save file
    
    @CodeBuilder
    private func prefixedCode(_ code: some Code) -> some Code {
        "THIS FILE IS GENERATED. EDITS WILL BE LOST.".comment().padding(.bottom)
        code
    }

    private func save(file: some GeneratedFile,
                      codeFormatter: CodeFormatter,
                      fileManager: FileManager,
                      atURL url: URL) throws {
        let codeString = codeFormatter.string(from: prefixedCode(file.code))
        
        guard !noWrite else { return }
        
        let data = codeString.data(using: .utf8)!
        let fileURL = url.appendingPathComponent(file.path)
        
        let filePathWithoutFileName = fileURL.deletingLastPathComponent()
        if !fileManager.fileExists(atPath: filePathWithoutFileName.path) {
            try fileManager.createDirectory(atPath: filePathWithoutFileName.path, withIntermediateDirectories: true)
        }
        
        try data.write(to: fileURL)
    }
}

// MARK: - Build Configuration

extension BuildConfiguration: ExpressibleByArgument {
    init?(argument: String) {
        switch argument {
        case "float-32": self = .float32
        case "float-64": self = .float64
        case "double-32": self = .double32
        case "double-64": self = .double64
        default: return nil
        }
    }
}
