extends MarginContainer

@onready var health_label = $HBoxContainer/HP
@onready var score_label = $HBoxContainer/Score
@onready var steps_label = $HBoxContainer2/Steps
@onready var enemy_health_label = $"../HBoxContainer2/HP_Enemy"
var enemy = []

func _ready():
	Events.health_changes.connect(update_health)
	Events.point_changes.connect(update_points)
	Events.steps_changes.connect(update_steps)
	Events.enemy_health_changes.connect(enemy_take_damage)
	Globals.spawn_new_monster()
	
	
func update_health(health: int):
	health_label.text = str(health)
	
func update_points(points: int):
	score_label.text = str(points)
	
func update_steps(steps: int):
	steps_label.text = str(steps)
	
func enemy_take_damage(en_health: int):
	enemy_health_label.text = str(en_health)
	
func _on_skill_1_pressed() -> void:
	enemy = []
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster")
	if Monster:
		enemy.append(Monster)
	elif monster:
		enemy.append(monster)
	enemy[0].take_damage(0,1)
	enemy[0].add_effect("roots",0,2)
	

func _on_skill_2_pressed() -> void:
	enemy = []
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster")
	if Monster:
		enemy.append(Monster)
	elif monster:
		enemy.append(monster)
	enemy[0].take_damage(0,1)
	enemy[0].add_effect("poison",1,2)

func _on_skill_3_pressed() -> void:
	enemy = []
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster")
	if Monster:
		enemy.append(Monster)
	elif monster:
		enemy.append(monster)
	enemy[0].take_damage(0,1)

func _on_skill_4_pressed() -> void:
	enemy = []
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster")
	if Monster:
		enemy.append(Monster)
	elif monster:
		enemy.append(monster)
	enemy[0].take_damage(10,1)
