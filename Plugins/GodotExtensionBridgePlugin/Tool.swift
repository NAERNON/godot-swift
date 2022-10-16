import PackagePlugin

@main
struct Tool: BuildToolPlugin {
    
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let outputPath = context.pluginWorkDirectory.appending("test.swift")
        
        return [
            .buildCommand(
                displayName: "Godot Extension file generation",
                executable: try context.tool(named: "GodotExtensionBridgeExecutable").path,
                arguments: [
                    "--input",
                    target.directory,
                    "--output",
                    outputPath.string
                ],
                environment: ["IN_PROCESS_SOURCEKIT": "YES"],
                outputFiles: [outputPath]
            )
        ]
    }
    
}

