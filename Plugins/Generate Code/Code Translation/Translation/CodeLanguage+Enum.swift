import Foundation

extension CodeLanguage {
    public func translateEnum(name: String,
                              cases: [String],
                              to language: CodeLanguage) -> (name: String, cases: [String]) {
        switch self {
        case .swift:
            switch language {
            case .swift:
                return (name, cases)
            case .c:
                return CodeLanguage.translateEnumFromSwiftToC(name: name, cases: cases)
            }
        case .c:
            switch language {
            case .swift:
                return CodeLanguage.translateEnumFromCToSwift(name: name, cases: cases, smartTranslation: true)
            case .c:
                return (name, cases)
            }
        }
    }
    
    private static func translateEnumFromCToSwift(name: String,
                                                  cases: [String],
                                                  smartTranslation: Bool) -> (name: String, cases: [String]) {
        guard !cases.isEmpty else {
            return (name, cases)
        }
        
        let casesComponents = cases.map { NamingConvention.snake.decompose(string: $0).map { $0.lowercased() } }
        
        /// We count the number of same components on the left side on all the enums. They will be removed.
        ///
        /// Ex: `["SIDE_LEFT", "SIDE_TOP", "SIDE_RIGHT", "SIDE_BOTTOM"]`
        /// There is only one component common to all the cases : `SIDE`.
        var numberOfComponentsToRemove = 0
        
        while true && smartTranslation {
            let firstCaseComponents = casesComponents[0]
            guard numberOfComponentsToRemove < firstCaseComponents.count else {
                break
            }
            
            let component = firstCaseComponents[numberOfComponentsToRemove]
            var areSameComponents = true
            for caseComponents in casesComponents {
                if caseComponents.count <= numberOfComponentsToRemove
                    || caseComponents[numberOfComponentsToRemove] != component {
                    areSameComponents = false
                    break
                }
            }
            
            guard areSameComponents else { break }
            
            numberOfComponentsToRemove += 1
        }
        
        var editedCasesComponents = casesComponents
        for caseIndex in 0..<editedCasesComponents.count {
            if editedCasesComponents[caseIndex].count > numberOfComponentsToRemove {
                editedCasesComponents[caseIndex].removeFirst(numberOfComponentsToRemove)
            }
        }
        
        var casesStrings = [String]()
        var casesStringsSet = Set<String>()
        
        for caseIndex in 0..<casesComponents.count {
            let editedCaseComponents = editedCasesComponents[caseIndex]
            var caseString = NamingConvention.camel.recompose(editedCaseComponents)
            
            /// If the case string generated is empty, or doesn't begin with a letter, we use the original components, not the one without the same components..
            if caseString.isEmpty || !caseString.first!.isLetter {
                caseString = NamingConvention.camel.recompose(casesComponents[caseIndex])
            }
            
            guard casesStringsSet.insert(caseString).inserted else {
                return translateEnumFromCToSwift(name: name, cases: cases, smartTranslation: false)
            }
            
            casesStrings.append(caseString)
        }
        
        return (name, casesStrings)
    }
    
    private static func translateEnumFromSwiftToC(name: String,
                                                  cases: [String]) -> (name: String, cases: [String]) {
        let nameComponents = NamingConvention.pascal.decompose(string: name)
        
        let translatedCases = cases.map { caseString in
            let caseStringComponents = NamingConvention.camel.decompose(string: caseString)
            let convertedString = NamingConvention.snake.recompose(nameComponents + caseStringComponents)
            return convertedString.uppercased()
        }
        
        return (name, translatedCases)
    }
}
