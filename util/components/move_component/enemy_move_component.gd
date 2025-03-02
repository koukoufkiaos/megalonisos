class_name EnemyMoveComponent
extends MoveComponent

var rng = RandomNumberGenerator.new()

func get_direction() -> Vector2:
	var direction: Vector2
	direction.x = rng.randi_range(-1, 1)
	direction.y = rng.randi_range(-1, 1)
	return direction

func wants_to_jump() -> bool:
	return rng.randi_range(0, 1)
