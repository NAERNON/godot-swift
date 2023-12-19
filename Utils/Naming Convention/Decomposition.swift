
public struct Decomposition:
    BidirectionalCollection,
    RangeReplaceableCollection,
    ExpressibleByArrayLiteral,
    Equatable
{
    private var _strings: [String]
    
    public init() {
        _strings = []
    }
    
    public func lowercased() -> Decomposition {
        Decomposition(_strings.map { $0.lowercased() })
    }
    
    public var startIndex: Int {
        0
    }

    public var endIndex: Int {
        _strings.count
    }

    public func index(after i: Int) -> Int {
        i+1
    }

    public func index(before i: Int) -> Int {
        i-1
    }
    
    public subscript(index: Int) -> String {
        get {
            _strings[index]
        }
        set(newValue) {
            _strings[index] = newValue
        }
    }
    
    public func isCaseInsensitiveEqual(to other: Decomposition) -> Bool {
        guard self.count == other.count else {
            return false
        }
        
        for index in 0..<self.count {
            if self[index].caseInsensitiveCompare(other[index]) != .orderedSame {
                return false
            }
        }
        
        return true
    }
    
    public mutating func replaceSubrange<C>(
        _ subrange: Range<Int>,
        with newElements: C
    ) where C : Collection, String == C.Element {
        _strings.replaceSubrange(subrange, with: newElements)
    }
    
    public init(arrayLiteral elements: String...) {
        _strings = elements
    }
}
