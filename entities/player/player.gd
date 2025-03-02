class_name Player
extends CharacterBody2D

@onready var move_machine: MoveMachine = $MoveMachine
@onready var health_machine: HealthMachine = $HealthMachine

func _process(delta) -> void:
	move_machine.process(delta)
	health_machine.process(delta)

func _physics_process(delta: float) -> void:
	print(health_machine.component.current_health)
	print(health_machine._state)
	move_machine.physics_physics(delta)
	health_machine.physics_physics(delta)
