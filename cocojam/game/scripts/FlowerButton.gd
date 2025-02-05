extends Area2D

@onready var button := $ZonePicker
@onready var collision := $CollisionShape2D

func _ready() -> void:
	print(button.get_rect())
	print(collision.shape.extents)
	print(collision.shape.extents * 2)
	var a = collision.shape.extents * 2
	print(a)
	button.set_size(a)
	print(button.get_rect())
