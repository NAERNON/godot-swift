import Foundation
import SourceKittenFramework

struct ClassDefinition {
    let name: String
    let superclassTypeDefinition: TypeDefinition?
    let accessControl: AccessControl?
    
    private let substructure: [[String : SourceKitRepresentable]]?
    
    var superclassName: String? {
        superclassTypeDefinition?.lastComponent
    }
    
    init?(dictionary: [String : SourceKitRepresentable]) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.class",
              let name = dictionary["key.name"] as? String else {
            return nil
        }
        
        self.name = name
        if let inheritedTypes = dictionary["key.inheritedtypes"] as? [[String : SourceKitRepresentable]],
           let superclassDefinition = inheritedTypes.first?["key.name"] as? String {
            self.superclassTypeDefinition = TypeDefinition(superclassDefinition)
        } else {
            self.superclassTypeDefinition = nil
        }
        self.accessControl = AccessControl(accessibility: dictionary["key.accessibility"] as? String)
        
        self.substructure = dictionary["key.substructure"] as? [[String : SourceKitRepresentable]]
    }
    
    static func definitions(insideStructure structure: Structure) -> [ClassDefinition] {
        guard let substructure = structure.dictionary["key.substructure"] as? [[String : SourceKitRepresentable]] else {
            return []
        }
        
        return substructure.compactMap { ClassDefinition(dictionary: $0) }
    }
    
    // MARK: Functions & properties
    
    func functionDefinitions() -> [FunctionDefinition] {
        guard let substructure else { return [] }
        
        return substructure.compactMap { FunctionDefinition(dictionary: $0, className: name) }
    }
    
    func propertyDefinitions() -> [PropertyDefinition] {
        guard let substructure else { return [] }
        
        return substructure.compactMap { PropertyDefinition(dictionary: $0, className: name) }
    }
    
    // MARK: Godot
    
    var isExposedToGodot: Bool {
        name.hasSuffix("_godot")
    }
}
