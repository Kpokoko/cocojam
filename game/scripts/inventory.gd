extends Node

@onready var skill_slots = [
	$Background/Inventory/skill_1,
	$Background/Inventory/skill_2,
	$Background/Inventory/skill_3,
	$Background/Inventory/skill_4,
	$Background/Inventory/skill_5,
	$Background/Inventory/skill_6
]

var inventory = {
	"card1": {
		"id": '1',
		"title": 'Плевок ядом',
		"texture": "res://assets/white.png",
		"setup_cost": 0,
		"using_cost": 1, 
		"damage_or_healing": 1, 
		"intermittent_damage": 1,
		"effect_time": 2,
		"rollback_moves": 1}
	}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func update_inventory(card_key: String, card_data: Dictionary) -> void:
	Inventory.inventory[card_key] = card_data
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
