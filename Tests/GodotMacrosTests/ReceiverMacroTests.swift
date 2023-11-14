import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "Receiver": ReceiverMacro.self,
]
#endif

final class ReceiverMacroTests: XCTestCase {
    func testReceiver() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public func someFunction() {}
            """,
            expandedSource: """
            public func someFunction() {}
            
            public struct Receiver_someFunction: Godot.Receiver {
                public typealias SignalInput = ()
            
                public static let receiverName: Godot.GodotStringName = "some_function"
            
                public weak private (set) var object: Godot.Object?
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            }
            
            public var someFunctionReceiver: Receiver_someFunction {
                .init(self)
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testReceiverOneInput() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public func someFunction(a: Int) {}
            """,
            expandedSource: """
            public func someFunction(a: Int) {}
            
            public struct Receiver_someFunction: Godot.Receiver {
                public typealias SignalInput = (Int)
            
                public static let receiverName: Godot.GodotStringName = "some_function"
            
                public weak private (set) var object: Godot.Object?
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            }
            
            public var someFunctionReceiver: Receiver_someFunction {
                .init(self)
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testReceiverTwoInputs() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public func someFunction(a: Int, and b: Double) {}
            """,
            expandedSource: """
            public func someFunction(a: Int, and b: Double) {}
            
            public struct Receiver_someFunction: Godot.Receiver {
                public typealias SignalInput = (Int, Double)
            
                public static let receiverName: Godot.GodotStringName = "some_function"
            
                public weak private (set) var object: Godot.Object?
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            }
            
            public var someFunctionReceiver: Receiver_someFunction {
                .init(self)
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testReceiverWithBackticks() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public func `someFunction`() {}
            """,
            expandedSource: """
            public func `someFunction`() {}
            
            public struct Receiver_someFunction: Godot.Receiver {
                public typealias SignalInput = ()
            
                public static let receiverName: Godot.GodotStringName = "some_function"
            
                public weak private (set) var object: Godot.Object?
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            }
            
            public var someFunctionReceiver: Receiver_someFunction {
                .init(self)
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testReceiverNotPublic() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            private func someFunction() {}
            """,
            expandedSource: """
            private func someFunction() {}
            """,
            diagnostics: [.init(message: "Receiver is not public",
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
    
    func testReceiverOverride() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public override func someFunction() {}
            """,
            expandedSource: """
            public override func someFunction() {}
            """,
            diagnostics: [.init(message: "Receiver cannot be an override",
                                line: 2,
                                column: 8,
                                severity: .error,
                                fixIts: [])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testReceiverNotFunction() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Receiver
            public struct SomeStruct {}
            """,
            expandedSource: """
            public struct SomeStruct {}
            """,
            diagnostics: [.init(message: "Receiver must be a function",
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
