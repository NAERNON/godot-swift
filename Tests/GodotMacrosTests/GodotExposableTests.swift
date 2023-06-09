import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest
import GodotMacros

let testMacros: [String: Macro.Type] = [
    "GodotExposable": GodotExposableMacro.self,
]

#warning("Do the tests")
final class GodotExposableTests: XCTestCase {
    func testMacro() {
        assertMacroExpansion(
            """
            @GodotExposable
            public class A: B {}
            """,
            expandedSource: """
            (a + b, "a + b")
            """,
            macros: testMacros
        )
    }
}
