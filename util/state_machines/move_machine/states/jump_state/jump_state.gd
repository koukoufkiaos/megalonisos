class_name JumpState
extends MoveState

var _force: float = 250
var _gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

@export var stand_state: StandState
@export var walk_state: WalkState

func enter() -> void:
	super()
	get_parent().target.velocity.y = -_force

func physics_process(delta: float) -> void:
	if (get_parent().target.velocity.y > 225):
		if stand_state and get_parent().target.velocity.x == 0:
			get_parent().change_state(stand_state)
		elif walk_state and get_parent().target.velocity.x != 0:
			get_parent().change_state(walk_state)
	
	get_parent().target.velocity.y += _gravity * delta
	get_parent().target.velocity.x = get_parent().component.get_direction().x * get_parent().component.speed
	get_parent().target.move_and_slide()
