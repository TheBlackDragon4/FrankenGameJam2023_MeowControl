extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://dialog/shop.dialogue"), "customer_talking")
	GameState.connect("change_scene", _change_scene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _change_scene():
	get_tree().change_scene_to_file("res://scenes/control_room/control_room.tscn")
