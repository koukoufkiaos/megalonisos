class_name WalkState
extends MoveState

@export var stand_state: StandState
@export var jump_state: JumpState

func physics_process(delta: float) -> void:
	var input: Vector2 = get_parent().component.get_direction()
	input = input.normalized()
	get_parent().target.velocity = input * get_parent().component.speed
	get_parent().target.move_and_slide()
	
	if stand_state and input == Vector2.ZERO:
		get_parent().change_state(stand_state)
	elif jump_state and input.y == 0 and get_parent().component.wants_to_jump():
		get_parent().change_state(jump_state)
