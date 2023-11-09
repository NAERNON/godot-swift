//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotRefCountedClass
open class ImageFormatLoader: RefCounted {
    public struct LoaderFlags: GodotOptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let none: Self = .init(rawValue: 0)
        public static let forceLinear: Self = .init(rawValue: 1)
        public static let convertColors: Self = .init(rawValue: 2)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Force Linear", 1),
            ("Convert Colors", 2),]
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }