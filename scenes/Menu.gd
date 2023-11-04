extends MarginContainer

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/template.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://scenes/template_options.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/template_credits.tscn")


func _on_quit_pressed():
	get_tree().quit()
