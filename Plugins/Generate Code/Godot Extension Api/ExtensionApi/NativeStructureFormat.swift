import Foundation

// MARK: - NativeStructureFormat

struct NativeStructureFormat {
    enum InitError: Error {
        case cannotRetreiveTypeAndValue(String)
        case cannotGenerateInstanceType
    }
    
    private let format: String
    
    let variables: [Variable]
    
    init(format: String) throws {
        self.format = format
        
        variables = try format.replacingOccurrences(of: "::", with: ".").components(separatedBy: ";").map { part in
            let typeAndValue = part.split(separator: " ", maxSplits: 2, omittingEmptySubsequences: false)
            guard typeAndValue.count >= 2 else {
                throw InitError.cannotRetreiveTypeAndValue(part)
            }
            
            guard let type = InstanceType(godotName: String(typeAndValue[0])) else {
                throw InitError.cannotGenerateInstanceType
            }
            
            let name = typeAndValue[1]
            
            let defaultValue: ConstantValue?
            if typeAndValue.count == 4 {
                defaultValue = ConstantValue(string: String(typeAndValue[3]))
            } else {
                defaultValue = nil
            }
            
            return Variable(type: type, name: String(name), defaultValue: defaultValue)
        }
    }
}

extension NativeStructureFormat: Decodable {
    init(from decoder: Decoder) throws {
        try self.init(format: try String(from: decoder))
    }
}

// MARK: - Variable

extension NativeStructureFormat {
    struct Variable {
        let type: InstanceType
        let name: String
        let defaultValue: ConstantValue?
        
        private var isPointer: Bool {
            name.first == "*"
        }
        
        /// The name of the variable could have square brackets for the size of the array.
        /// Ex: `some_value[32]`. This function retreives the size from the name.
        func arraySize() -> Int? {
            let parts = name.components(separatedBy: "[")
            guard parts.count == 2 else {
                return nil
            }
            
            var numberString = parts[1]
            // Remove the "]" character
            numberString.removeLast()
            
            return Int(numberString)
        }
        
        func nameToSwift() -> String {
            var name = NamingConvention.snake.convert(string: self.name, to: .camel)
            name = CodeLanguage.swift.protectNameIfKeyword(for: name)
            
            name = name.components(separatedBy: "[").first ?? name
            if isPointer {
                name.removeFirst()
            }
            return name
        }
        
        func typeToSwift() -> String {
            var typeString = type.toSwift()
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
}
