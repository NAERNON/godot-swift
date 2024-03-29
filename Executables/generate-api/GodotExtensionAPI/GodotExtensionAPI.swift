import Foundation

/// A representation of the file `extension_api.json`.
struct GodotExtensionAPI: Decodable {
    var header: GodotExtensionHeader
    var builtinClassSizes: GodotBuiltinClassSizes
    var builtinClassMemberOffsets: GodotBuiltinClassMemberOffsets
    //-- not used but defined in the json file --//    var globalConstants
    var globalEnums: [GodotEnum]
    var utilityFunctions: [GodotUtilityFunction]
    var builtinClasses: [GodotBuiltinClass]
    var classes: [GodotClass]
    var singletons: [GodotSingleton]
    var nativeStructures: [GodotNativeStructure]
    
    // MARK: Init
    
    func builtinClassesToGenerate() -> [GodotBuiltinClass] {
        builtinClasses.filter { builtinClass in
            switch builtinClass.name {
            case "bool",
                "float",
                "int",
                "Nil": false
            default: true
            }
        }
    }
    
    // MARK: Filter
    
    /// Returns a new `GodotExtensionAPI` with only a small subset of classes.
    func subset() -> GodotExtensionAPI {
        filter { classType in
            classType == "Object" ||
            classType == "RefCounted" ||
            classType == "RandomNumberGenerator" ||
            classType == "TextServer" ||
            classType == "AStar2D" ||
            classType == "Control" ||
            classType == "CanvasItem" ||
            classType == "Node" ||
            classType == "Node2D" ||
            classType == "Resource" ||
            classType.syntax().hasPrefix("Input")
        }
    }
    
    func filter(classFilter: (GodotType) -> Bool) -> GodotExtensionAPI {
        var newAPIs = self
        
        newAPIs.utilityFunctions = self.utilityFunctions.filter {
            $0.isInFilter(classFilter: classFilter)
        }
        
        newAPIs.classes.removeAll()
        for var godotClass in self.classes {
            if !godotClass.name.isInFilter(classFilter: classFilter) {
                continue
            }
            
            godotClass.methods = godotClass.methods?.filter {
                $0.isInFilter(classFilter: classFilter)
            } ?? []
            
            newAPIs.classes.append(godotClass)
        }
        
        newAPIs.singletons = self.singletons.filter {
            $0.type.isInFilter(classFilter: classFilter)
        }
        
        return newAPIs
    }
}

private extension GodotFunction {
    func isInFilter(classFilter: (GodotType) -> Bool) -> Bool {
        if let returnType,
           !returnType.isInFilter(classFilter: classFilter)
        {
            return false
        }
        
        if let arguments,
           arguments.contains(where: { !$0.type.isInFilter(classFilter: classFilter) })
        {
            return false
        }
        
        return true
    }
}

private extension GodotType {
    func isInFilter(classFilter: (GodotType) -> Bool) -> Bool {
        return !isGodotClass || classFilter(self)
    }
}
