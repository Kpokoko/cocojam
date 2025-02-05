extends Node2D

class_name Monster

@export var monster_name: String = "Goblin"
@export var health: int = 100
@export var damage: int = 10
@export var steps_given: int = 6
@export var sprite_texture: Texture2D

func monster_initialize():
	Globals.enemy_health = health
	Globals.damage = damage
	Globals.set_steps(steps_given)
	Globals.steps = steps_given
	Events.enemy_health_changes.emit(health)
	Events.steps_changes.emit(steps_given)

func take_damage(amount: int, steps: int):
	Globals.change_enemy_health(-amount)
	Globals.change_steps(-steps)
	health = Globals.enemy_health
	if health <= 0:
		die()

func die():
	print("lololololol")
	Globals.spawn_new_monster()
	queue_free()
	
