import Godot

@Exposable
public class Character: Node3D {
    public var moveSpeed: Float = 2
    public var moveFriction: Float = 2.5
    public var fastSpeedTrigger: Float = 3
    
    private var currentSpeed: Float = 0
    private var canTriggerFastSpeed = true
    
    // MARK: Signals
    
    @Emitter
    public struct ReachedFastSpeed {}
    
    // MARK: Virtual functions
    
    public override func _ready() {
        gdPrint("The character is ready")
        
        let meshInstance = MeshInstance3D()
        meshInstance.mesh = BoxMesh()
        addChild(node: meshInstance)
    }
    
    public override func _process(delta: Double) {
        guard !Engine.shared.isEditorHint() else {
            return
        }
        
        let floatDelta = Float(delta)
        
        if Input.shared.isActionPressed(action: "move_right") {
            currentSpeed += floatDelta * moveSpeed
        } else if Input.shared.isActionPressed(action: "move_left") {
            currentSpeed -= floatDelta * moveSpeed
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
}
