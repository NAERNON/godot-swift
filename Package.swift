// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "Godot Swift",
    platforms: [.macOS(.v13)], // TODO: Make multiplateform, and check macOS 13
    products: [
        .library(
            name: "Godot",
            targets: ["Godot"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.0-swift-5.9-DEVELOPMENT-SNAPSHOT-2023-04-25-b"),
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
            name: "CodeTranslator",
            dependencies: [],
            path: "Utils/CodeTranslator"
        ),
        
        // MARK: Executable targets
        
        .executableTarget(
            name: "generate-api",
            dependencies: [
                "CodeTranslator",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax"),
            ],
            path: "Executables/generate-api"
        ),
        
        // MARK: Plugins
        
        .macro(
            name: "GodotMacros",
            dependencies: [
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
                .product(name: "SwiftSyntaxMacros", package: "swift-syntax"),
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        ),
    ]
)
