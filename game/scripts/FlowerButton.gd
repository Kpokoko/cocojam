extends Area2D

@onready var button := $ZonePicker
@onready var collision := $CollisionShape2D

func _ready() -> void:
	var a = collision.shape.extents * 2
	button.set_size(a)
