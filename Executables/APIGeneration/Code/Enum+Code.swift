import Foundation
import CodeGenerator
import CodeTranslator

extension ExtensionApi.Enum {
    private typealias CaseData<T> = (name: String, value: T)
    
    @CodeBuilder
    func code(definedInside insideType: InstanceType? = nil) -> some Code {
        if isBitfield == true {
            if values.contains(where: { $0.value < 0 }) {
                optionSetCode(forType: Int32.self, definedInside: insideType)
            } else {
                optionSetCode(forType: UInt32.self, definedInside: insideType)
            }
        } else {
            if values.contains(where: { $0.value < 0 }) {
                enumCode(forType: Int32.self, definedInside: insideType)
            } else {
                enumCode(forType: UInt32.self, definedInside: insideType)
            }
        }
    }
    
    /// Returns the name and cases of the enum.
    /// - Parameters:
    ///   - type: The type of the values.
    private func nameAndCases<T>(forType type: T.Type,
                                 definedInside insideType: InstanceType?) -> (name: String, cases: [CaseData<T>])
    where T : FixedWidthInteger {
        let translatedEnum = CodeLanguage.c.translateEnum(
            name: name.code(definedInside: insideType),
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
    
    private func enumCode<T>(forType type: T.Type,
                             definedInside insideType: InstanceType?) -> some Code
    where T : FixedWidthInteger {
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
            Container {
                ForEach(cases) { `case` in
                    Case(`case`.name, typedValue: `case`.value)
                }.align(offset: 1)
                
                if !staticProperties.isEmpty {
                    ForEach(staticProperties) { property in
                        Let(property.name)
                            .typed("Self").static().public()
                            .assign(".\(property.caseName)")
                    }.align(offset: 1).padding(.top)
                }
            }
        }
        .public()
    }
    
    private func optionSetCode<T>(forType type: T.Type,
                                  definedInside insideType: InstanceType?) -> some Code
    where T : FixedWidthInteger {
        let nameAndCases = self.nameAndCases(forType: type, definedInside: insideType)
        
        return OptionSet(nameAndCases.name, options: nameAndCases.cases, propertiesAccessControl: .public)
            .public()
            .align(offset: 1)
    }
}