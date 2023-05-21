import PackagePlugin

@main
struct GodotBridgePlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let generatedFiles = ["_GodotBridge.swift"]
        let outputFiles = generatedFiles.map { context.pluginWorkDirectory.appending(subpath: $0) }
        
        return [
            .buildCommand(
                displayName: "Godot bridge generation",
                executable: try context.tool(named: "generate-bridge").path,
                arguments: [
                    target.name,
                    "--input",
                    target.directory,
                    "--output",
                    context.pluginWorkDirectory
                ],
                environment: ["IN_PROCESS_SOURCEKIT": "YES"],
                outputFiles: outputFiles
            )
        ]
    }
}
