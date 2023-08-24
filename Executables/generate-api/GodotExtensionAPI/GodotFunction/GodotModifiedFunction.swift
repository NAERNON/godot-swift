import CodeTranslator

enum GodotModifiedFunctionElement {
    case arguments([GodotArgument]?)
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
        source.name
    }
    
    var arguments: [GodotArgument]? {
        switch modifiedElement {
        case .arguments(let arguments):
            return arguments
        default:
            return source.arguments
        }
    }
    
    var returnType: GodotType? {
        source.returnType
    }
    
    var isVararg: Bool { 
        source.isVararg
    }
    
    var isVarargArray: Bool {
        source.isVarargArray
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
    func withArguments(_ arguments: [GodotArgument]?) -> GodotModifiedFunction<Self> {
        GodotModifiedFunction(self, modifiedElement: .arguments(arguments))
    }
}
