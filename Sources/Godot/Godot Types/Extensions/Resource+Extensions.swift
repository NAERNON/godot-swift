
extension Resource {
    /// Loads the resource from the filesystem located
    /// at the given absolute path.
    ///
    /// - Parameters:
    ///   - path: The absolute path of the resource.
    ///
    /// ## See Also
    ///
    /// - ``ResourceLoader``
    ///
    public class func load(_ path: GodotString) -> Self? {
        ResourceLoader.shared.load(path: path) as? Self
    }
}
