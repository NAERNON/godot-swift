import Foundation

extension Collection {
    /// Splits the collection with a consecutive test.
    ///
    /// Example:
    /// ```
    /// let splits = [1, 1, 1, 2, 2, 1, 3].consecutiveSplit { $0 != $1 }
    /// print(splits)
    /// // Prints [ArraySlice([1, 1, 1]), ArraySlice([2, 2]), ArraySlice([1]), ArraySlice([3])]
    /// ```
    func consecutiveSplit(whereSeparator: (Element, Element) -> Bool) -> [Self.SubSequence] {
        guard count > 1 else {
            return [self[startIndex..<endIndex]]
        }
        
        var arraySlices = [Self.SubSequence]()
        var index = startIndex
        var currentSliceStart = index
        
        while self.index(after: index) != endIndex {
            let nextIndex = self.index(after: index)
            let firstElement = self[index]
            let secondElement = self[nextIndex]
            
            if whereSeparator(firstElement, secondElement) {
                arraySlices.append(self[currentSliceStart..<nextIndex])
                currentSliceStart = nextIndex
            }
            
            index = nextIndex
        }
        
        arraySlices.append(self[currentSliceStart..<endIndex])
        return arraySlices
    }
}
