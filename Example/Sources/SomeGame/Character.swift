import Godot

@Exposable
public class Character: Node3D {
    public var moveSpeed: Float = 2
    public var moveFriction: Float = 2.5
    public var fastSpeedTrigger: Float = 3
    public var movementOptions: MovementOptions = []
    
    public var shape: Shape = .box {
        didSet {
            meshInstance.mesh = shape.mesh()
        }
    }
    
    private let meshInstance = MeshInstance3D()
    private var currentSpeed: Float = 0
    private var canTriggerFastSpeed = true
    
    // MARK: Enums & Option sets
    
    @GodotEnum
    public enum Shape: Int64 {
        case box
        case torus
        
        func mesh() -> Mesh {
            switch self {
            case .box:
                BoxMesh()
            case .torus:
                TorusMesh()
            }
        }
    }
    
    @GodotOptionSet
    public struct MovementOptions {
        public static let none             = MovementOptions([])
        public static let stopsImmediately = MovementOptions(rawValue: 1 << 0)
        public static let canOnlyGoLeft    = MovementOptions(rawValue: 1 << 1)
    }
    
    // MARK: Signals
    
    @Emitter
    public struct ReachedFastSpeed {}
    
    // MARK: Virtual functions
    
    public override func _ready() {
        gdPrint("The character is ready")
        
        meshInstance.mesh = shape.mesh()
        addChild(node: meshInstance)
    }
    
    public override func _process(delta: Double) {
        guard !Engine.shared.isEditorHint() else {
            return
        }
        
        let floatDelta = Float(delta)
        
        if Input.shared.isActionPressed(action: "move_right"),
           !movementOptions.contains(.canOnlyGoLeft) {
            currentSpeed += floatDelta * moveSpeed
        } else if Input.shared.isActionPressed(action: "move_left") {
            currentSpeed -= floatDelta * moveSpeed
        } else if movementOptions.contains(.stopsImmediately) {
            currentSpeed = 0
        } else {
            currentSpeed *= 1 - moveFriction * floatDelta
        }
        
        if abs(currentSpeed) > fastSpeedTrigger {
            if canTriggerFastSpeed {
                canTriggerFastSpeed = false
                triggerFastSpeed()
            }
        } else {
            canTriggerFastSpeed = true
        }
        
        self.position.x += currentSpeed * floatDelta
    }
    
    private func triggerFastSpeed() {
        gdPrint("Emit fast speed")
        emitterReachedFastSpeed.emit()
    }
    
    // MARK: Receivers
    
    @Receiver
    public func timerEnded() {
        gdPrint("Timer ended received")
    }
    
    // MARK: Functions
    
    public func printSomeCoolStuff(withString string: GodotString) {
        gdPrint("Printing some cool stuff: \(string)")
    }
}
