extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_beam_2_timeout():
	$Beam.show()
	$Beam2.stop()

func _on_beam_3_timeout():
	$Beam.queue_free()
	$Beam3.stop()


func _on_titletimer_timeout():
	$Titleintro.show()
	

func _on_audio_stream_player_2d_2_finished():
	get_tree().change_scene_to_file("res://scenes/optimization/hat_production.tscn")


func _on_skip_pressed():
	get_tree().change_scene_to_file("res://scenes/optimization/hat_production.tscn")
