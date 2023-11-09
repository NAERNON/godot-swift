import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "GodotEnum": GodotEnumMacro.self,
]
#endif

final class GodotEnumMacroTests: XCTestCase {
    func testPrivateEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            private enum SomeEnum: Int64 {}
            """,
            expandedSource: """
            private enum SomeEnum: Int64 {}
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                fileprivate static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                fileprivate func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                fileprivate static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                fileprivate static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
                }
                fileprivate static func hintValues() -> [(name: Swift.String, value: RawValue)] {
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
    
    func testFileprivateEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            fileprivate enum SomeEnum: Int64 {}
            """,
            expandedSource: """
            fileprivate enum SomeEnum: Int64 {}
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                fileprivate static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                fileprivate func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                fileprivate static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                fileprivate static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
                }
                fileprivate static func hintValues() -> [(name: Swift.String, value: RawValue)] {
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
    
    func testNoAccessModifierEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            enum SomeEnum: Int64 {}
            """,
            expandedSource: """
            enum SomeEnum: Int64 {}
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                internal static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                internal func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                internal static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                internal static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
                }
                internal static func hintValues() -> [(name: Swift.String, value: RawValue)] {
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
    
    func testInternalEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            internal enum SomeEnum: Int64 {}
            """,
            expandedSource: """
            internal enum SomeEnum: Int64 {}
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                internal static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                internal func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                internal static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                internal static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
                }
                internal static func hintValues() -> [(name: Swift.String, value: RawValue)] {
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
    
    func testPublicEnum() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            public enum SomeEnum: Int64 {}
            """,
            expandedSource: """
            public enum SomeEnum: Int64 {}
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                public static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                public func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                public static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                public static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    []
                }
                public static func hintValues() -> [(name: Swift.String, value: RawValue)] {
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
    
    func testEnumExposedValues() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            public enum SomeEnum: Int64 {
                case someValue
                case someValue2, someValue3, someValue4
                case `another`
                case anotherGOODValue
            }
            """,
            expandedSource: """
            public enum SomeEnum: Int64 {
                case someValue
                case someValue2, someValue3, someValue4
                case `another`
                case anotherGOODValue
            }
            
            extension SomeEnum: Godot.VariantConvertible, Godot.GodotEnum {
                public static let variantType: Godot.Variant.RepresentationType = RawValue.variantType
            
                public func makeVariant() -> Godot.Variant.Storage {
                    rawValue.makeVariant()
                }
            
                public static func fromCompatibleVariant(_ variant: borrowing Godot.Variant.Storage) -> Self {
                    Self (rawValue: RawValue.fromCompatibleVariant(variant))!
                }
            
                public static func fromVariant(_ variant: borrowing Godot.Variant.Storage) throws -> Self {
                    enum Error: Swift.Error {
                        case incorrectRawValue
            
                        var errorDescription: Swift.String {
                            "Incorrect raw value"
                        }
                    }
            
                    let rawValue = try RawValue.fromVariant(variant)
                    guard let value = Self (rawValue: rawValue) else {
                        throw Error.incorrectRawValue
                    }
            
                    return value
                }
                fileprivate static func godotExposableValues() -> [(Godot.GodotStringName, Int64)] {
                    [
                    ("SOME_ENUM_SOME_VALUE", Self.someValue.rawValue),
                    ("SOME_ENUM_SOME_VALUE2", Self.someValue2.rawValue),
                    ("SOME_ENUM_SOME_VALUE3", Self.someValue3.rawValue),
                    ("SOME_ENUM_SOME_VALUE4", Self.someValue4.rawValue),
                    ("SOME_ENUM_ANOTHER", Self.`another`.rawValue),
                    ("SOME_ENUM_ANOTHER_GOOD_VALUE", Self.anotherGOODValue.rawValue),]
                }
                public static func hintValues() -> [(name: Swift.String, value: RawValue)] {
                    [
                    ("Some Value", Self.someValue.rawValue),
                    ("Some Value2", Self.someValue2.rawValue),
                    ("Some Value3", Self.someValue3.rawValue),
                    ("Some Value4", Self.someValue4.rawValue),
                    ("Another", Self.`another`.rawValue),
                    ("Another GOOD Value", Self.anotherGOODValue.rawValue),]
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
    
    func testNoRawType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            public enum SomeEnum {}
            """,
            expandedSource: """
            public enum SomeEnum {}
            """,
            diagnostics: [.init(message: "Godot enum does not have an 'Int64' raw type",
                                line: 1,
                                column: 1,
                                severity: .error,
                                fixIts: [.init(message: "Insert 'Int64'")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testWrongRawType() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            public enum SomeEnum: Double {}
            """,
            expandedSource: """
            public enum SomeEnum: Double {}
            """,
            diagnostics: [.init(message: "Godot enum does not have an 'Int64' raw type",
                                line: 2,
                                column: 23,
                                severity: .error,
                                fixIts: [])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testDefinitionOnStruct() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @GodotEnum
            public struct SomeEnum {}
            """,
            expandedSource: """
            public struct SomeEnum {}
            """,
            diagnostics: [.init(message: "Godot enum must be an 'enum'",
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
