import Foundation

private let baseTypes: Set<String> = [
    "Nil",
    "void",
    "bool",
    "real_t",
    "float",
    "double",
    "int",
    "int8_t",
    "uint8_t",
    "int16_t",
    "uint16_t",
    "int32_t",
    "int64_t",
    "uint32_t",
    "uint64_t",
]

private let convertedBaseType = baseTypes.map { ExtensionApi.convert(type: $0) }

private let globalBaseTypes = baseTypes.union(convertedBaseType)

extension ExtensionApi {
    /// Returns true if no class should be generated from the builtin class.
    static func isBaseType(_ type: String) -> Bool {
        globalBaseTypes.contains(type)
    }
}
