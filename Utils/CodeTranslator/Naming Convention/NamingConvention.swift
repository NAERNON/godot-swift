import Foundation

public enum NamingConvention {
    /// `camelNamingConvention`.
    case camel
    /// `PascalNamingConvention`.
    case pascal
    /// `snake_naming_convention`.
    case snake
    
    // MARK: Convert
    
    public func convert(_ string: String, to convention: NamingConvention) -> String {
        guard self != convention else { return string }
        
        return convention.recompose(self.decompose(string: string))
    }
    
    public func convert(_ string: String, from convention: NamingConvention) -> String {
        guard self != convention else { return string }
        
        return self.recompose(convention.decompose(string: string))
    }
}
