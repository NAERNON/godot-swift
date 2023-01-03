import Foundation

extension ExtensionApi.Enum {
    private typealias CaseData<T> = (name: String, value: T)
    
    @CodeBuilder
    func code(usedInside insideType: InstanceType? = nil) -> some SwiftCode {
        if isBitfield == true {
            optionSetCode(forType: Int.self, usedInside: insideType)
        } else {
            enumCode(forType: Int.self, usedInside: insideType)
        }
    }
    
    /// Returns the name and cases of the enum.
    /// - Parameters:
    ///   - type: The type of the values.
    private func nameAndCases<T: BinaryInteger>(
        forType type: T.Type,
        usedInside insideType: InstanceType?
    ) -> (name: String, cases: [CaseData<T>]) {
        let translatedEnum = CodeLanguage.c.translateEnum(
            name: name.toSwift(usedInside: insideType),
            cases: values.map { $0.name },
            to: .swift
        )

        var cases = [(String, T)]()
        for i in 0..<values.count {
            let translatedCase = CodeLanguage.swift.protectNameIfKeyword(for: translatedEnum.cases[i])
            cases.append((translatedCase, T(values[i].value)))
        }

        return (translatedEnum.name, cases)
    }

    private func enumCode<T: BinaryInteger>(forType type: T.Type,
                                            usedInside insideType: InstanceType?) -> some SwiftCode {
        let nameAndCases = self.nameAndCases(forType: type, usedInside: insideType)
        
        // Sometimes, given enums don't have unique values, and two cases can have the same value.
        // When it's the case, every value already in the enum will be considered static properties.
        var cases = [CaseData<T>]()
        var staticProperties = [(name: String, caseName: String)]()
        
        for `case` in nameAndCases.cases {
            if let alreadyAddedCase = cases.first(where: { $0.value == `case`.value }) {
                // The value isn't unique.
                staticProperties.append((`case`.name, alreadyAddedCase.name))
            } else {
                // The value is unique.
                cases.append((`case`.name, `case`.value))
            }
        }

        return Enum(nameAndCases.name, type: T.self) {
            Group {
                ForEach(cases) { `case` in
                    Case(`case`.name, typedValue: `case`.value)
                }.aligned(1)
                
                if !staticProperties.isEmpty {
                    Spacer()
                    ForEach(staticProperties) { property in
                        Property(property.name)
                            .letDefined().type("Self").static().public()
                            .assign(value: ".\(property.caseName)")
                    }.aligned(1)
                }
            }
        }
        .public()
    }

    private func optionSetCode<T: BinaryInteger>(forType type: T.Type,
                                                 usedInside insideType: InstanceType?) -> some SwiftCode {
        let nameAndCases = self.nameAndCases(forType: type, usedInside: insideType)

        return OptionSet(nameAndCases.name,
                         options: nameAndCases.cases)
        .public()
        .aligned(1)
    }
}
