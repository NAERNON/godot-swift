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
    private static let loadingBarWidth = 60
    
    func generateFiles(
        writeFiles: Bool,
        concurrentTaskCount: Int
    ) async throws {
        print("Generating files...")
        let generationStart = Date()
        let count = content.count
        
        try await withThrowingTaskGroup(of: Void.self) { group in
            let maxTasks = concurrentTaskCount
            
            var index = 0
            var doneIndex = 0
            while doneIndex != content.count {
                guard !group.isCancelled else {
                    return
                }
                
                printAndFlush(
                    loadingBarString(
                        lowProgress: doneIndex,
                        highProgress: index,
                        count: count
                    )
                )
                
                if index >= maxTasks {
                    try await group.next()
                    doneIndex += 1
                    
                    printAndFlush(
                        loadingBarString(
                            lowProgress: doneIndex,
                            highProgress: index,
                            count: count
                        )
                    )
                }
                
                if index != content.count {
                    group.addTask { [index] in
                        try process(
                            fileAt: index,
                            writeFiles: writeFiles
                        )
                    }
                    
                    index += 1
                }
            }
        }
        
        let generationDuration = Date.now.timeIntervalSince(generationStart)
        print("\nFiles generated! (\(String(format: "%.2f", generationDuration))s)")
    }
    
    private func loadingBarString(
        lowProgress: Int,
        highProgress: Int,
        count: Int
    ) -> String {
        let lowWidth = Int(Double(lowProgress) / Double(count) * Double(Self.loadingBarWidth))
        var highWidth = Int(Double(highProgress) / Double(count) * Double(Self.loadingBarWidth))
        
        if lowWidth == highWidth && lowProgress < count {
            highWidth += 1
        }
        
        let lowBar = String(repeating: "#", count: lowWidth)
        let highBar = String(repeating: "•", count: highWidth - lowWidth)
        let emptyBar = String(repeating: "∙", count: Self.loadingBarWidth - highWidth)
        
        return "[\(lowBar + highBar + emptyBar)] \(lowProgress)/\(count)"
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
