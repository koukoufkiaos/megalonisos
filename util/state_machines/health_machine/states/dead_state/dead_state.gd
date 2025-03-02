class_name DeadState
extends HealthState

func enter():
	super()
	get_parent().target.queue_free()
