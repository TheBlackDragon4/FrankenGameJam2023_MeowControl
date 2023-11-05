extends Node2D

var dialog_shown = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if GameState.research_tries <1 && !dialog_shown:
		$AcceptDialog.show()
		dialog_shown = true
	
	



func _on_accept_dialog_canceled():
	
	get_tree().change_scene_to_file("res://scenes/shop/shopfront.tscn")


func _on_accept_dialog_confirmed():
	
	get_tree().change_scene_to_file("res://scenes/shop/shopfront.tscn")
