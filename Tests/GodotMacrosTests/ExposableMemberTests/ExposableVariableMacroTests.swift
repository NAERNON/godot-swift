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

final class ExposableVariableMacroTests: XCTestCase {
    func testPublicVariableWithType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable: Int = 0
            """,
            expandedSource: """
            public var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithoutTypeInt() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable = 0
            """,
            expandedSource: """
            public var myVariable = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithoutTypeDouble() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable = 0.0
            """,
            expandedSource: """
            public var myVariable = 0.0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Double.self,
                    insideType: self,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = Double.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithoutTypeString() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable = "bla"
            """,
            expandedSource: """
            public var myVariable = "bla"
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Swift.String.self,
                    insideType: self,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = Swift.String.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithGetSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable: Int {
                get { }
                set { }
            }
            """,
            expandedSource: """
            public var myVariable: Int {
                get { }
                set { }
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = Int.fromCompatibleVariant(Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableLetWithType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public let myVariable: Int = 0
            """,
            expandedSource: """
            public let myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPublicVariableLetWithoutType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public let myVariable = 0
            """,
            expandedSource: """
            public let myVariable = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPublicVariableWithImplicitGet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable: Int {
                0
            }
            """,
            expandedSource: """
            public var myVariable: Int {
                0
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPublicVariableWithGet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            public var myVariable: Int {
                get { 0 }
            }
            """,
            expandedSource: """
            public var myVariable: Int {
                get { 0 }
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegister.registerVariable(
                    named: "my_variable",
                    type: Int.self,
                    insideType: self,
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPrivateVariable() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            private var myVariable: Int = 0
            """,
            expandedSource: """
            private var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not an exposable member",
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
    
    func testInternalVariable() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            internal var myVariable: Int = 0
            """,
            expandedSource: """
            internal var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not an exposable member",
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
    
    func testImplicitInternalVariable() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExposableMember(MyClass)
            var myVariable: Int = 0
            """,
            expandedSource: """
            var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not an exposable member",
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
