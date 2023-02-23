// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#warning("v12 really ?")
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
            dependencies: ["GodotExtensionHeaders"]
        ),
        .target(
            name: "GodotExtension",
            dependencies: ["GodotExtensionHeaders", "Godot"]
        ),
        
        .executableTarget(
            name: "APIGeneration",
            dependencies: [.product(name: "CodeGenerator", package: "code-generator")]),
    ]
)
