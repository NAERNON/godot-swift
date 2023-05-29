import Foundation
import CodeTranslator

extension FunctionDefinition {
    var translatedName: String {
        NamingConvention.camel.convert(name, to: .snake)
    }
    
    func translatedParameters() -> [String] {
        parameters.map {
            NamingConvention.camel.convert($0.name, to: .snake)
        }
    }
}

extension PropertyDefinition {
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
