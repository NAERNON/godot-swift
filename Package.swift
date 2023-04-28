// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#warning("v13 really ?")
let package = Package(
    name: "Godot Swift",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "Godot",
            targets: ["Godot", "GodotExtensionHeaders"]
        ),
        .plugin(
            name: "GodotBridgePlugin",
            targets: ["GodotBridgePlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/jpsim/SourceKitten", .upToNextMinor(from: "0.34.0")),
    ],
    targets: [
        // MARK: Main targets
        
        .target(
            name: "GodotExtensionHeaders",
            dependencies: [],
            publicHeadersPath: ""
        ),
        .target(
            name: "Godot",
            dependencies: ["GodotExtensionHeaders"]
        ),
        
        // MARK: Utils targets
        
        .target(
            name: "CodeGenerator",
            dependencies: [],
            path: "Utils/CodeGenerator"
        ),
        .target(
            name: "CodeTranslator",
            dependencies: [],
            path: "Utils/CodeTranslator"
        ),
        
        // MARK: Executable targets
        
        .executableTarget(
            name: "generate-api",
            dependencies: [
                "CodeGenerator",
                "CodeTranslator",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Executables/APIGeneration"
        ),
        .executableTarget(
            name: "generate-bridge",
            dependencies: [
                "CodeGenerator",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SourceKittenFramework", package: "SourceKitten"),
            ],
            path: "Executables/BridgeGeneration"
        ),
        
        // MARK: Plugins
        
        .plugin(
            name: "GodotBridgePlugin",
            capability: .buildTool(),
            dependencies: ["generate-bridge"]
        )
    ]
)
