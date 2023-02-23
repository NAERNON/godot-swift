import Foundation
import CodeGenerator

extension ExtensionApi.Enum {
    private typealias CaseData<T> = (name: String, value: T)
    
    @CodeBuilder
    func code(definedInside insideType: InstanceType? = nil) -> some Code {
        if isBitfield == true {
            optionSetCode(forType: Int.self, definedInside: insideType)
        } else {
            enumCode(forType: Int.self, definedInside: insideType)
        }
    }
    
    /// Returns the name and cases of the enum.
    /// - Parameters:
    ///   - type: The type of the values.
    private func nameAndCases<T: BinaryInteger>(
        forType type: T.Type,
        definedInside insideType: InstanceType?
    ) -> (name: String, cases: [CaseData<T>]) {
        let translatedEnum = CodeLanguage.c.translateEnum(
            name: name.toSwift(definedInside: insideType),
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
                                            definedInside insideType: InstanceType?) -> some Code {
        let nameAndCases = self.nameAndCases(forType: type, definedInside: insideType)
        
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
                }.align(offset: 1)
                
                if !staticProperties.isEmpty {
                    ForEach(staticProperties) { property in
                        Let(property.name)
                            .typed("Self").static().public()
                            .assign(".\(property.caseName)")
                    }.align(offset: 1)
                }
            }
        }
        .public()
    }

    private func optionSetCode<T: BinaryInteger>(forType type: T.Type,
                                                 definedInside insideType: InstanceType?) -> some Code {
        let nameAndCases = self.nameAndCases(forType: type, definedInside: insideType)

        return OptionSet(nameAndCases.name, options: nameAndCases.cases)
            .public()
            .align(offset: 1)
    }
}
