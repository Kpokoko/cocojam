extends Node2D

class_name Monster

@export var monster_name: String = "Goblin"
@export var health: int = 100
@export var damage: int = 10
@export var steps_given: int = 6
@export var sprite_texture: Texture2D
@export var score: int = 3
var blocked_turns = 0
var def_damage = damage

@export var effects = {
	"poison": {
		"duration": 0,
		"damage": 0
	},
	"fire": {
		"duration": 0,
		"damage": 0
	},
	"cut": {
		"duration": 0,
		"damage": 0
	},
	"roots": {
		"duration": 0
	}
}

func _ready() -> void:
	Events.out_of_steps.connect(effects_check)

func monster_initialize():
	Globals.enemy_health = health
	Globals.damage = damage
	Globals.set_steps(steps_given)
	Globals.steps = Globals.deafault_steps
	Events.enemy_health_changes.emit(health)
	Events.steps_changes.emit(Globals.steps)

func take_damage(amount: int, steps: int):
	Globals.change_enemy_health(-amount)
	Globals.change_steps(-steps)
	health = Globals.enemy_health
	if health <= 0:
		die()

func add_effect(effect: String, damage: int, duration: int):
	if effect in effects:
		if effect == "roots":
			blocked_turns = duration - 1
			if duration > 0:
				Globals.damage = 0
		else:
			effects[effect]["damage"] += damage
			effects[effect]["duration"] = duration
	print("Добавлен эффект " + effect)

func effects_check(new_health):
	for effect_name in effects.keys():
		var effect_data = effects[effect_name]
		if effect_name != "roots" and effect_data["duration"] > 0:
			take_damage(effect_data["damage"], 0)
			effect_data["duration"] -= 1
		elif effect_name != "roots" and effect_data["duration"] <= 0:
			effect_data["damage"] = 0
	if blocked_turns > 0:
		blocked_turns -= 1
	else:
		Globals.damage = damage

func die():
	Globals.spawn_new_monster()
	Globals.change_point(score)
	queue_free()
