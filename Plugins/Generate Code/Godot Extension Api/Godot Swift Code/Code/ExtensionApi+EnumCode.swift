import Foundation

extension ExtensionApi.Enum {
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

    private func nameAndCases<T: BinaryInteger>(forType type: T.Type, translated: Bool) -> (name: String,
                                                                                            cases: [(name: String, value: T)]) {
        let translatedEnum = CodeLanguage.c.translateEnum(
            to: translated ? .swift : .c,
            name: name,
            cases: values.map { $0.name }
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

        return Enum(nameAndCases.name, type: T.self) {
            ForEach(nameAndCases.cases) { caseCode in
                Case(caseCode.name, typedValue: caseCode.value)
            }.aligned(additionalLength: 1)
        }
    }

    private func optionSetCode<T: BinaryInteger>(forType type: T.Type, translated: Bool) -> some SwiftCode {
        let nameAndCases = self.nameAndCases(forType: type, translated: translated)

        return OptionSetStruct(nameAndCases.name,
                               options: nameAndCases.cases,
                               additionalAlignmentLength: 1)
    }
}
