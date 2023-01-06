import Foundation

protocol GodotFunction {
    var arguments: [ExtensionApi.Argument]? { get }
    var isVararg: Bool { get }
}

extension GodotFunction {
    func objectsPointersAccessParameters(named parameters: [String]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for (index, parameter) in parameters.enumerated() {
            let isVararg = self.isVararg && index == parameters.count-1
            let type: InstanceType = isVararg ? .variantVarargs : arguments![index].type
            accessParameters
                .append(.named(parameter, type: type, mutability: .const, isVararg: isVararg))
        }
        return accessParameters
    }
}
