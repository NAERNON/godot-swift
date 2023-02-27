import Foundation
import CodeGenerator
import CodeTranslator

extension NativeStructureFormat.Variable {
    func nameCode() -> String {
        var name = NamingConvention.snake.convert(self.name, to: .camel)
        name = CodeLanguage.swift.protectNameIfKeyword(for: name)
        
        name = name.components(separatedBy: "[").first ?? name
        if isPointer {
            name.removeFirst()
        }
        return name
    }
    
    func typeCode() -> String {
        var typeString = type.code()
        if let arraySize = self.arraySize() {
            // If the type is a fixed array, we make a tuple instead
            var string = "("
            for index in 0..<arraySize {
                string += typeString
                
                if index < arraySize-1 {
                    string += ", "
                }
            }
            string += ")"
            typeString = string
        }
        
        if isPointer {
            return "UnsafePointer<\(typeString)>"
        } else {
            return typeString
        }
    }
}
