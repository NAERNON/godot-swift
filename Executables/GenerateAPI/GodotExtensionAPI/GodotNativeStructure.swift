import Utils

/// A representation of a Godot native structure.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotNativeStructure: Decodable {
    var name: String
    var format: StructureFormat
}

// MARK: - StructureFormat

extension GodotNativeStructure {
    struct StructureFormat: Decodable {
        struct Element {
            let name: String
            let type: GodotType
            let defaultValue: GodotConstant?
            
            init(format: String) {
                let equalityComponents = format.split(separator: " = ", maxSplits: 2, omittingEmptySubsequences: true)
                if equalityComponents.count == 2 {
                    defaultValue = GodotConstant(string: String(equalityComponents[1]))
                } else {
                    defaultValue = nil
                }
                
                let components = equalityComponents[0].split(separator: " ", maxSplits: 2, omittingEmptySubsequences: true)
                var type = components[0]
                var name = components[1]
                
                if name.first == "*" {
                    name = name.dropFirst()
                    type = type + " *"
                }
                
                if name.last == "]",
                   let index = name.lastIndex(of: "["),
                   let count = Int(name[name.index(after: index)..<name.index(before: name.endIndex)]) {
                    name = name[..<index]
                    let subtype = GodotType(cTypeSyntax: type)
                    self.type = GodotType.tuple(.init(repeating: subtype, count: count))
                } else {
                    self.type = GodotType(cTypeSyntax: type)
                }
                
                self.name = String(name)
            }
            
            func declSyntax() -> Syntax {
                let translatedName = name.translated(from: .snake, to: .camel).backticksKeyword()
                var syntax: Syntax = "public var \(translatedName): \(type.godotClassPointerRemoved().syntax(options: .floatAsDouble))"
                if let defaultValue {
                    syntax += " = " + defaultValue.syntax(
                        forType: type,
                        useStaticVariables: true
                    )
                }
                
                return syntax
            }
        }
        
        let format: String
        let elements: [Element]
        
        init(format: String) {
            self.format = format
            self.elements = format.components(separatedBy: ";").map { .init(format: $0) }
        }
        
        init(from decoder: Decoder) throws {
            self.init(format: try String(from: decoder))
        }
    }
}

extension GodotNativeStructure: FileSource {
    func fileCodeContent(
        for extensionAPI: GodotExtensionAPI,
        with configuration: BuildConfiguration
    ) throws -> Syntax {
        Syntax("public struct \(name)") {
            for element in format.elements {
                element.declSyntax()
            }
        }
    }
}
