import SwiftSyntax

extension GodotExtensionApi {
    func realRawValueFile(floatingPointType: BuildConfiguration.FloatingPointType) throws -> GeneratedFile {
        let floatingPointTypeString =
        switch floatingPointType {
        case .float:
            "Float"
        case .double:
            "Double"
        }
        
        return try .init(path: "RealRawValue.swift") {
            DeclSyntax("""
            extension Real {
                /// The underlying type of a `Real` value.
                /// It can either be a `Float` or a `Double` depending on the build configuration.
                public typealias RawValue = \(raw: floatingPointTypeString)
            }
            """)
        }
    }
}
