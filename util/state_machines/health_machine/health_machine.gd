class_name HealthMachine
extends StateMachine

@export
var max_health: float
var current_health: float

@onready
var timer: Timer = $Timer

class HealthState extends StateMachine.State:
	pass

func _ready() -> void:
	current_health = max_health

func _setup(parent: CharacterBody2D, animation_player: AnimationPlayer) -> void:
	super(parent, animation_player)
	state = $NormalState
	state._enter()
