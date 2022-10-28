import Foundation

public protocol SwiftCode {
    associatedtype Body: SwiftCode
    
    @CodeBuilder
    var body: Body { get }
}
