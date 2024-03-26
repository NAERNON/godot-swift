import Foundation

/// A `FilePool` is a collection of files, capable of generating them concurrently.
struct FilePool {
    var baseURL: URL
    var extensionAPI: GodotExtensionAPI
    var buildConfiguration: BuildConfiguration
    var content: [File]
    
    init(
        baseURL: URL,
        extensionAPI: GodotExtensionAPI,
        buildConfiguration: BuildConfiguration
    ) {
        self.baseURL = baseURL
        self.extensionAPI = extensionAPI
        self.buildConfiguration = buildConfiguration
        self.content = []
    }
    
    mutating func append(
        source: some FileSource,
        nameURLComponent: String
    ) {
        guard source.isFileContentAvailable else {
            return
        }
        
        let file = File(
            url: baseURL.appending(component: nameURLComponent, directoryHint: .notDirectory),
            extensionAPI: extensionAPI,
            buildConfiguration: buildConfiguration,
            source: source
        )
        
        content.append(file)
    }
}

// MARK: - File Generation

extension FilePool {
    func generateFiles(writeFiles: Bool) async throws {
        print("Generating files...")
        let generationStart = Date()
        let count = content.count
        
        try await withThrowingTaskGroup(of: Void.self) { group in
            let maxTasks = 8
            
            var index = 0
            while index != content.endIndex {
                guard !group.isCancelled else {
                    return
                }
                
                printAndFlush("[\(index+1)/\(count)] Generating \(content[index].name)")
                
                if index >= maxTasks {
                    try await group.next()
                }
                
                group.addTask { [index] in
                    try process(
                        fileAt: index,
                        writeFiles: writeFiles
                    )
                }
                
                index += 1
            }
            
            printAndFlush("[\(count+1)/\(count+1)] Finalizing files")
        }
        
        let generationDuration = Date.now.timeIntervalSince(generationStart)
        print("\nFiles generated! (\(String(format: "%.2f", generationDuration))s)")
    }
    
    private func printAndFlush(_ text: String) {
        print("\u{1B}[K" + text, terminator: "\r")
        fflush(stdout)
    }
    
    private func process(
        fileAt index: Int,
        writeFiles: Bool
    ) throws {
        let file = content[index]
        
        guard writeFiles else {
            _ = try file.codeString()
            return
        }
        
        let fileManager = FileManager.default
        
        let filePathWithoutFileName = file.url.deletingLastPathComponent()
        if !fileManager.fileExists(atPath: filePathWithoutFileName.path) {
            try fileManager.createDirectory(atPath: filePathWithoutFileName.path, withIntermediateDirectories: true)
        }
        
        try file.writeCodeToFileURL()
    }
}
