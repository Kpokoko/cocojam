extends Node

var cards = {
	"card1": {
		"id": '1',
		"title": 'Плевок ядом',
		"texture": "res://assets/white.png",
		"setup_cost": 0,
		"using_cost": 1, 
		"damage_or_healing": 1, 
		"intermittent_damage": 1,
		"effect_time": 2,
		"rollback_moves": 1
	},
	"card2": {
		"id": '2',
		"title": 'Слабое лечение игрока',
		"texture": "res://assets/white.png",
		"setup_cost": 1,
		"using_cost": 1, 
		"damage_or_healing": -1, 
		"intermittent_damage": 0,
		"effect_time": 0,
		"rollback_moves": 0
	},
	"card3": {
		"id": '3',
		"title": 'Поджог врага',
		"texture": "res://assets/white.png",
		"setup_cost": 2,
		"using_cost": 2, 
		"damage_or_healing": 1, 
		"intermittent_damage": 2,
		"effect_time": 2,
		"rollback_moves": 1
	},
	"card4": {
		"id": '4',
		"title": 'Опутывание врага корнями',
		"texture": "res://assets/white.png",
		"setup_cost": 0,
		"using_cost": 1, 
		"damage_or_healing": 1, 
		"intermittent_damage": 1,
		"effect_time": 2,
		"rollback_moves": 1
	},
	"card5": {
		"id": '5',
		"title": 'Удар',
		"texture": "res://assets/white.png",
		"setup_cost": 3,
		"using_cost": 3, 
		"damage_or_healing": 0, 
		"intermittent_damage": 0,
		"effect_time": 2,
		"rollback_moves": 3
	},
	"card6": {
		"id": '6',
		"title": 'Сильное лечение',
		"texture": "res://assets/white.png",
		"setup_cost": 1,
		"using_cost": 3, 
		"damage_or_healing": 4, 
		"intermittent_damage": 0,
		"effect_time": 0,
		"rollback_moves": 1
	},
	"card7": {
		"id": '7',
		"title": 'Порез шипами',
		"texture": "res://assets/white.png",
		"setup_cost": 0,
		"using_cost": 1, 
		"damage_or_healing": 1, 
		"intermittent_damage": 1,
		"effect_time": 2,
		"rollback_moves": 1
	},
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func get_random_card():
	var keys = cards.keys()
	var random_key = keys[randi() % keys.size()] 
	return cards.get(random_key)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
