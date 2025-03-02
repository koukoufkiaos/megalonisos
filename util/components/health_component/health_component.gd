class_name HealthComponent
extends Component

@export var max_health: float = 50
@onready var current_health: float = max_health

@export var healing_rate: float = 0.5

@onready var timer: Timer = $Timer
