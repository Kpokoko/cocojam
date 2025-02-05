extends Node

@onready var card = $background/card
var current_card =  Cards.get_random_card()

func _ready():
	Inventory.update_inventory("current_card", current_card)
	$background/card/Label.text = current_card["title"];
	$background/card.texture = load (current_card["texture"]);
	$background/card.scale.x = 0.184;
	$background/card.scale.y = 0.45;
		
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/skills.tscn")
