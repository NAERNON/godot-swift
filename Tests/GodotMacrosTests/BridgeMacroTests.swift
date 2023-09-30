import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

let testMacros: [String: Macro.Type] = [
    "Bridge": BridgeMacro.self,
]
#endif

final class BridgeMacroTests: XCTestCase {
    func testBridgeSuccess() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Bridge
            public enum SomeGameBridge {}
            """,
            expandedSource: """
            public enum SomeGameBridge {}
            
            @_cdecl("somegamebridge_godot_init")
            public func SomeGameBridge_godot_init(
                getProcAddress: Godot.GodotExtension.GetProcAddress,
                libraryPtr: Godot.GodotExtension.ClassLibraryPointer,
                initializationPtr: Godot.GodotExtension.InitializationPointer
            ) -> Godot.GodotExtension.InitializationResult {
                do {
                    try Godot.GodotExtension.initialize(
                        using: SomeGameBridge .self,
                        getProcAddress: getProcAddress,
                        libraryPtr: libraryPtr,
                        initializationPtr: initializationPtr
                    )
                    return 1
                } catch {
                    return 0
                }
            }
            
            extension SomeGameBridge: Godot.Bridge {
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testNoAccessModifierBridge() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Bridge
            enum SomeGameBridge {}
            """,
            expandedSource: """
            enum SomeGameBridge {}
            
            extension SomeGameBridge: Godot.Bridge {
            }
            """,
            diagnostics: [.init(message: "Bridge must be public", 
                                line: 2,
                                column: 1,
                                severity: .error,
                                fixIts: [.init(message: "Insert 'public'")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPrivateBridge() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Bridge
            private enum SomeGameBridge {}
            """,
            expandedSource: """
            private enum SomeGameBridge {}
            
            extension SomeGameBridge: Godot.Bridge {
            }
            """,
            diagnostics: [.init(message: "Bridge must be public", 
                                line: 2,
                                column: 1,
                                severity: .error,
                                fixIts: [.init(message: "Replace 'private' with 'public'")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testInternalBridge() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Bridge
            internal enum SomeGameBridge {}
            """,
            expandedSource: """
            internal enum SomeGameBridge {}
            
            extension SomeGameBridge: Godot.Bridge {
            }
            """,
            diagnostics: [.init(message: "Bridge must be public", 
                                line: 2,
                                column: 1,
                                severity: .error,
                                fixIts: [.init(message: "Replace 'internal' with 'public'")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
}
