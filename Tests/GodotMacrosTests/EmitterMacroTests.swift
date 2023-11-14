import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "Emitter": EmitterMacro.self,
]
#endif

final class EmitterMacroTests: XCTestCase {
    func testEmitter() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter
            public struct Jumped {}
            """,
            expandedSource: """
            public struct Jumped {
            
                public typealias SignalInput = ()
            
                public static let signalName: Godot.GodotStringName = "jumped"
            
                public weak private(set) var object: Godot.Object?
            
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            
                public func emit() {
                    _ = object?.emitSignal(Self.signalName)
                }}
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }

            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testEmitterWithBackticks() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter
            public struct `Jumped` {}
            """,
            expandedSource: """
            public struct `Jumped` {
            
                public typealias SignalInput = ()
            
                public static let signalName: Godot.GodotStringName = "jumped"
            
                public weak private(set) var object: Godot.Object?
            
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            
                public func emit() {
                    _ = object?.emitSignal(Self.signalName)
                }}
            
            public var emitterJumped: `Jumped` {
                .init(self)
            }
            
            extension `Jumped`: Godot.Emitter {
            }

            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testEmitterWithArgs() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter(args: ("force", Double), ("direction", Vector3))
            public struct Jumped {}
            """,
            expandedSource: """
            public struct Jumped {
            
                public typealias SignalInput = (Double, Vector3)
            
                public static let signalName: Godot.GodotStringName = "jumped"
            
                public weak private(set) var object: Godot.Object?
            
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            
                public func emit(force: Double, direction: Vector3) {
                    _ = object?.emitSignal(Self.signalName, force, direction)
                }}
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }

            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testEmitterWithSignalName() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter(signal: "jumped_badly")
            public struct Jumped {}
            """,
            expandedSource: """
            public struct Jumped {
            
                public typealias SignalInput = ()
            
                public static let signalName: Godot.GodotStringName = "jumped_badly"
            
                public weak private(set) var object: Godot.Object?
            
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            
                public func emit() {
                    _ = object?.emitSignal(Self.signalName)
                }}
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }

            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testEmitterWithArgsAndSignalName() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter(args: ("force", Double), ("direction", Vector3), signal: "jumped_badly")
            public struct Jumped {}
            """,
            expandedSource: """
            public struct Jumped {
            
                public typealias SignalInput = (Double, Vector3)
            
                public static let signalName: Godot.GodotStringName = "jumped_badly"
            
                public weak private(set) var object: Godot.Object?
            
                fileprivate init(_ object: Godot.Object) {
                    self.object = object
                }
            
                public func emit(force: Double, direction: Vector3) {
                    _ = object?.emitSignal(Self.signalName, force, direction)
                }}
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }
            
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testEmitterNotPublic() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter
            private struct Jumped {}
            """,
            expandedSource: """
            private struct Jumped {}
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }
            """,
            diagnostics: [.init(message: "Emitter is not public",
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
    
    func testEmitterNotStruct() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter
            private class Jumped {}
            """,
            expandedSource: """
            private class Jumped {}
            
            extension Jumped: Godot.Emitter {
            }
            """,
            diagnostics: [.init(message: "Emitter must be a 'struct'",
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
    
    func testEmitterNotEmpty() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Emitter
            public struct Jumped {
                private let bla: Int = 3
            }
            """,
            expandedSource: """
            public struct Jumped {
                private let bla: Int = 3
            }
            
            public var emitterJumped: Jumped {
                .init(self)
            }
            
            extension Jumped: Godot.Emitter {
            }
            """,
            diagnostics: [.init(message: "Emitter must have an empty body",
                                line: 2,
                                column: 22,
                                severity: .error,
                                fixIts: [.init(message: "Remove 'Jumped' body")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
}
