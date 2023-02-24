import Foundation
import CodeGenerator
import CodeTranslation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func constantsCode() -> some Code {
        if let constants,
           !constants.isEmpty {
            Mark("Constants", isSeparator: true)
            
            Group {
                ForEach(constants.consecutiveSplit { $0.type != $1.type }) { sameTypeConstants in
                    ForEach(sameTypeConstants) { constant in
                        Let(constantName(constant.name))
                            .static().public().typed(constant.type.code())
                            .assign(constant.type.instantationCode(forValue: constant.value))
                    }.align(offset: 1)
                }
            }
        }
    }
    
    private func constantName(_ name: String) -> String {
        let newName = NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
        return CodeLanguage.swift.protectNameIfKeyword(for: newName)
    }
}
