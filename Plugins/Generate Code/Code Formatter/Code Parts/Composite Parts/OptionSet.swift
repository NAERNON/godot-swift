import Foundation

public struct OptionSet<RawType>: SwiftCode, AccessControlCode where RawType: BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    private var accessControl: AccessControl? = nil
    
    public init(_ name: String,
                options: [(name: String, value: RawType)]) {
        self.name = name
        self.options = options
    }
    
    public var body: some SwiftCode {
        Struct(name, extensions: ["OptionSet"]) {
            Property("rawValue")
                .letDefined().type(RawType.self).accessControl(innerPropertiesAccessControl)
            
            Spacer()
            
            Init(parameters: .init(name: "rawValue", type: String(describing: RawType.self))) {
                Property("rawValue").selfProperty().assign(value: "rawValue").unaligned()
            }.accessControl(innerPropertiesAccessControl)
            
            Spacer()
            
            ForEach(options) { option in
                Property(option.name)
                    .letDefined().static().type("Self").accessControl(innerPropertiesAccessControl)
                    .assign(value: ".init(rawValue: " + option.value.description + ")")
            }
        }.accessControl(accessControl)
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
