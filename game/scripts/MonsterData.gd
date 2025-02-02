extends Node

var monster_presets = [
	{
		"name": "Goblin",
		"health": 80,
		"damage": 10,
		"steps_given": 5,
		"sprite": preload("res://game/sprites/Goblin.svg")
	},
	{
		"name": "Orc",
		"health": 150,
		"damage": 20,
		"steps_given": 8,
		"sprite": preload("res://game/sprites/Orc.svg")
	},
	{
		"name": "Dragon",
		"health": 300,
		"damage": 40,
		"steps_given": 10,
		"sprite": preload("res://game/sprites/Dragon.svg")
	}
]

func get_random_monster():
	return monster_presets[randi() % monster_presets.size()]
