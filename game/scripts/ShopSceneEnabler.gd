extends TextureButton

@export var TargetSceneName: String
@onready var shop_node: Node = get_node_or_null("/root/Shop")

func _ready():
	if shop_node:
		if shop_node.has_node(TargetSceneName):
			pressed.connect(_on_pressed)

func _on_pressed():
	var scene = shop_node.get_node_or_null(TargetSceneName)
	if scene:
		shop_node._enable_list(TargetSceneName)
