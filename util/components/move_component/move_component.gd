class_name MoveComponent
extends Component

@export var speed: float

func get_direction() -> Vector2:
	return Vector2.ZERO

func wants_to_jump() -> bool:
	return false
