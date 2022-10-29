import Foundation

public struct OptionSetStruct<RawType>: SwiftCode, AccessibleCode where RawType: BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    let additionalAlignmentLength: Int?
    public var accessControl: AccessControl = .hiddenInternal
    
    public init(_ name: String,
                options: [(name: String, value: RawType)],
                additionalAlignmentLength: Int? = nil) {
        self.name = name
        self.options = options
        self.additionalAlignmentLength = additionalAlignmentLength
    }
    
    public var body: some SwiftCode {
        Struct(name, extensions: ["OptionSet"]) {
            Property("rawValue", typedValue: .none, type: RawType.self)
                .accessControl(accessControl)
            
            Spacer()
            
            ForEach(options) { option in
                Property(option.name, value: ".init(rawValue: " + option.value.description + ")", type: name)
                    .static()
                    .accessControl(accessControl)
            }.aligned(additionalLength: additionalAlignmentLength ?? 0)
        }.accessControl(accessControl)
    }
}
