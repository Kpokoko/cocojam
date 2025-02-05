extends Node

@onready var sprite := $Sprite
@export var flip: bool = false

func _ready() -> void:
	sprite.play("default")
	sprite.flip_h = flip;

func _process(delta: float) -> void:
	pass
