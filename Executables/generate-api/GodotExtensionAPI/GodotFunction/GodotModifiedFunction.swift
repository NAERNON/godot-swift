
enum GodotModifiedFunctionElement {
    case name(String)
    case arguments([GodotArgument]?)
    case returnType(GodotType?)
    case none
}

struct GodotModifiedFunction<Source>: GodotFunction where Source : GodotFunction {
    let source: Source
    var modifiedElement: GodotModifiedFunctionElement
    
    init(_ source: Source, modifiedElement: GodotModifiedFunctionElement = .none) {
        self.source = source
        self.modifiedElement = modifiedElement
    }
    
    var name: String {
        switch modifiedElement {
        case .name(let name):
            name
        default:
            source.name
        }
    }
    
    var arguments: [GodotArgument]? {
        switch modifiedElement {
        case .arguments(let arguments):
            arguments
        default:
            source.arguments
        }
    }
    
    var returnType: GodotType? {
        switch modifiedElement {
        case .returnType(let returnType):
            returnType
        default:
            source.returnType
        }
    }
    
    var isVararg: Bool { 
        source.isVararg
    }
    
    var usesVariantGeneric: Bool {
        source.usesVariantGeneric
    }
    
    var isStatic: Bool {
        source.isStatic
    }
    
    var isConst: Bool {
        source.isConst
    }
    
    var isMutating: Bool {
        source.isMutating
    }
}

extension GodotFunction {
    func withName(_ name: String) -> GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .name(name))
    }
    
    func withNamePrefixed(by prefix: String) -> GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .name(prefix + name))
    }
    
    func withArguments(_ arguments: [GodotArgument]?) -> GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .arguments(arguments))
    }
    
    func withReturnType(_ returnType: GodotType?) -> GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .returnType(returnType))
    }
    
    var withVariantStorageReturnType: GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .returnType(returnType?.storage))
    }
}
