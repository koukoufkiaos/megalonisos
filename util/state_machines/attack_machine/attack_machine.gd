class_name AttackMachine
extends StateMachine

class AttackState extends StateMachine.State:
	pass

func _setup(parent: CharacterBody2D, animation_player: AnimationPlayer) -> void:
	super(parent, animation_player)
	state = $PassiveState
	state._enter()
