import Foundation

extension ExtensionApi.BuiltinClass {
    /// Returns true if no class should be generated from the builtin class.
    var isPodType: Bool {
        [
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
        ].contains(name)
    }
}
