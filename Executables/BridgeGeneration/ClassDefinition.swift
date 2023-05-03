import Foundation
import SourceKittenFramework

struct ClassDefinition {
    let name: String
    let superclassDefinition: String
    let superclassName: String
    let filePath: String?
    
    init?(dictionary: [String : SourceKitRepresentable], filePath: String?) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.class",
              dictionary["key.accessibility"] as? String == "source.lang.swift.accessibility.public",
              let name = dictionary["key.name"] as? String,
              let inheritedTypes = dictionary["key.inheritedtypes"] as? [[String : SourceKitRepresentable]],
              let superclassDefinition = inheritedTypes.first?["key.name"] as? String else {
            return nil
        }
        
        self.name = name
        self.superclassDefinition = superclassDefinition
        self.superclassName = superclassDefinition.components(separatedBy: .punctuationCharacters).last ?? ""
        self.filePath = filePath
    }
    
    static func definitions(insideFile file: File) throws -> [ClassDefinition] {
        let structure = try Structure(file: file)
        
        guard let substructure = structure.dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return []
        }
        
        return substructure.compactMap { ClassDefinition(dictionary: $0, filePath: file.path) }
    }
    
    static func definitionsForFile(at url: URL) throws -> [ClassDefinition] {
        guard let file = File(path: url.path()) else {
            return []
        }
        
        return try definitions(insideFile: file)
    }
}
