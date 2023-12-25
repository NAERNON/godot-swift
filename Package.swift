// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "godot-swift",
    platforms: [.macOS(.v14)], // TODO: Make multiplatform
    products: [
        .library(
            name: "Godot",
            targets: ["Godot"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
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
            dependencies: [
                "GodotExtensionHeaders",
                "GodotMacros"
            ]
        ),
        
        // MARK: Utils targets
        
        .target(
            name: "Utils",
            dependencies: [],
            path: "Utils"
        ),
        
        // MARK: Executable targets
        
        .executableTarget(
            name: "generate-api",
            dependencies: [
                "Utils",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
            ],
            path: "Executables/GenerateAPI",
            resources: [
                .process("extension_api.json")
            ]
        ),
        
        // MARK: Plugins
        
        .macro(
            name: "GodotMacros",
            dependencies: [
                "Utils",
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax"),
            ],
            path: "Plugins/GodotMacros"
        ),
        
        // MARK: Tests
        
        .testTarget(
            name: "GodotMacrosTests",
            dependencies: [
                "GodotMacros",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        ),
    ]
)
