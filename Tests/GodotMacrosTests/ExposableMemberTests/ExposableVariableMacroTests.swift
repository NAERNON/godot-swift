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

final class ExposableVariableMacroTests: XCTestCase {
    func testPublicVariableWithType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var myVariable: Int = 0
            """,
            expandedSource: """
            public var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithDidSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var myVariable: Int? {
                didSet { }
            }
            """,
            expandedSource: """
            public var myVariable: Int? {
                didSet { }
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithWillSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var myVariable: Int? {
                willSet { }
            }
            """,
            expandedSource: """
            public var myVariable: Int? {
                willSet { }
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithHint() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            @Hint(someHint)
            public var myVariable: Int = 0
            """,
            expandedSource: """
            @Hint(someHint)
            public var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: someHint,
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testOpenVariableWithType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            open var myVariable: Int = 0
            """,
            expandedSource: """
            open var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithoutType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var myVariable = 0
            """,
            expandedSource: """
            public var myVariable = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithoutInitializer() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var myVariable: SomeType
            """,
            expandedSource: """
            public var myVariable: SomeType
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
            @ExpositionAvailable(MyClass)
            public let myVariable: Int = 0
            """,
            expandedSource: """
            public let myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
            @ExpositionAvailable(MyClass)
            public let myVariable = 0
            """,
            expandedSource: """
            public let myVariable = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
            @ExpositionAvailable(MyClass)
            public var myVariable: Int {
                0
            }
            """,
            expandedSource: """
            public var myVariable: Int {
                0
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
            @ExpositionAvailable(MyClass)
            public var myVariable: Int {
                get { 0 }
            }
            """,
            expandedSource: """
            public var myVariable: Int {
                get { 0 }
            }
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
            @ExpositionAvailable(MyClass)
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
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
    
    func testPublicVariableWithPrivateSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public private(set) var myVariable: Int = 0
            """,
            expandedSource: """
            public private(set) var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPublicVariableWithFilePrivateSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public fileprivate(set) var myVariable: Int = 0
            """,
            expandedSource: """
            public fileprivate(set) var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    func testPublicVariableWithInternalSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public internal(set) var myVariable: Int = 0
            """,
            expandedSource: """
            public internal(set) var myVariable: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.myVariable,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.myVariable),
                    getterName: "get_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().myVariable).consumeByGodot(ontoUnsafePointer: returnPtr!)
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
    
    func testPublicVariableWithBackticks() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @ExpositionAvailable(MyClass)
            public var `myVariable`: Int = 0
            """,
            expandedSource: """
            public var `myVariable`: Int = 0
            
            private static func _$godotRegister_myVariable() {
                Godot.GodotExtension.classRegistrar.registerVariable(
                    named: "my_variable",
                    keyPath: \\.`myVariable`,
                    insideType: self,
                    hint: ._defaultForValue(at: \\MyClass.`myVariable`),
                    getterName: "get_my_variable",
                    setterName: "set_my_variable"
                ) { _, instancePtr, args, argsCount, returnPtr, error in
                    Godot.Variant.Storage(Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().`myVariable`).consumeByGodot(ontoUnsafePointer: returnPtr!)
                } setterCall: { _, instancePtr, args, argsCount, returnPtr, error in
                    Unmanaged<MyClass> .fromOpaque(instancePtr!).takeUnretainedValue().`myVariable` = .decodeCompatibleVariantStorage(.init(godotExtensionPointer: args!.advanced(by: 0).pointee!))
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
            @ExpositionAvailable(MyClass)
            private var myVariable: Int = 0
            """,
            expandedSource: """
            private var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
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
            @ExpositionAvailable(MyClass)
            internal var myVariable: Int = 0
            """,
            expandedSource: """
            internal var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
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
            @ExpositionAvailable(MyClass)
            var myVariable: Int = 0
            """,
            expandedSource: """
            var myVariable: Int = 0
            """,
            diagnostics: [.init(message: "Declaration is not exposable",
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
