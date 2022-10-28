import Foundation

public struct OptionSetStruct<RawType>: SwiftCode where RawType: BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    let additionalAlignmentLength: Int?
    
    public init(_ name: String,
                options: [(name: String, value: RawType)],
                additionalAlignmentLength: Int? = nil) {
        self.name = name
        self.options = options
        self.additionalAlignmentLength = additionalAlignmentLength
    }
    
    public var body: some SwiftCode {
        Struct(name, extensions: ["OptionSet"]) {
            Let("rawValue", typedValue: .none, type: RawType.self)
            
            Spacer()
            
            ForEach(options) { option in
                Let(option.name,
                    value: ".init(rawValue: " + option.value.description + ")",
                    type: name,
                    isStatic: true)
            }.aligned(additionalLength: additionalAlignmentLength ?? 0)
        }
    }
}
