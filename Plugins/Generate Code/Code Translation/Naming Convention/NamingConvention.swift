import Foundation

public enum NamingConvention {
    
    case camel
    case pascal
    case snake
    
    // MARK: Convert
    
    public func convert(string: String, to convention: NamingConvention) -> String {
        guard self != convention else { return string }
        
        return convention.recompose(components: self.decompose(string: string))
    }
    
    public func convert(string: String, from convention: NamingConvention) -> String {
        guard self != convention else { return string }
        
        return self.recompose(components: convention.decompose(string: string))
    }
    
}
