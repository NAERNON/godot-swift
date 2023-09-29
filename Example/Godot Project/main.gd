extends Node3D

func _ready():
    var timer = get_node("Timer") as Timer
    
    var character = get_node("Character") as Character
    timer.timeout.connect(character.timer_ended)
