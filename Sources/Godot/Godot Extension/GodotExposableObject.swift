import Foundation

public protocol GodotExposableObject: AnyObject {
    static func exposeToGodot()
}
