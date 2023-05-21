import CodeGenerator

struct FunctionParameters: Code {
    let parametersCount: Int
    
    var body: some Code {
        Group {
            "private func functionParameters<\(genericString(withTParameter: true))>(from closure: (T) -> ((\(genericString(withTParameter: false))) -> Void), parameterNames: [StringName]) -> ClassRegister.FunctionRegistrationTypes"
            if parametersCount > 0 {
                "where".indent()
            }
            ForEach(0..<parametersCount) { index in
                "C\(index) : TypedVariantTransformable" + (index < parametersCount - 1 ? "," : "")
            }.indent()
            "{"
            Group {
                ".init(arguments: ["
                ForEach(0..<parametersCount) { index in
                    ".init(type: C\(index).self, name: parameterNames[\(index)], defaultValue: nil),"
                }.indent()
                "], returnType: nil)"
            }.indent()
            "}"
        }
    }
    
    private func genericString(withTParameter: Bool) -> String {
        var string = ""
        
        if withTParameter {
            string += "T"
            if parametersCount > 0 {
                string += ", "
            }
        }
        
        for i in 0..<parametersCount {
            string += "C\(i)"
            if i < parametersCount - 1 {
                string += ", "
            }
        }
        
        return string
    }
}
