import Foundation
import CodeTranslator
import SwiftSyntax

/// A representation of a Godot enum.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotEnum: Decodable {
    var name: GodotType
    var isBitfield: Bool?
    var values: [Value]
    
    // MARK: Value
    
    struct Value: Decodable {
        var name: String
        var value: Int
    }
    
    // MARK: Case
    
    private struct Case<T : FixedWidthInteger> {
        var name: String
        var value: T
    }
    
    // MARK: Syntax
    
    func syntax() -> DeclSyntax {
        if isBitfield == true {
            if values.contains(where: { $0.value < 0 }) {
                optionSetSyntax(forType: Int32.self)
            } else {
                optionSetSyntax(forType: UInt32.self)
            }
        } else {
            if values.contains(where: { $0.value < 0 }) {
                enumSyntax(forType: Int32.self)
            } else {
                enumSyntax(forType: UInt32.self)
            }
        }
    }
    
    /// Returns the name and cases of the enum.
    private func nameAndCases<T>(
        forType type: T.Type
    ) -> (name: String, cases: [Case<T>]) where T : FixedWidthInteger {
        let translatedEnum = CodeLanguage.c.translateEnum(
            name: name.syntax(),
            cases: values.map { $0.name },
            to: .swift
        )
        
        var cases = [Case<T>]()
        for i in 0..<values.count {
            let translatedCase = CodeLanguage.swift.protectNameIfKeyword(for: translatedEnum.cases[i])
            cases.append(.init(name: translatedCase, value: T(values[i].value)))
        }
        
        return (translatedEnum.name, cases)
    }
    
    private func enumSyntax<T>(forType type: T.Type) -> DeclSyntax
    where T : FixedWidthInteger {
        let (name, temporaryCases) = self.nameAndCases(forType: type)
        
        var alreadyAddedCases = [T : String]()
        var caseStrings = [String]()
        
        for `case` in temporaryCases {
            // Sometimes, given enums don't have unique values, and two cases can have the same value.
            // When it's the case, every value already in the enum will be considered static properties.
            if let alreadyAddedCase = alreadyAddedCases[`case`.value] {
                // The value isn't unique.
                caseStrings.append("public static let \(`case`.name): Self = .\(alreadyAddedCase)")
            } else {
                // The value is unique.
                caseStrings.append("case \(`case`.name) = \(`case`.value)")
                alreadyAddedCases[`case`.value] = `case`.name
            }
        }
        
        return DeclSyntax("""
        public enum \(raw: name): \(raw: T.self) {
            \(raw: caseStrings.joined(separator: "\n"))
        }
        """)
    }
    
    private func optionSetSyntax<T>(
        forType type: T.Type
    ) -> DeclSyntax where T : FixedWidthInteger {
        let (name, cases) = self.nameAndCases(forType: type)
        
        let caseStrings = cases.map {
            "public static let \($0.name): Self = .init(rawValue: \($0.value))"
        }
        
        return DeclSyntax("""
        public struct \(raw: name): OptionSet {
            public let rawValue: \(raw: T.self)
        
            public init(rawValue: \(raw: T.self)) {
                self.rawValue = rawValue
            }
        
            \(raw: caseStrings.joined(separator: "\n"))
        }
        """)
    }
}
