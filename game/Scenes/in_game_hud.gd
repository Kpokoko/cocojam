extends MarginContainer

@onready var health_label = $HBoxContainer/HP
@onready var score_label = $HBoxContainer/Score
@onready var steps_label = $HBoxContainer2/Steps
@onready var enemy_health_label = $"../HBoxContainer2/HP_Enemy"

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
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster") 
	if Monster:
		Monster.take_damage(10,1)
	elif monster:
		monster.take_damage(10,1)
	

func _on_skill_2_pressed() -> void:
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster") 
	if Monster:
		Monster.take_damage(20,2)
	elif monster:
		monster.take_damage(20,2)

func _on_skill_3_pressed() -> void:
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster") 
	if Monster:
		Monster.take_damage(40,3)
	elif monster:
		monster.take_damage(40,3)

func _on_skill_4_pressed() -> void:
	var Monster = get_tree().current_scene.get_node_or_null("Monster") 
	var monster = get_tree().current_scene.get_node_or_null("monster") 
	if Monster:
		Monster.take_damage(50,4)
	elif monster:
		monster.take_damage(50,4)
