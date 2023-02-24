import Foundation

/// A type that provides a `FormattedCode` value.
protocol RootCode {
    func formattedCode() -> FormattedCode
}

extension Code {
    func formatted() -> FormattedCode {
        if let root = self as? RootCode {
            return root.formattedCode()
        } else {
            return body.formatted()
        }
    }
}
