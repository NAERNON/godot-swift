import Foundation

private enum IfType {
    case oneCondition
    case oneConditionWithElse
    case twoConditions
    case twoConditionsWithElse
}

public struct If<ConditionContent1, ConditionContent2, ElseContent>: Code
where
ConditionContent1 : Code,
ConditionContent2 : Code,
ElseContent : Code
{
    private let ifType: IfType
    let condition1: String
    let conditionContent1: () -> ConditionContent1
    let condition2: String
    let conditionContent2: () -> ConditionContent2
    let elseContent: () -> ElseContent
    
    fileprivate init(type: IfType,
                     condition1: String, @CodeBuilder conditionContent1: @escaping () -> ConditionContent1,
                     elseIf condition2: String, @CodeBuilder conditionContent2: @escaping () -> ConditionContent2,
                     @CodeBuilder else elseContent: @escaping () -> ElseContent) {
        self.ifType = type
        self.condition1 = condition1
        self.conditionContent1 = conditionContent1
        self.condition2 = condition2
        self.conditionContent2 = conditionContent2
        self.elseContent = elseContent
    }
    
    public var body: some Code {
        Group {
            "if \(condition1) {"
            
            conditionContent1().indent()
            
            if ifType == .twoConditions || ifType == .twoConditionsWithElse {
                "} else \(condition2) {"
                conditionContent2().indent()
            }
            
            if ifType == .oneConditionWithElse || ifType == .twoConditionsWithElse {
                "} else {"
                elseContent().indent()
            }
            
            "}"
        }
    }
}

extension If where ConditionContent2 == EmptyCode,
                   ElseContent == EmptyCode {
    /// Initializes and returns code block with an `if` statement.
    ///
    /// The resulting code if as follow:
    /// ```swift
    /// if *condition* {
    ///     *content*
    /// }
    /// ```
    public init(_ condition: String, @CodeBuilder content: @escaping () -> ConditionContent1) {
        self.init(type: .oneCondition,
                  condition1: condition, conditionContent1: content,
                  elseIf: "", conditionContent2: { EmptyCode() },
                  else: { EmptyCode() })
    }
}

extension If where ConditionContent2 == EmptyCode {
    /// Initializes and returns code block with an `if, else` statement.
    ///
    /// The resulting code if as follow:
    /// ```swift
    /// if *condition* {
    ///     *content*
    /// } else {
    ///     *elseContent*
    /// }
    /// ```
    public init(_ condition: String, @CodeBuilder content: @escaping () -> ConditionContent1,
                @CodeBuilder else elseContent: @escaping () -> ElseContent) {
        self.init(type: .oneConditionWithElse,
                  condition1: condition, conditionContent1: content,
                  elseIf: "", conditionContent2: { EmptyCode() },
                  else: elseContent)
    }
}

extension If where ElseContent == EmptyCode {
    /// Initializes and returns code block with an `if, else if` statement.
    ///
    /// The resulting code if as follow:
    /// ```swift
    /// if *condition1* {
    ///     *content1*
    /// } else if *condition2* {
    ///     *content2*
    /// }
    /// ```
    public init(_ condition1: String, @CodeBuilder _ content1: @escaping () -> ConditionContent1,
                elseIf condition2: String, @CodeBuilder content2: @escaping () -> ConditionContent2) {
        self.init(type: .twoConditions,
                  condition1: condition1, conditionContent1: content1,
                  elseIf: condition2, conditionContent2: content2,
                  else: { EmptyCode() })
    }
}

extension If {
    /// Initializes and returns code block with an `if, else if, else` statement.
    ///
    /// The resulting code if as follow:
    /// ```swift
    /// if *condition1* {
    ///     *content1*
    /// } else if *condition2* {
    ///     *content2*
    /// } else {
    ///     *elseContent*
    /// }
    /// ```
    public init(_ condition1: String, @CodeBuilder _ content1: @escaping () -> ConditionContent1,
                elseIf condition2: String, @CodeBuilder content2: @escaping () -> ConditionContent2,
                @CodeBuilder else elseContent: @escaping () -> ElseContent) {
        self.init(type: .twoConditionsWithElse,
                  condition1: condition1, conditionContent1: content1,
                  elseIf: condition2, conditionContent2: content2,
                  else: elseContent)
    }
}
