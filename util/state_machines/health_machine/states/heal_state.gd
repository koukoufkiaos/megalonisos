class_name HealState
extends HealthMachine.HealthState

@export
var rate: float = 0.5

@onready
var normal_state: NormalState = $"../NormalState"

func _handle_frame(delta:float) -> State:
	get_parent().current_health += rate * delta
	if get_parent().current_health >= get_parent().max_health:
		get_parent().current_health = get_parent().max_health
		return normal_state
	return null
