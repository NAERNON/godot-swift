import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import GodotMacros

let testMacros: [String: Macro.Type] = [
    "GodotExposed": GodotExposedMacro.self,
]

#warning("Do the tests")
final class GodotExposedTests: XCTestCase {
    func testMacro() {
        assertMacroExpansion(
            """
            @GodotExposed
            public class A: B {}
            """,
            expandedSource: """
            (a + b, "a + b")
            """,
            macros: testMacros
        )
    }
}
