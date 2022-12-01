import Foundation

extension ExtensionApi.Enum {
    private typealias CaseData<T> = (name: String, value: T)
    
    @CodeBuilder
    func code(translated: Bool) -> some SwiftCode {
        if isBitfield == true {
            optionSetCode(forType: UInt32.self, translated: translated)
        } else {
            if values.contains(where: { $0.value < 0 }) {
                enumCode(forType: Int32.self, translated: translated)
            } else {
                enumCode(forType: UInt32.self, translated: translated)
            }
        }
    }
    
    /// Returns the name and cases of the enum.
    /// - Parameters:
    ///   - type: The type of the values.
    ///   - translated: A Boolean value indicating whether the cases should be translated to Swift.
    private func nameAndCases<T: BinaryInteger>(forType type: T.Type, translated: Bool) -> (name: String,
                                                                                            cases: [CaseData<T>]) {
        let translatedEnum = CodeLanguage.c.translateEnum(
            name: name,
            cases: values.map { $0.name },
            to: translated ? .swift : .c
        )

        var cases = [(String, T)]()
        for i in 0..<values.count {
            let translatedCase = CodeLanguage.swift.protectNameIfKeyword(for: translatedEnum.cases[i])
            cases.append((translatedCase, T(values[i].value)))
        }

        return (translatedEnum.name, cases)
    }

    private func enumCode<T: BinaryInteger>(forType type: T.Type, translated: Bool) -> some SwiftCode {
        let nameAndCases = self.nameAndCases(forType: type, translated: translated)
        
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

    private func optionSetCode<T: BinaryInteger>(forType type: T.Type, translated: Bool) -> some SwiftCode {
        let nameAndCases = self.nameAndCases(forType: type, translated: translated)

        return OptionSet(nameAndCases.name,
                         options: nameAndCases.cases)
        .public()
        .aligned(1)
    }
}