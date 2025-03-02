class_name NormalState
extends HealthState

@export var hurt_state: HurtState
@export var heal_state: HealState

func _on_timer_timeout() -> void:
	if heal_state: get_parent().change_state(heal_state)

func _on_hurtbox_area_entered(area: Area2D) -> void:
	if hurt_state: get_parent().change_state(hurt_state)
