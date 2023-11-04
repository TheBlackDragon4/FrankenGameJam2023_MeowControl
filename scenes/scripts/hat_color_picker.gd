extends Node2D

var color_counter = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_color_go_right_pressed():
	
	if color_counter == 1:
		$hat_color_1.hide()
		color_counter += 1
	elif color_counter == 2:
		$hat_color_2.hide()
		color_counter += 1
	elif color_counter == 3:
		$hat_color_3.hide()
		color_counter += 1
	elif color_counter == 4:
		$hat_color_4.hide()
		color_counter += 1
	elif color_counter == 5:
		$hat_color_5.hide()
		color_counter += 1
	elif color_counter == 6:
		$hat_color_6.hide()
		color_counter += 1
	elif color_counter == 7:
		$hat_color_7.hide()
		color_counter += 1
	elif color_counter == 8:
		$hat_color_8.hide()
		color_counter = 1
	
	if color_counter == 1:
		$hat_color_1.show()
	elif color_counter == 2:
		$hat_color_2.show()
	elif color_counter == 3:
		$hat_color_3.show()
	elif color_counter == 4:
		$hat_color_4.show()
	elif color_counter == 5:
		$hat_color_5.show()
	elif color_counter == 6:
		$hat_color_6.show()
	elif color_counter == 7:
		$hat_color_7.show()
	elif color_counter == 8:
		$hat_color_8.show()

func _on_color_go_left_pressed():
	if color_counter == 1:
		$hat_color_1.hide()
		color_counter = 8
	elif color_counter == 2:
		$hat_color_2.hide()
		color_counter -= 1
	elif color_counter == 3:
		$hat_color_3.hide()
		color_counter -= 1
	elif color_counter == 4:
		$hat_color_4.hide()
		color_counter -= 1
	elif color_counter == 5:
		$hat_color_5.hide()
		color_counter -= 1
	elif color_counter == 6:
		$hat_color_6.hide()
		color_counter -= 1
	elif color_counter == 7:
		$hat_color_7.hide()
		color_counter -= 1
	elif color_counter == 8:
		$hat_color_8.hide()
		color_counter -= 1
	
	if color_counter == 1:
		$hat_color_1.show()
	elif color_counter == 2:
		$hat_color_2.show()
	elif color_counter == 3:
		$hat_color_3.show()
	elif color_counter == 4:
		$hat_color_4.show()
	elif color_counter == 5:
		$hat_color_5.show()
	elif color_counter == 6:
		$hat_color_6.show()
	elif color_counter == 7:
		$hat_color_7.show()
	elif color_counter == 8:
		$hat_color_8.show()
