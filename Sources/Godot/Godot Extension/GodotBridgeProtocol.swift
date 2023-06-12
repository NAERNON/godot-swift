import Foundation

public protocol GodotBridgeProtocol {
    static var classesToRegister: [GodotExposableObject.Type] { get }
}
