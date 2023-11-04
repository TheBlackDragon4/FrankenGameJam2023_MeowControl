extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event.is_pressed():
		get_tree().change_scene_to_file("res://backButton/testScene.tscn")
	
#	if event is InputEventMouseButton:
#		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#			print("Left button clicked", event.position)
#		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
#			print("Right button clicked", event.position)
#		if event.button_index == MOUSE_BUTTON_MIDDLE and event.pressed:
#			print("Middle button clicked", event.position)




