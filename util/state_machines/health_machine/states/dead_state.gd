class_name DeadState
extends HealthMachine.HealthState

func _enter():
	super()
	parent.queue_free()
