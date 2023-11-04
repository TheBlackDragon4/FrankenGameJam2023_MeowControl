extends MarginContainer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/control_room.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/menu/template_options.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/menu/template_credits.tscn")


func _on_quit_pressed():
	get_tree().quit()
