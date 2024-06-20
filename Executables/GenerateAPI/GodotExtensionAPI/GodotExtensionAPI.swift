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
}

extension GodotExtensionAPI {
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
            
            godotClass.methods = godotClass.methods.filter {
                $0.isInFilter(classFilter: classFilter)
            }
            
            newAPIs.classes.append(godotClass)
        }
        
        newAPIs.singletons = self.singletons.filter {
            $0.type.isInFilter(classFilter: classFilter)
        }
        
        return newAPIs
    }
}

private extension GodotUtilityFunction {
    func isInFilter(classFilter: (GodotType) -> Bool) -> Bool {
        if let returnType,
           !returnType.isInFilter(classFilter: classFilter)
        {
            return false
        }
        
        return !arguments.contains(where: { !$0.type.isInFilter(classFilter: classFilter) })
    }
}

private extension GodotClass.Method {
    func isInFilter(classFilter: (GodotType) -> Bool) -> Bool {
        if let returnValue,
           !returnValue.type.isInFilter(classFilter: classFilter)
        {
            return false
        }
        
        return !arguments.contains(where: { !$0.type.isInFilter(classFilter: classFilter) })
    }
}

private extension GodotType {
    func isInFilter(classFilter: (GodotType) -> Bool) -> Bool {
        switch self {
        case .typedArray(let genericType):
            return genericType.isInFilter(classFilter: classFilter)
        default:
            return !isGodotClass || classFilter(self)
        }
    }
}
