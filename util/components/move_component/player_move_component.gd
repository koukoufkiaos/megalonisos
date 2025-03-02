class_name PlayerMoveComponent
extends MoveComponent

func get_direction() -> Vector2:
	var input: Vector2 = Vector2.ZERO
	input.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return input.normalized()

func wants_to_jump() -> bool:
	return Input.is_action_pressed("jump")
