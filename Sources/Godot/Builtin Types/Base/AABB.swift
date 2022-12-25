import Foundation

public struct AABB {
    public var position: Vector3
    public var size: Vector3
    
    public init(position: Vector3, size: Vector3) {
        self.position = position
        self.size = size
    }
    
    public init() {
        self.init(position: Vector3(), size: Vector3())
    }
    
    // MARK: Operators
    
    public static func == (lhs: AABB, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: AABB) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * (lhs: AABB, rhs: Transform3D) -> AABB {
        Self._operatorMultiply(lhs, rhs)
    }
}

// MARK: - Extensions

extension AABB: Equatable, Hashable {}
