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

final class ExposableFunctionOverrideMacroTests: XCTestCase {
    func testPublicOverrideFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public override func myFunction()
            """,
            expandedSource: """
            public override func myFunction()
            
            private static func _$godotRegister_myFunction() {
                Godot.GodotExtension.classRegister.registerFunctionOverride(
                    named: "myFunction",
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
