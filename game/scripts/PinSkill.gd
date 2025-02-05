extends TextureButton

@export var TargetPlaceName: String
@onready var TargetPlace := get_tree().get_root().get_node("Shop").get_node("Flower").get_node(TargetPlaceName).get_node("Area2D").get_node("ZonePicker")

func _ready() -> void:
	print(TargetPlaceName)
	pressed.connect(_set_skill)

func _set_skill() -> void:
	print(TargetPlaceName)
	TargetPlace.texture_normal = self.texture_normal
	TargetPlace.modulate = self.modulate
