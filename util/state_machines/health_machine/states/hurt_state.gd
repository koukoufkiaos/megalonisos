class_name HurtState
extends HealthMachine.HealthState

@onready
var normal_state: NormalState = $"../NormalState"
@onready
var dead_state: DeadState = $"../DeadState"

func _enter():
	super()
	get_parent().timer.start()

	get_parent().current_health -= 1
	get_parent()._change_state(normal_state) if get_parent().current_health > 0 else get_parent()._change_state(dead_state)
	
