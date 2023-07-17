import GodotExtensionHeaders

public struct GodotVersion: CustomStringConvertible {
    public let major: UInt32
    public let minor: UInt32
    public let patch: UInt32
    
    init(_ extensionVersion: GDExtensionGodotVersion) {
        self.major = extensionVersion.major
        self.minor = extensionVersion.minor
        self.patch = extensionVersion.patch
    }
    
    public var description: Swift.String {
        "\(major).\(minor).\(patch)"
    }
}
