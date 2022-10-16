// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Godot Swift",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(
            name: "Godot",
            targets: ["Godot", "GodotExtension", "GodotExtensionHeaders"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GodotExtensionHeaders",
            dependencies: []),
        .target(
            name: "Godot",
            dependencies: []),
        .target(
            name: "GodotExtension",
            dependencies: ["Godot", "GodotExtensionHeaders"]),
        .plugin(
            name: "GodotExtensionBridgePlugin",
            capability: .buildTool(),
            dependencies: [.target(name: "GodotExtensionBridgeExecutable")]
        ),
        .executableTarget(
            name: "GodotExtensionBridgeExecutable",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
