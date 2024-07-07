import Foundation
import Utils

/// A representation of a Godot enum.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotEnum: Decodable {
    var name: GodotType
    var isBitfield: Bool?
    var values: [Value]
    
    struct Value: Decodable {
        var name: String
        var value: Int
    }
}

extension GodotEnum {
    private struct Case<T : FixedWidthInteger> {
        var name: String
        var value: T
    }
    
    func declSyntax() -> Syntax {
        if isBitfield == true {
            optionSetSyntax(forType: Int64.self)
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
        let translatedEnum = translatedEnum(
            name: name.syntax().formatted(),
            cases: values.map { $0.name }
        )
        
        var cases = [Case<T>]()
        for i in 0..<values.count {
            let translatedCase = translatedEnum.cases[i].backticksKeyword()
            cases.append(.init(name: translatedCase, value: T(values[i].value)))
        }
        
        return (translatedEnum.name, cases)
    }
    
    private func enumSyntax<T>(forType type: T.Type) -> Syntax
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
        
        return Syntax("public enum \(name): \(T.self), GodotEnum") {
            """
            \(caseStrings.joined(separator: "\n"))
            
            \(hintValuesFunctionSyntax(forType: type))
            """
        }
    }
    
    private func optionSetSyntax<T>(
        forType type: T.Type
    ) -> Syntax where T : FixedWidthInteger {
        let (name, cases) = self.nameAndCases(forType: type)
        
        let caseStrings = cases.map {
            "public static let \($0.name): Self = .init(rawValue: \($0.value))"
        }
        
        return Syntax("public struct \(name): GodotOptionSet") {
            """
            public let rawValue: \(T.self)
            
            public init(rawValue: \(T.self)) {
                self.rawValue = rawValue
            }
            
            \(caseStrings.joined(separator: "\n"))
            
            \(hintValuesFunctionSyntax(forType: type))
            """
        }
    }
    
    private func hintValuesFunctionSyntax<T>(
        forType type: T.Type
    ) -> Syntax where T : FixedWidthInteger {
        var hintNamesAndValues = [T : String]()
        
        for `case` in self.nameAndCases(forType: type).cases
        where hintNamesAndValues[`case`.value] == nil
        {
            hintNamesAndValues[`case`.value] = NamingConvention.camel.makeSentence(`case`.name)
        }
        
        return Syntax("public static func hintValues() -> [(name: String, value: RawValue)]") {
            "["
            for (value, name) in hintNamesAndValues.sorted(by: { $0.key < $1.key }) {
                "   (\"\(name)\", \(value)),"
            }
            "]"
        }
    }
}

// MARK: - Translation

private func translatedEnum(
    name: String,
    cases: [String],
    smartTranslation: Bool = true
) -> (name: String, cases: [String]) {
    guard !cases.isEmpty else {
        return (name, cases)
    }
    
    let casesComponents = cases.map {
        NamingConvention.snake.decompose(string: $0).lowercased()
    }
    
    // We count the number of same components on the left side on all the enums.
    // They will be removed.
    //
    // Ex: `["SIDE_LEFT", "SIDE_TOP", "SIDE_RIGHT", "SIDE_BOTTOM"]`
    // There is only one component common to all the cases : `SIDE`.
    var numberOfComponentsToRemove = 0
    
    while true && smartTranslation {
        let firstCaseComponents = casesComponents[0]
        guard numberOfComponentsToRemove < firstCaseComponents.count else {
            break
        }
        
        let component = firstCaseComponents[numberOfComponentsToRemove]
        var areSameComponents = true
        for caseComponents in casesComponents {
            if caseComponents.count <= numberOfComponentsToRemove
                || caseComponents[numberOfComponentsToRemove] != component {
                areSameComponents = false
                break
            }
        }
        
        guard areSameComponents else { break }
        
        numberOfComponentsToRemove += 1
    }
    
    var editedCasesComponents = casesComponents
    for caseIndex in 0..<editedCasesComponents.count {
        if editedCasesComponents[caseIndex].count > numberOfComponentsToRemove {
            editedCasesComponents[caseIndex].removeFirst(numberOfComponentsToRemove)
        }
    }
    
    var casesStrings = [String]()
    var casesStringsSet = Set<String>()
    
    for caseIndex in 0..<casesComponents.count {
        let editedCaseComponents = editedCasesComponents[caseIndex]
        var caseString = NamingConvention.camel.recompose(editedCaseComponents)
        
        // If the case string generated is empty, or doesn't begin with a letter,
        // we use the original components, not the one without the same components..
        if caseString.isEmpty || !caseString.first!.isLetter {
            caseString = NamingConvention.camel.recompose(casesComponents[caseIndex])
        }
        
        guard casesStringsSet.insert(caseString).inserted else {
            return translatedEnum(name: name, cases: cases, smartTranslation: false)
        }
        
        casesStrings.append(caseString)
    }
    
    return (name, casesStrings)
}
