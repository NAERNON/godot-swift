import Foundation

public struct OptionSet<RawType>: SwiftCode, AccessControlCode where RawType: BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    let alignProperties: Bool
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                options: [(name: String, value: RawType)],
                alignProperties: Bool = true) {
        self.name = name
        self.options = options
        self.alignProperties = alignProperties
    }
    
    public var body: some SwiftCode {
        Struct(name, extensions: ["OptionSet"]) {
            Property("rawValue", typedValue: .none, type: RawType.self)
                .accessControl(innerPropertiesAccessControl)
            
            Spacer()
            
            if alignProperties {
                properties.aligned(1)
            } else {
                properties
            }
        }.accessControl(accessControl)
    }
    
    private var properties: some SwiftCode {
        ForEach(options) { option in
            Property(option.name, value: ".init(rawValue: " + option.value.description + ")", type: name)
                .accessControl(innerPropertiesAccessControl)
                .static()
        }
    }
    
    private var innerPropertiesAccessControl: AccessControl? {
        guard let accessControl else {
            return nil
        }
        
        switch accessControl {
        case .private, .fileprivate, .internal:
            return nil
        case .public:
            return .public
        }
    }
    
    // MARK: Modifiers
    
    public func accessControl(_ accessControl: AccessControl?) -> OptionSet {
        var new = self
        new.accessControl = accessControl
        return new
    }
}
