import Foundation

extension Array {
    public init(_ value: Array) {
        self = value.duplicate()
    }
    
    public subscript(index: Int) -> Variant {
        get {
            self._getValue(at: Int64(index))
        }
        set(newValue) {
            self._setValue(newValue, at: Int64(index))
        }
    }
}

extension Array: Sequence {}

extension Array: Collection {
    public var startIndex: Int {
        0
    }
    
    public var endIndex: Int {
        count
    }
    
    public func index(after i: Int) -> Int {
        i+1
    }
}

extension Array: BidirectionalCollection {
    public func index(before i: Int) -> Int {
        i-1
    }
}

extension Array: RandomAccessCollection {}

extension Array: MutableCollection {}
