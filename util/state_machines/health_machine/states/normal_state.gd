class_name NormalState
extends HealthMachine.HealthState

@onready
var hurt_state: HurtState = $"../HurtState"
@onready
var heal_state: HealState = $"../HealState"

func _on_timer_timeout() -> void:
	get_parent()._change_state(heal_state)


func _on_hurtbox_area_entered(area: Area2D) -> void:
	get_parent()._change_state(hurt_state)
