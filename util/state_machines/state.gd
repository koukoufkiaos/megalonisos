class_name State
extends Node2D

@export var animation: String

func enter() -> void:
	get_parent().animation_player.play(animation)

func exit() -> void:
	get_parent().animation_player.stop()

func process(delta: float) -> void:
	pass
	
func physics_process(delta: float) -> void:
	pass
