class_name HurtState
extends HealthState

@export var normal_state: NormalState
@export var dead_state: DeadState

func enter():
	super()
	
	get_parent().component.timer.start()
	get_parent().component.current_health -= 1
	
	if normal_state and get_parent().component.current_health > 0: get_parent().change_state(normal_state)
	elif dead_state and get_parent().component.current_health <= 0: get_parent().change_state(dead_state)
	
