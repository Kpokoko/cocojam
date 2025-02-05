extends Node2D

@export var Scenes: Array[String]
@onready var Dict: Dictionary = {}

func _ready() -> void:
	for child in get_children():
		if child.name in Scenes:
			Dict[child.name] = child
			#child.visible = false
			print("Ассоциирован узел:", child.name)
	print(Dict)

func _enable_list(currList: String) -> void:
	print(currList)
	print(Dict[currList])
	for sceneName in Dict.keys():
		Dict[sceneName].visible = false
	Dict[currList].visible = true
