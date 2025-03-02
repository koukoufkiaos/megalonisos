class_name StateMachine
extends Node2D

signal state_changed(previous, new)

@export var target: CharacterBody2D
@export var component: Component
@export var animation_player: AnimationPlayer

@export var initial_state: State
@onready var _state = initial_state

func _ready():
	_state.enter()
	
func change_state(state: State) -> void:
	state_changed.emit(_state, state)
	
	_state.exit()
	_state = state
	_state.enter()

func process(delta: float) -> void:
	_state.process(delta)

func physics_physics(delta: float) -> void:
	_state.physics_process(delta)
	
func _on_state_changed(previous, new):
	print("State changed from: ", previous, " to: ", new)
