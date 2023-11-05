extends Node2D

var type_counter = 0 #counter for the currently selected type
var color_counter = 0 #counter for the currently selected color
var hat_path = "res://assets/hats/hat_"
var color_path = "res://assets/optimization/hat_color/color_"
var current_hat_id = null 

# Called when the node enters the scene tree for the first time.
func _ready():
	
	if GameState.hat_inventory[0] != null:
		$hat_storage/storage_space_1_sprite.texture = load(hat_path + str(GameState.hat_inventory[0]/10) + str(GameState.hat_inventory[0]%10) + ".jpeg")
	
	if GameState.hat_inventory[1] != null:
		$hat_storage/storage_space_2_sprite.texture = load(hat_path + str(GameState.hat_inventory[1]/10) + str(GameState.hat_inventory[1]%10) + ".jpeg")
	
	if GameState.hat_inventory[2] != null:
		$hat_storage/storage_space_3_sprite.texture = load(hat_path + str(GameState.hat_inventory[2]/10) + str(GameState.hat_inventory[2]%10) + ".jpeg")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_create_new_hat_pressed():
	## function creates a new hat
	$new_hat/new_hat_1.texture = load(hat_path+str(type_counter)+str(color_counter)+".jpeg")
	
	current_hat_id = type_counter*10 + color_counter
	


func _on_back_to_optimization_pressed():
	##changes scene to optimization
	
	get_tree().change_scene_to_file("res://scenes/optimization/optimization.tscn")
	


func _on_type_go_right_pressed():
	
	if type_counter < 7:
		type_counter+=1
	else:
		type_counter = 0
	
	$hat_type_picker/hat_type_1.texture = load(hat_path+str(type_counter) + "6" + ".jpeg")

func _on_type_go_left_pressed():
	
	if type_counter > 0:
		type_counter-= 1
	else:
		type_counter = 7
	
	$hat_type_picker/hat_type_1.texture = load(hat_path+str(type_counter) + "6" + ".jpeg")


func _on_color_go_right_pressed():
	
	if color_counter < 7:
		color_counter+=1
	else:
		color_counter = 0
	
	$hat_color_picker/hat_color_1.texture =load(color_path+str(color_counter)+ ".png")
	


func _on_color_go_left_pressed():
	
	if color_counter > 0:
		color_counter-=1
	else:
		color_counter = 7
	
	$hat_color_picker/hat_color_1.texture =load(color_path+str(color_counter)+ ".png")


func _on_store_1_pressed():
	if current_hat_id != null:
		$hat_storage/storage_space_1_sprite.texture = load(hat_path+str(current_hat_id/10)+str(current_hat_id%10)+".jpeg")
		GameState.hat_inventory[0] = current_hat_id
	


func _on_store_2_pressed():
	if current_hat_id != null:
		$hat_storage/storage_space_2_sprite.texture = load(hat_path+str(current_hat_id/10)+str(current_hat_id%10)+".jpeg")
		GameState.hat_inventory[1] = current_hat_id
		


func _on_store_3_pressed():
	if current_hat_id != null:
		$hat_storage/storage_space_3_sprite.texture = load(hat_path+str(current_hat_id/10)+str(current_hat_id%10)+".jpeg")
		GameState.hat_inventory[2] = current_hat_id
