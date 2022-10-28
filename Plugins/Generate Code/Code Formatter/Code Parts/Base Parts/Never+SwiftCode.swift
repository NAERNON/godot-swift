import Foundation

extension Never: SwiftCode {
    public var body: Never { fatalError() }
}
