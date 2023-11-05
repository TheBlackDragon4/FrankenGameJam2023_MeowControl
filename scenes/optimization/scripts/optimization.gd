extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_create_hat_2_pressed():
	##changes scene to hat_production
	
	get_tree().change_scene_to_file("res://scenes/optimization/hat_production.tscn")
