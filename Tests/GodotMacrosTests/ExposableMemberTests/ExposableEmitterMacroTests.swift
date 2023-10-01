import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "ExposableMember": ExposableMemberMacro.self,
]
#endif

final class ExposableEmitterMacroTests: XCTestCase {
    func testPublicEmitter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            @Emitter
            public struct Jumped {}
            """,
            expandedSource: """
            @Emitter
            public struct Jumped {}
            
            private static func _$godotRegister_Jumped() {
                Godot.GodotExtension.classRegister.registerSignal(
                    named: Jumped.signalName,
                    insideType: self,
                    argumentParameters:  [
            
                    ]
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
    
    func testPublicEmitterWithOneArg() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            @Emitter(args: ("height", Double))
            public struct Jumped {}
            """,
            expandedSource: """
            @Emitter(args: ("height", Double))
            public struct Jumped {}
            
            private static func _$godotRegister_Jumped() {
                Godot.GodotExtension.classRegister.registerSignal(
                    named: Jumped.signalName,
                    insideType: self,
                    argumentParameters:  [
                        .argument(Double.self, name: "height"),
                    ]
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
    
    func testPublicEmitterWithTwoArgs() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            @Emitter(args: ("height", Double), ("jumpDistance", Int))
            public struct Jumped {}
            """,
            expandedSource: """
            @Emitter(args: ("height", Double), ("jumpDistance", Int))
            public struct Jumped {}
            
            private static func _$godotRegister_Jumped() {
                Godot.GodotExtension.classRegister.registerSignal(
                    named: Jumped.signalName,
                    insideType: self,
                    argumentParameters:  [
                        .argument(Double.self, name: "height"),
                        .argument(Int.self, name: "jump_distance"),
                    ]
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
