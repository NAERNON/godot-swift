//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

public enum Side: UInt32 {
    case left = 0
    case top = 1
    case right = 2
    case bottom = 3
}

public enum Corner: UInt32 {
    case topLeft = 0
    case topRight = 1
    case bottomRight = 2
    case bottomLeft = 3
}

public enum Orientation: UInt32 {
    case vertical = 1
    case horizontal = 0
}

public enum ClockDirection: UInt32 {
    case clockwise = 0
    case counterclockwise = 1
}

public enum HorizontalAlignment: UInt32 {
    case left = 0
    case center = 1
    case right = 2
    case fill = 3
}

public enum VerticalAlignment: UInt32 {
    case top = 0
    case center = 1
    case bottom = 2
    case fill = 3
}

public enum InlineAlignment: UInt32 {
    case topTo = 0
    case centerTo = 1
    case baselineTo = 3
    case bottomTo = 2
    public static let toTop: Self = .topTo
    case toCenter = 4
    case toBaseline = 8
    case toBottom = 12
    public static let top: Self = .topTo
    case center = 5
    case bottom = 14
    public static let imageMask: Self = .baselineTo
    public static let textMask: Self = .toBottom
}

public enum EulerOrder: UInt32 {
    case xyz = 0
    case xzy = 1
    case yxz = 2
    case yzx = 3
    case zxy = 4
    case zyx = 5
}

public enum Key: UInt32 {
    case none = 0
    case special = 4194304
    case escape = 4194305
    case tab = 4194306
    case backtab = 4194307
    case backspace = 4194308
    case enter = 4194309
    case kpEnter = 4194310
    case insert = 4194311
    case delete = 4194312
    case pause = 4194313
    case print = 4194314
    case sysreq = 4194315
    case clear = 4194316
    case home = 4194317
    case end = 4194318
    case left = 4194319
    case up = 4194320
    case right = 4194321
    case down = 4194322
    case pageup = 4194323
    case pagedown = 4194324
    case shift = 4194325
    case ctrl = 4194326
    case meta = 4194327
    case alt = 4194328
    case capslock = 4194329
    case numlock = 4194330
    case scrolllock = 4194331
    case f1 = 4194332
    case f2 = 4194333
    case f3 = 4194334
    case f4 = 4194335
    case f5 = 4194336
    case f6 = 4194337
    case f7 = 4194338
    case f8 = 4194339
    case f9 = 4194340
    case f10 = 4194341
    case f11 = 4194342
    case f12 = 4194343
    case f13 = 4194344
    case f14 = 4194345
    case f15 = 4194346
    case f16 = 4194347
    case f17 = 4194348
    case f18 = 4194349
    case f19 = 4194350
    case f20 = 4194351
    case f21 = 4194352
    case f22 = 4194353
    case f23 = 4194354
    case f24 = 4194355
    case f25 = 4194356
    case f26 = 4194357
    case f27 = 4194358
    case f28 = 4194359
    case f29 = 4194360
    case f30 = 4194361
    case f31 = 4194362
    case f32 = 4194363
    case f33 = 4194364
    case f34 = 4194365
    case f35 = 4194366
    case kpMultiply = 4194433
    case kpDivide = 4194434
    case kpSubtract = 4194435
    case kpPeriod = 4194436
    case kpAdd = 4194437
    case kp0 = 4194438
    case kp1 = 4194439
    case kp2 = 4194440
    case kp3 = 4194441
    case kp4 = 4194442
    case kp5 = 4194443
    case kp6 = 4194444
    case kp7 = 4194445
    case kp8 = 4194446
    case kp9 = 4194447
    case menu = 4194370
    case hyper = 4194371
    case help = 4194373
    case back = 4194376
    case forward = 4194377
    case stop = 4194378
    case refresh = 4194379
    case volumedown = 4194380
    case volumemute = 4194381
    case volumeup = 4194382
    case mediaplay = 4194388
    case mediastop = 4194389
    case mediaprevious = 4194390
    case medianext = 4194391
    case mediarecord = 4194392
    case homepage = 4194393
    case favorites = 4194394
    case search = 4194395
    case standby = 4194396
    case openurl = 4194397
    case launchmail = 4194398
    case launchmedia = 4194399
    case launch0 = 4194400
    case launch1 = 4194401
    case launch2 = 4194402
    case launch3 = 4194403
    case launch4 = 4194404
    case launch5 = 4194405
    case launch6 = 4194406
    case launch7 = 4194407
    case launch8 = 4194408
    case launch9 = 4194409
    case launcha = 4194410
    case launchb = 4194411
    case launchc = 4194412
    case launchd = 4194413
    case launche = 4194414
    case launchf = 4194415
    case unknown = 8388607
    case space = 32
    case exclam = 33
    case quotedbl = 34
    case numbersign = 35
    case dollar = 36
    case percent = 37
    case ampersand = 38
    case apostrophe = 39
    case parenleft = 40
    case parenright = 41
    case asterisk = 42
    case plus = 43
    case comma = 44
    case minus = 45
    case period = 46
    case slash = 47
    case key0 = 48
    case key1 = 49
    case key2 = 50
    case key3 = 51
    case key4 = 52
    case key5 = 53
    case key6 = 54
    case key7 = 55
    case key8 = 56
    case key9 = 57
    case colon = 58
    case semicolon = 59
    case less = 60
    case equal = 61
    case greater = 62
    case question = 63
    case at = 64
    case a = 65
    case b = 66
    case c = 67
    case d = 68
    case e = 69
    case f = 70
    case g = 71
    case h = 72
    case i = 73
    case j = 74
    case k = 75
    case l = 76
    case m = 77
    case n = 78
    case o = 79
    case p = 80
    case q = 81
    case r = 82
    case s = 83
    case t = 84
    case u = 85
    case v = 86
    case w = 87
    case x = 88
    case y = 89
    case z = 90
    case bracketleft = 91
    case backslash = 92
    case bracketright = 93
    case asciicircum = 94
    case underscore = 95
    case quoteleft = 96
    case braceleft = 123
    case bar = 124
    case braceright = 125
    case asciitilde = 126
    case yen = 165
    case section = 167
    case globe = 4194416
    case keyboard = 4194417
    case jisEisu = 4194418
    case jisKana = 4194419
}

public struct KeyModifierMask: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    public static let codeMask: Self = .init(rawValue: 8388607)
    public static let modifierMask: Self = .init(rawValue: 532676608)
    public static let maskCmdOrCtrl: Self = .init(rawValue: 16777216)
    public static let maskShift: Self = .init(rawValue: 33554432)
    public static let maskAlt: Self = .init(rawValue: 67108864)
    public static let maskMeta: Self = .init(rawValue: 134217728)
    public static let maskCtrl: Self = .init(rawValue: 268435456)
    public static let maskKpad: Self = .init(rawValue: 536870912)
    public static let maskGroupSwitch: Self = .init(rawValue: 1073741824)
}

public enum MouseButton: UInt32 {
    case none = 0
    case left = 1
    case right = 2
    case middle = 3
    case wheelUp = 4
    case wheelDown = 5
    case wheelLeft = 6
    case wheelRight = 7
    case xbutton1 = 8
    case xbutton2 = 9
}

public struct MouseButtonMask: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    public static let left: Self = .init(rawValue: 1)
    public static let right: Self = .init(rawValue: 2)
    public static let middle: Self = .init(rawValue: 4)
    public static let mbXbutton1: Self = .init(rawValue: 128)
    public static let mbXbutton2: Self = .init(rawValue: 256)
}

public enum JoyButton: Int32 {
    case invalid = -1
    case a = 0
    case b = 1
    case x = 2
    case y = 3
    case back = 4
    case guide = 5
    case start = 6
    case leftStick = 7
    case rightStick = 8
    case leftShoulder = 9
    case rightShoulder = 10
    case dpadUp = 11
    case dpadDown = 12
    case dpadLeft = 13
    case dpadRight = 14
    case misc1 = 15
    case paddle1 = 16
    case paddle2 = 17
    case paddle3 = 18
    case paddle4 = 19
    case touchpad = 20
    case sdlMax = 21
    case max = 128
}

public enum JoyAxis: Int32 {
    case invalid = -1
    case leftX = 0
    case leftY = 1
    case rightX = 2
    case rightY = 3
    case triggerLeft = 4
    case triggerRight = 5
    case sdlMax = 6
    case max = 10
}

public enum MIDIMessage: UInt32 {
    case none = 0
    case noteOff = 8
    case noteOn = 9
    case aftertouch = 10
    case controlChange = 11
    case programChange = 12
    case channelPressure = 13
    case pitchBend = 14
    case systemExclusive = 240
    case quarterFrame = 241
    case songPositionPointer = 242
    case songSelect = 243
    case tuneRequest = 246
    case timingClock = 248
    case start = 250
    case `continue` = 251
    case stop = 252
    case activeSensing = 254
    case systemReset = 255
}

public enum ErrorType: UInt32 {
    case ok = 0
    case failed = 1
    case errUnavailable = 2
    case errUnconfigured = 3
    case errUnauthorized = 4
    case errParameterRangeError = 5
    case errOutOfMemory = 6
    case errFileNotFound = 7
    case errFileBadDrive = 8
    case errFileBadPath = 9
    case errFileNoPermission = 10
    case errFileAlreadyInUse = 11
    case errFileCantOpen = 12
    case errFileCantWrite = 13
    case errFileCantRead = 14
    case errFileUnrecognized = 15
    case errFileCorrupt = 16
    case errFileMissingDependencies = 17
    case errFileEof = 18
    case errCantOpen = 19
    case errCantCreate = 20
    case errQueryFailed = 21
    case errAlreadyInUse = 22
    case errLocked = 23
    case errTimeout = 24
    case errCantConnect = 25
    case errCantResolve = 26
    case errConnectionError = 27
    case errCantAcquireResource = 28
    case errCantFork = 29
    case errInvalidData = 30
    case errInvalidParameter = 31
    case errAlreadyExists = 32
    case errDoesNotExist = 33
    case errDatabaseCantRead = 34
    case errDatabaseCantWrite = 35
    case errCompilationFailed = 36
    case errMethodNotFound = 37
    case errLinkFailed = 38
    case errScriptFailed = 39
    case errCyclicLink = 40
    case errInvalidDeclaration = 41
    case errDuplicateSymbol = 42
    case errParseError = 43
    case errBusy = 44
    case errSkip = 45
    case errHelp = 46
    case errBug = 47
    case errPrinterOnFire = 48
}

public enum PropertyHint: UInt32 {
    case none = 0
    case range = 1
    case `enum` = 2
    case enumSuggestion = 3
    case expEasing = 4
    case link = 5
    case flags = 6
    case layers2DRender = 7
    case layers2DPhysics = 8
    case layers2DNavigation = 9
    case layers3DRender = 10
    case layers3DPhysics = 11
    case layers3DNavigation = 12
    case layersAvoidance = 37
    case file = 13
    case dir = 14
    case globalFile = 15
    case globalDir = 16
    case resourceType = 17
    case multilineText = 18
    case expression = 19
    case placeholderText = 20
    case colorNoAlpha = 21
    case objectId = 22
    case typeString = 23
    case nodePathToEditedNode = 24
    case objectTooBig = 25
    case nodePathValidTypes = 26
    case saveFile = 27
    case globalSaveFile = 28
    case intIsObjectid = 29
    case intIsPointer = 30
    case arrayType = 31
    case localeId = 32
    case localizableString = 33
    case nodeType = 34
    case hideQuaternionEdit = 35
    case password = 36
    case max = 38
}

public struct PropertyUsageFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    public static let none: Self = .init(rawValue: 0)
    public static let storage: Self = .init(rawValue: 2)
    public static let editor: Self = .init(rawValue: 4)
    public static let `internal`: Self = .init(rawValue: 8)
    public static let checkable: Self = .init(rawValue: 16)
    public static let checked: Self = .init(rawValue: 32)
    public static let group: Self = .init(rawValue: 64)
    public static let category: Self = .init(rawValue: 128)
    public static let subgroup: Self = .init(rawValue: 256)
    public static let classIsBitfield: Self = .init(rawValue: 512)
    public static let noInstanceState: Self = .init(rawValue: 1024)
    public static let restartIfChanged: Self = .init(rawValue: 2048)
    public static let scriptVariable: Self = .init(rawValue: 4096)
    public static let storeIfNull: Self = .init(rawValue: 8192)
    public static let updateAllIfModified: Self = .init(rawValue: 16384)
    public static let scriptDefaultValue: Self = .init(rawValue: 32768)
    public static let classIsEnum: Self = .init(rawValue: 65536)
    public static let nilIsVariant: Self = .init(rawValue: 131072)
    public static let array: Self = .init(rawValue: 262144)
    public static let alwaysDuplicate: Self = .init(rawValue: 524288)
    public static let neverDuplicate: Self = .init(rawValue: 1048576)
    public static let highEndGfx: Self = .init(rawValue: 2097152)
    public static let nodePathFromSceneRoot: Self = .init(rawValue: 4194304)
    public static let resourceNotPersistent: Self = .init(rawValue: 8388608)
    public static let keyingIncrements: Self = .init(rawValue: 16777216)
    public static let deferredSetResource: Self = .init(rawValue: 33554432)
    public static let editorInstantiateObject: Self = .init(rawValue: 67108864)
    public static let editorBasicSetting: Self = .init(rawValue: 134217728)
    public static let readOnly: Self = .init(rawValue: 268435456)
    public static let secret: Self = .init(rawValue: 536870912)
    public static let `default`: Self = .init(rawValue: 6)
    public static let noEditor: Self = .init(rawValue: 2)
}

public struct MethodFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

    public static let flagNormal: Self = .init(rawValue: 1)
    public static let flagEditor: Self = .init(rawValue: 2)
    public static let flagConst: Self = .init(rawValue: 4)
    public static let flagVirtual: Self = .init(rawValue: 8)
    public static let flagVararg: Self = .init(rawValue: 16)
    public static let flagStatic: Self = .init(rawValue: 32)
    public static let flagObjectCore: Self = .init(rawValue: 64)
    public static let flagsDefault: Self = .init(rawValue: 1)
}

