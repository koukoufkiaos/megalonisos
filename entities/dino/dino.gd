class_name Dino
extends CharacterBody2D

@onready var move_machine: MoveMachine = $MoveMachine
@onready var health_machine: HealthMachine = $HealthMachine

func _process(delta) -> void:
	move_machine.process(delta)
	health_machine.process(delta)

func _physics_process(delta: float) -> void:
	move_machine.physics_physics(delta)
	health_machine.physics_physics(delta)
