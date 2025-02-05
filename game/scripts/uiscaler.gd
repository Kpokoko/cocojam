extends Sprite2D

@export var Width : int
@export var Height : int

func _ready() -> void:
	var texture_size = self.texture.get_size()
	var scale_x = Width / texture_size.x
	var scale_y = Height / texture_size.y
	self.scale = Vector2(scale_x, scale_y)
