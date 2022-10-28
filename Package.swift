// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Godot Swift",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "Godot",
            targets: ["Godot", "GodotExtension", "GodotExtensionHeaders"]),
    ],
    dependencies: [],
    targets: [
        // Targets
        .target(
            name: "GodotExtensionHeaders",
            dependencies: []
        ),
        .target(
            name: "Godot",
            dependencies: []
        ),
        .target(
            name: "GodotExtension",
            dependencies: ["Godot", "GodotExtensionHeaders"]
        ),
        
        .plugin(
            name: "Generate Godot API",
            capability: .command(
                intent: .custom(
                    verb: "generate-godot-api",
                    description: "Generates the Godot API code by reading the extension_api.json file."
                ),
                permissions: [
                    .writeToPackageDirectory(reason: "This plugin generates the Godot API code in the Godot target.")
                ]
            ),
            path: "Plugins/Generate Code"
        )
    ]
)
