import Foundation
import SourceKittenFramework
import CodeTranslator

struct PropertyDefinition {
    let name: String
    let type: String
    let accessControl: AccessControl?
    let setterAccessControl: AccessControl?
    let className: String
    
    init?(dictionary: [String : SourceKitRepresentable], className: String) {
        guard dictionary["key.kind"] as? String == "source.lang.swift.decl.var.instance",
              let name = dictionary["key.name"] as? String,
              let type = dictionary["key.typename"] as? String else {
            return nil
        }
        
        self.name = name
        self.type = type
        self.accessControl = AccessControl(accessibility: dictionary["key.accessibility"] as? String)
        self.setterAccessControl = AccessControl(accessibility: dictionary["key.setter_accessibility"] as? String)
        self.className = className
    }
    
    // MARK: Godot
    
    var isExposedToGodot: Bool {
        name.hasSuffix("_godot")
    }
    
    var translatedName: String {
        NamingConvention.camel.convert(name, to: .snake)
    }
    
    var translatedGetterName: String {
        "get_" + translatedName
    }
    
    var translatedSetterName: String {
        "set_" + translatedName
    }
}
