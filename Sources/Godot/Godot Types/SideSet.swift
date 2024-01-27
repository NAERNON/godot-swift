
extension Side {
    /// An efficient set of sides.
    ///
    /// ## Topics
    ///
    /// ### Getting side sets
    ///
    /// - ``all``
    /// - ``top``
    /// - ``bottom``
    /// - ``left``
    /// - ``right``
    /// - ``horizontal``
    /// - ``vertical``
    ///
    /// ### Creating a side set
    ///
    /// - ``init(_:)``
    public struct Set: OptionSet {
        public let rawValue: Side.RawValue
        
        public init(rawValue: Side.RawValue) {
            self.rawValue = rawValue
        }
        
        /// Creates a set of sides containing only the specified side.
        public init(_ s: Side) {
            self.rawValue = 1 << s.rawValue
        }
        
        public static let left: Set = Set(.left)
        public static let top: Set = Set(.top)
        public static let right: Set = Set(.right)
        public static let bottom: Set = Set(.bottom)
        
        public static let all: Set = [.left, .top, .right, .bottom]
        public static let horizontal: Set = [.left, .right]
        public static let vertical: Set = [.top, .bottom]
    }
}
