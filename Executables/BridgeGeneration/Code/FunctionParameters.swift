import CodeGenerator

struct FunctionParameters: Code, Hashable, Comparable {
    let parametersCount: Int
    let functionReturns: Bool
    let isStatic: Bool
    
    init(parametersCount: Int,
         functionReturns: Bool,
         isStatic: Bool) {
        self.parametersCount = parametersCount
        self.functionReturns = functionReturns
        self.isStatic = isStatic
    }
    
    init(functionDefinition: FunctionDefinition) {
        self.init(parametersCount: functionDefinition.parameters.count,
                  functionReturns: functionDefinition.returnType != nil,
                  isStatic: functionDefinition.isStatic)
    }
    
    var body: some Code {
        Container {
            "private func functionParameters<\(parametersTypeList(instanceType: !isStatic, returnType: functionReturns))>("
            Container {
                if isStatic {
                    "from closure: (\(parametersTypeList(instanceType: false, returnType: false))) -> \(returnTypeName),"
                } else {
                    "from closure: (T) -> ((\(parametersTypeList(instanceType: false, returnType: false))) -> \(returnTypeName)),"
                }
                "parameterNames: [StringName]"
            }.indent()
            ") -> ClassRegister.FunctionRegistrationTypes"
            
            let typeConstraints = genericTypeConstraints()
            if !typeConstraints.isEmpty {
                "where".indent()
            }
            ForEach(typeConstraints.enumerated()) { (index, typeConstraint) in
                typeConstraint + (index < typeConstraints.count - 1 ? "," : "")
            }.indent()
            
            "{"
            Container {
                ".init(arguments: ["
                ForEach(0..<parametersCount) { index in
                    ".init(type: \(parameterTypeName(index: index)).self, name: parameterNames[\(index)]),"
                }.indent()
                "], returnType: \(returnParameter))"
            }.indent()
            "}"
        }
    }
    
    private func genericTypeConstraints() -> [String] {
        var constraints = [String]()
        
        for index in 0..<parametersCount {
            constraints.append(parameterTypeName(index: index) + " : ExpressibleByTypedVariant")
        }
        if functionReturns {
            constraints.append(returnTypeName + " : ExpressibleByTypedVariant")
        }
        
        return constraints
    }
    
    private func parametersTypeList(instanceType: Bool, returnType: Bool) -> String {
        var typeNames = (0..<parametersCount).map { parameterTypeName(index: $0) }
        
        if instanceType {
            typeNames.insert(instanceTypeName, at: 0)
        }
        if returnType {
            typeNames.append(returnTypeName)
        }
        
        return typeNames.joined(separator: ", ")
    }
    
    private var returnParameter: String {
        if functionReturns {
            return ".init(type: \(returnTypeName).self, name: StringName())"
        } else {
            return "nil"
        }
    }
    
    // MARK: Type names
    
    private var instanceTypeName: String {
        "T"
    }
    
    private func parameterTypeName(index: Int) -> String {
        "C\(index)"
    }
    
    private var returnTypeName: String {
        if functionReturns {
            return "R"
        } else {
            return "Void"
        }
    }
    
    // MARK: Comparison
    
    static func < (lhs: FunctionParameters, rhs: FunctionParameters) -> Bool {
        if lhs.isStatic != rhs.isStatic {
            return !lhs.isStatic
        } else if lhs.functionReturns != rhs.functionReturns {
            return !lhs.functionReturns
        } else {
            return lhs.parametersCount < rhs.parametersCount
        }
    }
}
