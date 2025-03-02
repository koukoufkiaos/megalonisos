class_name StandState
extends MoveState

@export var jump_state: JumpState
@export var walk_state: WalkState

func physics_process(delta: float) -> void:
	if jump_state and get_parent().component.wants_to_jump():
		get_parent().change_state(jump_state)
	elif walk_state and get_parent().component.get_direction() != Vector2.ZERO:
		get_parent().change_state(walk_state)
