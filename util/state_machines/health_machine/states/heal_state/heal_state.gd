class_name HealState
extends HealthState

@export var normal_state: NormalState

func process(delta:float) -> void:
	get_parent().component.current_health += get_parent().component.healing_rate * delta
	if get_parent().component.current_health >= get_parent().component.max_health:
		get_parent().component.current_health = get_parent().component.max_health
		if normal_state: get_parent().change_state(normal_state)
