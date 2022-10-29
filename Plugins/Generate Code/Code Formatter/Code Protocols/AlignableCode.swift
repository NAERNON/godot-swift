import Foundation

public protocol AlignableCode: SwiftCode {
    associatedtype AlignedSwiftCode: SwiftCode
    
    /// The number of characters at the left of the alignable limit.
    ///
    /// As an example, in the following property, the `|` determines the limit of the alignable left part :
    /// ```
    /// static let value: Type |= anotherValue
    /// ```
    var alignableContentLength: Int { get }
    
    func aligned(_ length: Int) -> AlignedSwiftCode
}
