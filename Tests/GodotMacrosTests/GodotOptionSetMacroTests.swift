import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "GodotOptionSet": GodotOptionSetMacro.self,
]
#endif

final class GodotOptionSetMacroTests: XCTestCase {
    func testPrivateOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            private struct SomeOptionSet {}
            """,
            expandedSource: """
            private struct SomeOptionSet {
            
                fileprivate typealias RawValue = Int64
            
                fileprivate let rawValue: Int64
            
                fileprivate init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                fileprivate static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                fileprivate static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                fileprivate static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                fileprivate static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                fileprivate static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testFileprivateOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            fileprivate struct SomeOptionSet {}
            """,
            expandedSource: """
            fileprivate struct SomeOptionSet {
            
                fileprivate typealias RawValue = Int64
            
                fileprivate let rawValue: Int64
            
                fileprivate init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                fileprivate static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                fileprivate static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                fileprivate static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                fileprivate static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                fileprivate static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testNoAccessModifierOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            struct SomeOptionSet {}
            """,
            expandedSource: """
            struct SomeOptionSet {
            
                internal typealias RawValue = Int64
            
                internal let rawValue: Int64
            
                internal init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                internal static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                internal static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                internal static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                internal static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                internal static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testInternalOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            internal struct SomeOptionSet {}
            """,
            expandedSource: """
            internal struct SomeOptionSet {
            
                internal typealias RawValue = Int64
            
                internal let rawValue: Int64
            
                internal init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                internal static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                internal static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                internal static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                internal static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                internal static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testPublicOptionSet() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            public struct SomeOptionSet {}
            """,
            expandedSource: """
            public struct SomeOptionSet {
            
                public typealias RawValue = Int64
            
                public let rawValue: Int64
            
                public init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                public static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                public static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                public static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                public static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                public static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testOptionSetExposedValues() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            public struct SomeOptionSet {
                public static let value: Self = .init(rawValue: 0)
                public static let value2: SomeOptionSet = .init(rawValue: 0)
                public static let `anotherValue` = Self (rawValue: 0)
                public static let anotherValue2 = SomeOptionSet(rawValue: 0)
            
                public static var wrongValue1 = SomeOptionSet(rawValue: 0)
                public static let wrongValue2 = Wrong(rawValue: 0)
                public let wrongValue3 = SomeOptionSet(rawValue: 0)
                internal static let wrongValue3 = SomeOptionSet(rawValue: 0)
            }
            """,
            expandedSource: """
            public struct SomeOptionSet {
                public static let value: Self = .init(rawValue: 0)
                public static let value2: SomeOptionSet = .init(rawValue: 0)
                public static let `anotherValue` = Self (rawValue: 0)
                public static let anotherValue2 = SomeOptionSet(rawValue: 0)
            
                public static var wrongValue1 = SomeOptionSet(rawValue: 0)
                public static let wrongValue2 = Wrong(rawValue: 0)
                public let wrongValue3 = SomeOptionSet(rawValue: 0)
                internal static let wrongValue3 = SomeOptionSet(rawValue: 0)
            
                public typealias RawValue = Int64
            
                public let rawValue: Int64
            
                public init(rawValue: Int64) {
                    self.rawValue = rawValue
                }
            }
            
            extension SomeOptionSet: Godot.GodotOptionSet, Godot.VariantCodable {
                public static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                public static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                public static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                public static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                public static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    [
                    ("Value", Self.value.rawValue),
                    ("Value2", Self.value2.rawValue),
                    ("Another Value", Self.`anotherValue`.rawValue),
                    ("Another Value2", Self.anotherValue2.rawValue),]
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    [
                    ("SOME_OPTION_SET_VALUE", Self.value.rawValue),
                    ("SOME_OPTION_SET_VALUE2", Self.value2.rawValue),
                    ("SOME_OPTION_SET_ANOTHER_VALUE", Self.`anotherValue`.rawValue),
                    ("SOME_OPTION_SET_ANOTHER_VALUE2", Self.anotherValue2.rawValue),]
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
    
    func testPublicOptionSetWithBackticks() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            public struct `SomeOptionSet` {}
            """,
            expandedSource: """
            public struct `SomeOptionSet` {
            
                public typealias RawValue = Int64
            
                public let rawValue: Int64
            
                public init(rawValue: Int64) {
                    self.rawValue = rawValue
                }}
            
            extension `SomeOptionSet`: Godot.GodotOptionSet, Godot.VariantCodable {
                public static let variantRepresentationType: Godot.Variant.RepresentationType = RawValue.variantRepresentationType
            
                public static func encodeVariantStorage(_ value: Self) -> Godot.Variant.Storage {
                    RawValue.encodeVariantStorage(value.rawValue)
                }
            
                public static func decodeCompatibleVariantStorage(_ storage: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.decodeCompatibleVariantStorage(storage))
                }
            
                public static func decodeVariantStorage(_ storage: borrowing Godot.Variant.Storage) throws -> Self {
                    Self (rawValue: try RawValue.decodeVariantStorage(storage))
                }
                public static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    []
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
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
    
    func testDefinitionOnEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotOptionSet
            private enum SomeOptionSet {}
            """,
            expandedSource: """
            private enum SomeOptionSet {}
            """,
            diagnostics: [.init(message: "Godot option set must be a 'struct'",
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
