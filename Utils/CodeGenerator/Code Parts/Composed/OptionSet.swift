import Foundation

public struct OptionSet<RawType>: Code where RawType : BinaryInteger {
    let name: String
    let options: [(name: String, value: RawType)]
    let propertiesAccessControl: AccessControl?
    
    public init(_ name: String,
                options: [(name: String, value: RawType)],
                propertiesAccessControl: AccessControl? = nil) {
        self.name = name
        self.options = options
        self.propertiesAccessControl = propertiesAccessControl
    }
    
    public var body: some Code {
        Struct(name, extensions: ["OptionSet"]) {
            Stack {
                Let("rawValue").typed(RawType.self).accessControl(propertiesAccessControl)
                
                Init(parameters: .named("rawValue", type: RawType.self)) {
                    Property("rawValue").selfDefined().assign("rawValue").unalign()
                }.accessControl(propertiesAccessControl)
                
                Container {
                    ForEach(options) { option in
                        Let(option.name)
                            .typed("Self")
                            .assign(".init(rawValue: " + option.value.description + ")")
                            .static().accessControl(propertiesAccessControl)
                    }
                }
            }
        }
    }
}
