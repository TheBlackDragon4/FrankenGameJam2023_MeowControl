extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_create_new_hat_pressed():
	if($hat_type_picker/hat_type_1.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_1.texture
	if($hat_type_picker/hat_type_2.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_2.texture
	if($hat_type_picker/hat_type_3.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_3.texture
	if($hat_type_picker/hat_type_4.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_4.texture
	if($hat_type_picker/hat_type_5.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_5.texture
	if($hat_type_picker/hat_type_6.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_6.texture
	if($hat_type_picker/hat_type_7.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_7.texture
	if($hat_type_picker/hat_type_8.visible == true):
		$new_hat/new_hat_type.texture = $hat_type_picker/hat_type_8.texture
		
	if($hat_color_picker/hat_color_1.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_1.texture
	if($hat_color_picker/hat_color_2.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_2.texture
	if($hat_color_picker/hat_color_3.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_3.texture
	if($hat_color_picker/hat_color_4.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_4.texture
	if($hat_color_picker/hat_color_5.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_5.texture
	if($hat_color_picker/hat_color_6.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_6.texture
	if($hat_color_picker/hat_color_7.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_7.texture
	if($hat_color_picker/hat_color_8.visible == true):
		$new_hat/new_hat_color.texture = $hat_color_picker/hat_color_8.texture
	
	$new_hat/new_hat_color.show()
	$new_hat/new_hat_type.show()
	
	
	
	
