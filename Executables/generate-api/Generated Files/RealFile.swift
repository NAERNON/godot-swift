import SwiftSyntax

extension GeneratedFile {
    static func real(type: BuildConfiguration.FloatingPointType) -> GeneratedFile {
        let floatingPointTypeString =
        switch type {
        case .float:
            "Float"
        case .double:
            "Double"
        }
        
        return .init(path: "Real.swift") {
            """
            /// A floating-point value type that depends on the Godot build configuration.
            ///
            /// This typealias represents either a `Float` or a `Double`,
            /// depending on the build configuration.
            ///
            /// > important: Generating the APIs with a different build configuration might
            /// change the `Real` type and break related code.
            public typealias Real = \(raw: floatingPointTypeString)
            """
        }
    }
}
