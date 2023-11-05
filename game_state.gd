extends Node

signal customer_done
signal start_dialog

var has_hat = false

func _process(delta):
	if Input.is_action_pressed("Escape"):
		get_tree().quit()
