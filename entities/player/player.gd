class_name Player
extends CharacterBody2D

@onready var move_machine: MoveMachine = $MoveMachine

func _process(delta) -> void:
	move_machine.process(delta)

func _physics_process(delta: float) -> void:
	move_machine.physics_physics(delta)
