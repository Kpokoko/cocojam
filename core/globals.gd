extends Node

var points:= 0
var health := 100
var enemy_health := 100
var steps := 6
var damage := 15
var deafault_steps := 6

func change_point(diff: int):
	points += diff
	Events.point_changes.emit(points)
	
func change_health(diff: int):
	health += diff
	Events.health_changes.emit(health)
	
func change_enemy_health(diff: int):
	enemy_health += diff
	Events.enemy_health_changes.emit(enemy_health)
	
func set_damage(diff: int):
	damage = diff
	
func set_steps(diff: int):
	deafault_steps = diff
	
func change_steps(diff: int):
	steps += diff
	if steps <= 0:
		change_health(-damage)
		steps = deafault_steps
		
	Events.steps_changes.emit(steps)
	
func spawn_new_monster():

		
	var monster_scene = preload("res://game/scene_parts/monster.tscn")  # Загружаем сцену монстра
	var new_monster = monster_scene.instantiate()  # Создаём новый экземпляр
	
	var old_monster = get_tree().current_scene.get_node_or_null("Monster")
	if old_monster:
		new_monster.name = "monster"
	else:
		new_monster.name = "Monster"
	var monster_data = MonsterData.get_random_monster()
	
	# Применяем параметры
	new_monster.monster_name = monster_data["name"]
	new_monster.health = monster_data["health"]
	new_monster.damage = monster_data["damage"]
	new_monster.steps_given = monster_data["steps_given"]
	new_monster.get_node("Sprite2D").texture = monster_data["sprite"]
	new_monster.monster_initialize()
	
	# Добавляем монстра в сцену с задержкой (чтобы избежать ошибок загрузки)
	get_tree().current_scene.call_deferred("add_child", new_monster)

	# Обновляем UI
	Events.enemy_health_changes.emit(new_monster.health)
