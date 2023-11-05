import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "ExpositionAvailable": ExpositionAvailableMacro.self,
]
#endif

final class ExposableFunctionMacroTests: XCTestCase {
    func testPublicFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction()
            """,
            expandedSource: """
            public func myFunction()
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
            
                    ],
                    returnParameter: nil,
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction()
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFunctionWithParameter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction(a: Int)
            """,
            expandedSource: """
            public func myFunction(a: Int)
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
                        .argument(Int.self, name: "a"),
                    ],
                    returnParameter: nil,
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction(
                    a:
                    Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)))
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFunctionWithHiddenParameter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction(_ a: Int)
            """,
            expandedSource: """
            public func myFunction(_ a: Int)
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
                        .argument(Int.self, name: "a"),
                    ],
                    returnParameter: nil,
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction(
                    Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)))
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFunctionWithLabeledParameter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction(with a: Int)
            """,
            expandedSource: """
            public func myFunction(with a: Int)
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
                        .argument(Int.self, name: "a"),
                    ],
                    returnParameter: nil,
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction(
                    with:
                    Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)))
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFunctionWithReturnedParameter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction() -> Int
            """,
            expandedSource: """
            public func myFunction() -> Int
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
            
                    ],
                    returnParameter: .returnParameter(Int.self),
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    let returnValue =
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction()
                    returnValue.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicStaticFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public static func myFunction()
            """,
            expandedSource: """
            public static func myFunction()
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
            
                    ],
                    returnParameter: nil,
                    isStatic: true
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    MyClass
                    .myFunction()
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFunctionWithDefaultParameter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public func myFunction(a: Int = 3)
            """,
            expandedSource: """
            public func myFunction(a: Int = 3)
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegistrar.registerFunction(
                    named: "my_function",
                    insideType: self,
                    argumentParameters: [
                        .argument(Int.self, name: "a", defaultValue: 3),
                    ],
                    returnParameter: nil,
                    isStatic: false
                ) {
                    _, instancePtr, args, argsCount, returnPtr, error in
                    if argsCount == 0 {
                        Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                        .myFunction()
                        return
                    }
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue()
                    .myFunction(
                    a:
                    Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)))
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPrivateFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            private func myFunction()
            """,
            expandedSource: """
            private func myFunction()
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
                                line: 1,
                                column: 1,
                                severity: .error,
                                fixIts: [])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testInternalFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            internal func myFunction()
            """,
            expandedSource: """
            internal func myFunction()
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
                                line: 1,
                                column: 1,
                                severity: .error,
                                fixIts: [])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testImplicitInternalFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            func myFunction()
            """,
            expandedSource: """
            func myFunction()
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
                                line: 1,
                                column: 1,
                                severity: .error,
                                fixIts: [])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
}
