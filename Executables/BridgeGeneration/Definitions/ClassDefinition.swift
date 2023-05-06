import Foundation
import SourceKittenFramework

struct ClassDefinition {
    let name: String
    let superclassTypeDefinition: TypeDefinition
    let filePath: String?
    
    var superclassName: String {
        superclassTypeDefinition.lastComponent
    }
    
    init?(dictionary: [String : SourceKitRepresentable], filePath: String?) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.class",
              dictionary["key.accessibility"] as? String == "source.lang.swift.accessibility.public",
              let name = dictionary["key.name"] as? String,
              let inheritedTypes = dictionary["key.inheritedtypes"] as? [[String : SourceKitRepresentable]],
              let superclassDefinition = inheritedTypes.first?["key.name"] as? String else {
            return nil
        }
        
        self.name = name
        self.superclassTypeDefinition = TypeDefinition(superclassDefinition)
        self.filePath = filePath
    }
    
    static func definitions(insideStructure structure: Structure, filePath: String?) -> [ClassDefinition] {
        guard let substructure = structure.dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return []
        }
        
        return substructure.compactMap { ClassDefinition(dictionary: $0, filePath: filePath) }
    }
}
