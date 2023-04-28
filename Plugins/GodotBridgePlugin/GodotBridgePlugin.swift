import PackagePlugin

@main
struct GodotBridgePlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let generatedFiles = ["Initialization.swift"]
        let outputFiles = generatedFiles.map { context.pluginWorkDirectory.appending(subpath: "_GodotBridge" + $0) }
        
        return [
            .buildCommand(
                displayName: "Godot Bridge generation",
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
