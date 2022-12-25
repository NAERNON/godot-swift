import Foundation

public struct Projection {
    public var xAxis: Vector4
    public var yAxis: Vector4
    public var zAxis: Vector4
    public var wAxis: Vector4
    
    public init(xAxis: Vector4, yAxis: Vector4, zAxis: Vector4, wAxis: Vector4) {
        self.xAxis = xAxis
        self.yAxis = yAxis
        self.zAxis = zAxis
        self.wAxis = wAxis
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T: BinaryFloatingPoint {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init<T>(xAxisX: T, xAxisY: T, xAxisZ: T, xAxisW: T,
                   yAxisX: T, yAxisY: T, yAxisZ: T, yAxisW: T,
                   zAxisX: T, zAxisY: T, zAxisZ: T, zAxisW: T,
                   wAxisX: T, wAxisY: T, wAxisZ: T, wAxisW: T) where T: BinaryInteger {
        self.init(xAxis: Vector4(x: xAxisX, y: xAxisY, z: xAxisZ, w: xAxisW),
                  yAxis: Vector4(x: yAxisX, y: yAxisY, z: yAxisZ, w: yAxisW),
                  zAxis: Vector4(x: zAxisX, y: zAxisY, z: zAxisZ, w: zAxisW),
                  wAxis: Vector4(x: wAxisX, y: wAxisY, z: wAxisZ, w: wAxisW))
    }
    
    public init(transform3D: Transform3D) {
        self = Self._constructor(transform3D)
    }
    
    public init() {
        self.init(xAxis: Vector4(), yAxis: Vector4(), zAxis: Vector4(), wAxis: Vector4())
    }
    
    // MARK: Operators
    
    public static func == (lhs: Projection, rhs: Variant) -> Bool {
        Self._operatorEqual(lhs, rhs)
    }
    
    public static func == (lhs: Variant, rhs: Projection) -> Bool {
        Self._operatorEqual(rhs, lhs)
    }
    
    public static func * (lhs: Projection, rhs: Vector4) -> Vector4 {
        Self._operatorMultiply(lhs, rhs)
    }
    
    public static func * (lhs: Projection, rhs: Projection) -> Projection {
        Self._operatorMultiply(lhs, rhs)
    }
}

// MARK: - Extensions

extension Projection: Equatable, Hashable {}

extension Projection: Codable {
    public func encode(to encoder: Encoder) throws {
        try [xAxis, yAxis, zAxis, wAxis].encode(to: encoder)
    }
    
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        xAxis = try container.decode(Vector4.self)
        yAxis = try container.decode(Vector4.self)
        zAxis = try container.decode(Vector4.self)
        wAxis = try container.decode(Vector4.self)
    }
}
