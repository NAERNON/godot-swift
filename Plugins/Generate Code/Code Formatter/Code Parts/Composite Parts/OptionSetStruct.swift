import Foundation

public struct OptionSetStruct<RawType>: SwiftCode where RawType: BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    let additionalAlignmentLength: Int?
    private var isPrivate: Bool = false
    private var isPublic: Bool = false
    
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
                .withAccessControl(isPrivate: isPrivate, isPublic: isPublic)
            
            Spacer()
            
            ForEach(options) { option in
                Property(option.name, value: ".init(rawValue: " + option.value.description + ")", type: name)
                    .withAccessControl(isPrivate: isPrivate, isPublic: isPublic)
                    .static()
            }.aligned(additionalLength: additionalAlignmentLength ?? 0)
        }.withAccessControl(isPrivate: isPrivate, isPublic: isPublic)
    }
    
    // MARK: Modifiers
    
    func `private`() -> some SwiftCode {
        var new = self
        new.isPrivate = true
        return new
    }
    
    func `public`() -> some SwiftCode {
        var new = self
        new.isPublic = true
        return new
    }
}

private extension Property {
    func withAccessControl(isPrivate: Bool, isPublic: Bool) -> Property {
        if isPrivate {
            return self.private()
        } else if isPublic {
            return self.public()
        } else {
            return self
        }
    }
}

private extension Struct {
    func withAccessControl(isPrivate: Bool, isPublic: Bool) -> some SwiftCode {
        if isPrivate {
            return self.private()
        } else if isPublic {
            return self.public()
        } else {
            return self
        }
    }
}
