extends MarginContainer

@onready var health_label = $HBoxContainer/HP
@onready var score_label = $HBoxContainer/Score
@onready var steps_label = $HBoxContainer2/Steps



func _ready():
	Events.health_changes.connect(update_health)
	Events.point_changes.connect(update_points)
	Events.steps_changes.connect(update_steps)
	
func update_health(health: int):
	health_label.text = str(health)
	
func update_points(points: int):
	score_label.text = str(points)
	
func update_steps(steps: int):
	steps_label.text = str(steps)
	


func _on_button_pressed() -> void:
	Globals.change_steps(-1)
		
