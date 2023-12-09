import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics

public enum GodotPackedArrayMacro: ExtensionMacro {
    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let collectionExtension = try ExtensionDeclSyntax("extension \(type): RandomAccessCollection, RangeReplaceableCollection, ExpressibleByArrayLiteral, MutableCollection, Equatable") {
            """
            public var startIndex: Int {
                0
            }
            
            public var endIndex: Int {
                self._size()
            }
            
            public func index(after i: Int) -> Int {
                i+1
            }
            
            public func index(before i: Int) -> Int {
                i-1
            }
            
            public var isEmpty: Bool {
                self._isEmpty()
            }
            
            public mutating func replaceSubrange<C>(_ subrange: Swift.Range<Int>, with newElements: C)
            where C : Collection, Element == C.Element {
                var rangeIndex = subrange.lowerBound
                for (collectionIndex, element) in newElements.enumerated() {
                    if collectionIndex + subrange.lowerBound < subrange.upperBound {
                        self[rangeIndex] = element
                    } else {
                        self.insert(element, at: rangeIndex)
                    }
                    rangeIndex += 1
                }
                
                let removeIndex = subrange.lowerBound + newElements.count
                while rangeIndex < subrange.upperBound {
                    self._removeAt(index: removeIndex)
                    rangeIndex += 1
                }
            }
            
            @discardableResult
            public mutating func remove(at i: Int) -> Element {
                let element = self[i]
                _removeAt(index: i)
                return element
            }
            
            public mutating func removeAll(keepingCapacity keepCapacity: Bool) {
                _clear()
            }
            
            public init(arrayLiteral elements: Element...) {
                self.init(elements)
            }
            
            public static func == (lhs: Self, rhs: Self) -> Bool {
                Self._operatorEqual(lhs, rhs)
            }
            
            public static func != (lhs: Self, rhs: Self) -> Bool {
                Self._operatorNotEqual(lhs, rhs)
            }
            """
        }
        
        let codableExtension = try ExtensionDeclSyntax("extension \(type): Codable") {
            """
            public func encode(to encoder: Encoder) throws {
                var unkeyedContainer = encoder.unkeyedContainer()
                try unkeyedContainer.encode(contentsOf: self)
            }
            
            public init(from decoder: Decoder) throws {
                var container = try decoder.unkeyedContainer()
                var array = Self()
                while let element = try container.decodeIfPresent(Self.Element.self) {
                    array.append(element)
                }
                self = array
            }
            """
        }
        
        let stringConvertibleExtension = try ExtensionDeclSyntax("extension \(type): CustomStringConvertible, CustomDebugStringConvertible") {
            """
            public var description: String {
                "[\\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
            }
            
            public var debugDescription: String {
                "[\\(self.map { String(reflecting: $0) }.joined(separator: ", "))]"
            }
            """
        }
        
        return [collectionExtension, codableExtension, stringConvertibleExtension]
    }
}
