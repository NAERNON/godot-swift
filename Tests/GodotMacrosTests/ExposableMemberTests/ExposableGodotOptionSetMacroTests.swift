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

final class ExposableGodotOptionSetMacroTests: XCTestCase {
    func testPublicGodotOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            @GodotOptionSet
            public struct MyOptionSet {}
            """,
            expandedSource: """
            @GodotOptionSet
            public struct MyOptionSet {}
            
            private static func _$godotRegister_MyOptionSet() {
                Godot.GodotExtension.classRegistrar.registerEnumOrOptionSet(
                    named: "MyOptionSet",
                    values: MyOptionSet.godotExposableValues(),
                    isOptionSet: true,
                    insideType: self
                )
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
}
