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


func _on_button_above_0_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_ASIA/information_asia.tscn")


func _on_button_above_1_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_MARKETPLACE/Information_marketplace.tscn")


func _on_button_above_2_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_MARKETPLACE1/Information_marketplace1.tscn")


func _on_button_above_3_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_MUSEUM/Information_MUSEUM.tscn")


func _on_button_above_4_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_MUSEUM2/Information_MUSEUM2.tscn")


func _on_button_below_0_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_PARIS/Information_PARIS.tscn")


func _on_button_below_1_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_PARK/Information_PARK.tscn")


func _on_button_below_2_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_SITTINGCHAIR/Information_SITTINGCHAIR.tscn")


func _on_button_below_3_pressed():
	get_tree().change_scene_to_file("res://scenes/control_room/Information_CHURCH/Information_CHURCH.tscn")


func _on_next_button_pressed():
	get_tree().change_scene_to_file("res://scenes/shop/shopfront.tscn")


func _on_go_to_sleep_pressed():
		get_tree().change_scene_to_file("res://scenes/night/night.tscn")
