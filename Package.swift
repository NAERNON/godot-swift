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
            targets: ["Godot", "GodotExtensionHeaders"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // MARK: Main targets
        
        .target(
            name: "GodotExtensionHeaders",
            dependencies: []
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
            path: "Sources/APIGeneration"),
    ]
)
