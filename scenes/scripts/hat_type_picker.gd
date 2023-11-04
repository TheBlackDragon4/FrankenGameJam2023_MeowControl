extends Node2D

var type_counter = 1 #counter for the currently selected type



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	



func _on_type_go_right_pressed():
	
	##button displays the next type to the right
	
	#hide currently displayed type
	if type_counter == 1: 
		$hat_type_1.hide()
		type_counter += 1
	elif type_counter == 2:
		$hat_type_2.hide()
		type_counter += 1
	elif type_counter == 3:
		$hat_type_3.hide()
		type_counter += 1
	elif type_counter == 4:
		$hat_type_4.hide()
		type_counter += 1
	elif type_counter == 5:
		$hat_type_5.hide()
		type_counter += 1
	elif type_counter == 6:
		$hat_type_6.hide()
		type_counter += 1
	elif type_counter == 7:
		$hat_type_7.hide()
		type_counter += 1
	elif type_counter == 8:
		$hat_type_8.hide()
		type_counter = 1
	
	#show next type
	if type_counter == 1:  
		$hat_type_1.show()
	elif type_counter == 2:
		$hat_type_2.show()
	elif type_counter == 3:
		$hat_type_3.show()
	elif type_counter == 4:
		$hat_type_4.show()
	elif type_counter == 5:
		$hat_type_5.show()
	elif type_counter == 6:
		$hat_type_6.show()
	elif type_counter == 7:
		$hat_type_7.show()
	elif type_counter == 8:
		$hat_type_8.show()


func _on_type_go_left_pressed():
	
	##button displays the next type to the right
	
	#hide currently displayed type
	if type_counter == 1:
		$hat_type_1.hide()
		type_counter = 8
	elif type_counter == 2:
		$hat_type_2.hide()
		type_counter -= 1
	elif type_counter == 3:
		$hat_type_3.hide()
		type_counter -= 1
	elif type_counter == 4:
		$hat_type_4.hide()
		type_counter -= 1
	elif type_counter == 5:
		$hat_type_5.hide()
		type_counter -= 1
	elif type_counter == 6:
		$hat_type_6.hide()
		type_counter -= 1
	elif type_counter == 7:
		$hat_type_7.hide()
		type_counter -= 1
	elif type_counter == 8:
		$hat_type_8.hide()
		type_counter -= 1
	
	#show next type
	if type_counter == 1:
		$hat_type_1.show()
	elif type_counter == 2:
		$hat_type_2.show()
	elif type_counter == 3:
		$hat_type_3.show()
	elif type_counter == 4:
		$hat_type_4.show()
	elif type_counter == 5:
		$hat_type_5.show()
	elif type_counter == 6:
		$hat_type_6.show()
	elif type_counter == 7:
		$hat_type_7.show()
	elif type_counter == 8:
		$hat_type_8.show()
