extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_button_pressed():
	#skip night button ends night scene instantly
	get_tree().change_scene_to_file("res://scenes/control_room/control_room.tscn")


func _on_skip_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/control_room.tscn")
