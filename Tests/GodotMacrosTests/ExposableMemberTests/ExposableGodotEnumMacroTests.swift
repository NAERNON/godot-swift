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

final class ExposableGodotEnumMacroTests: XCTestCase {
    func testPublicGodotEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            @GodotEnum
            public enum MyEnum {}
            """,
            expandedSource: """
            @GodotEnum
            public enum MyEnum {}
            
            private static func _$godotRegister_MyEnum() {
                Godot.GodotExtension.classRegister.registerEnumOrOptionSet(
                    named: "MyEnum",
                    values: MyEnum.godotExposableValues(),
                    isOptionSet: false,
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
